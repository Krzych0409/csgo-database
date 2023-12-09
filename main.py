import psycopg2
import openpyxl

# port=5432


def enter_new_case(name: str, quantity: int, year: int, case_id: int, type_of_skin: str):
    """Add case to 'cases' table in database."""

    # SQL query
    cursor.execute(f"""INSERT INTO cases VALUES ('{name}', {quantity}, {year}, {case_id}, '{type_of_skin}')""")
    print(f'Added case: {name}')

def enter_new_collection(name: str, quantity: int, year: int, souvenir: bool, type_of_skin: str):
    """Add collection to 'collections' table in database."""

    # Get last 'id' in collections table
    cursor.execute(f"""SELECT id FROM collections ORDER BY id DESC LIMIT 1""")
    # First element in result tuple
    number_of_collections = cursor.fetchone()[0]

    # SQL query
    cursor.execute(f"""INSERT INTO collections VALUES ({number_of_collections + 1}, '{name}', {quantity}, {year}, {souvenir}, '{type_of_skin}')""")
    print(f'Added collection: {name}')

def enter_skins_from_case(name: str, list_of_skins: list):
    """Add all skins from one case"""

    # Add new column = case's name
    cursor.execute(f"""ALTER TABLE skins_from_case ADD "{name}" VARCHAR(50)""")

    # Get max row in table
    cursor.execute(f"""SELECT COUNT(*) FROM skins_from_case""")
    count_skins = cursor.fetchone()[0]

    # If there are too few rows, add missing rows
    if len(list_of_skins) > count_skins:
        for i in range(1, len(list_of_skins) - count_skins + 1):
            cursor.execute(f"""INSERT INTO skins_from_case (order_number) VALUES ({count_skins + i})""")

    # Add all skins from the case
    for i, skin in enumerate(list_of_skins):
        cursor.execute(f"""UPDATE skins_from_case SET "{name}"='{skin}' WHERE order_number={i+1}""")
        print(f'Added skin: {skin}')
    print()

def enter_skins_from_collection(name: str, list_of_skins: list):
    """Add all skins from one collection"""

    # Add new column = collection's name
    cursor.execute(f"""ALTER TABLE skins_from_collection ADD "{name}" VARCHAR(50)""")

    # Get max row in table
    cursor.execute(f"""SELECT COUNT(*) FROM skins_from_collection""")
    count_skins = cursor.fetchone()[0]

    # If there are too few rows, add missing rows
    if len(list_of_skins) > count_skins:
        for i in range(1, len(list_of_skins) - count_skins + 1):
            cursor.execute(f"""INSERT INTO skins_from_collection (order_number) VALUES ({count_skins + i})""")

    # Add all skins from the collection
    for i, skin in enumerate(list_of_skins):
        cursor.execute(f"""UPDATE skins_from_collection SET "{name}"='{skin}' WHERE order_number={i+1}""")
        print(f'Added skin: {skin}')
    print()

def enter_skins_from_case_to_skins_table(last_columns=0):
    """
    Add skins to the 'skins' table in database. When last_columns=0 the function add skins from all cases.
    Sources are tables: 'skins_from_case' and 'cases'
    """

    # List of names column = case names
    cursor.execute("""SELECT * FROM skins_from_case""")

    # Skip the first column: "order_number"
    colnames = [desc[0] for desc in cursor.description][1:]

    # Only stay last columns
    if last_columns != 0:
        colnames = colnames[int(f'-{last_columns}'):]

    # Add skins to "skins" table
    for col_name in colnames:
        # Enter skin names from the table "skins_from_case"
        cursor.execute(f"""INSERT INTO skins (name) SELECT "{col_name}" FROM skins_from_case WHERE "{col_name}" <> 'None'""")
        # Enter case's name
        cursor.execute(f"""UPDATE skins SET source='{col_name}' WHERE source IS NULL""")
        # Enter kind of weapon: 'StatTrak'
        cursor.execute(f"""UPDATE skins SET type='StatTrak' WHERE type IS NULL""")
        # Enter year
        cursor.execute(f"""UPDATE skins SET year=(SELECT year FROM cases WHERE name='{col_name}') WHERE year IS NULL""")
        print(f'Added skins from: {col_name}')
    print()

def enter_skins_from_collection_to_skins_table(last_columns=0):
    """
    Add skins to the 'skins' table in database. When last_columns=0 the function add skins from all collections.
    Sources are tables: 'skins_from_collection' and 'collections'
    """

    # Lista nazw kolumn = nazw kolekcji
    cursor.execute("""SELECT * FROM skins_from_collection""")

    # Skip the first column: "order_number"
    colnames = [desc[0] for desc in cursor.description][1:]

    # Only stay last columns
    if last_columns != 0:
        colnames = colnames[int(f'-{last_columns}'):]

    # Add skins to "skins" table
    for col_name in colnames:
        # Enter skin names from the table "skins_from_collection"
        cursor.execute(f"""INSERT INTO skins (name) SELECT "{col_name}" FROM skins_from_collection WHERE "{col_name}" <> 'None'""")
        # Enter collection's name
        cursor.execute(f"""UPDATE skins SET source='{col_name}' WHERE source IS NULL""")
        # Enter kind of weapon: 'Souvenir' or 'only standard'
        cursor.execute(f"""UPDATE skins SET type='Souvenir' WHERE (type IS NULL) AND (source='{col_name}') AND (EXISTS (SELECT souvenir FROM collections WHERE name='{col_name}' AND souvenir=TRUE))""")
        cursor.execute(f"""UPDATE skins SET type='only standard' WHERE (type IS NULL) AND (source='{col_name}') AND (EXISTS (SELECT souvenir FROM collections WHERE name='{col_name}' AND souvenir=FALSE))""")
        # Enter year
        cursor.execute(f"""UPDATE skins SET year=(SELECT year FROM collections WHERE name='{col_name}') WHERE year IS NULL""")
        print(f'Added skins from: {col_name}')
    print()

def show_result_execute(query: str):
    """Print query result"""

    # SQL query
    cursor.execute(query)

    # Get query results
    result = cursor.fetchall()

    # Print results
    for row in result:
        print(row)



if __name__ == '__main__':
    # Database connection parameters
    db_params = {
        'host': 'localhost',
        'database': 'CounterStrike',
        'user': 'postgres',
        'password': '1234'
    }

    # Connection to the database
    connection = psycopg2.connect(**db_params)

    # Create cursor to execute SQL
    cursor = connection.cursor()

    # enter_new_case('Nowa: skrzynia', 14, 2023, 380, 'stat')
    # enter_new_collection('Nowa: kolekcja', 15, 2024, True, 'map')
    # enter_skins_from_case('Nowa: skrzynia', ['pierwszy skin', 'drugi skin', 'trzeci skin', 's', 's', 's', 's', 's', 's', '10', 's', 'w', 'w', 'w', 'w', 'w', 'w', 'w', 'w', '20'])
    # enter_skins_from_collection('Nowa: kolekcja', ['czwarty skin', '5 skin', 'szósty skin', 's', 's', 's', 's', 's', 's', 's', 's', 'w', 'w', 'w', 'w', 'w', 'w', 'w', 'w', 'dd', 'gg'])

    # You can see the values before sending the changes to the database.
    show_result_execute('SELECT * FROM skins_from_collection ORDER BY order_number')

    # The following command makes changes to the database
    # cursor.execute("COMMIT")

    # Close cursor and connection
    cursor.close()
    connection.close()
