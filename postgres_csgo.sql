PGDMP                  
    {            CounterStrike    16.1    16.1     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    16398    CounterStrike    DATABASE     �   CREATE DATABASE "CounterStrike" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Polish_Poland.1250';
    DROP DATABASE "CounterStrike";
                postgres    false            �            1259    16562    cases    TABLE     �   CREATE TABLE public.cases (
    name character varying(50) NOT NULL,
    quantity smallint NOT NULL,
    year smallint NOT NULL,
    case_id smallint NOT NULL,
    type character varying(30) NOT NULL
);
    DROP TABLE public.cases;
       public         heap    postgres    false            �            1259    16578    collections    TABLE     �   CREATE TABLE public.collections (
    id integer NOT NULL,
    name character varying(50) NOT NULL,
    quantity smallint NOT NULL,
    year smallint NOT NULL,
    souvenir boolean DEFAULT false NOT NULL,
    type character varying(30)
);
    DROP TABLE public.collections;
       public         heap    postgres    false            �            1259    16577    kolekcje_id_seq    SEQUENCE     �   CREATE SEQUENCE public.kolekcje_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.kolekcje_id_seq;
       public          postgres    false    217            �           0    0    kolekcje_id_seq    SEQUENCE OWNED BY     F   ALTER SEQUENCE public.kolekcje_id_seq OWNED BY public.collections.id;
          public          postgres    false    216            �            1259    16979    skins_from_case    TABLE     {  CREATE TABLE public.skins_from_case (
    order_number smallint NOT NULL,
    "CS:GO Weapon Case" character varying(50),
    "eSports 2013 Case" character varying(50),
    "Operation Bravo Case" character varying(50),
    "CS:GO Weapon Case 2" character varying(50),
    "eSports 2013 Winter Case" character varying(50),
    "Winter Offensive Weapon Case" character varying(50),
    "CS:GO Weapon Case 3" character varying(50),
    "Operation Phoenix Weapon Case" character varying(50),
    "Huntsman Weapon Case" character varying(50),
    "Operation Breakout Weapon Case" character varying(50),
    "eSports 2014 Summer Case" character varying(50),
    "Operation Vanguard Weapon Case" character varying(50),
    "Chroma Case" character varying(50),
    "Chroma 2 Case" character varying(50),
    "Falchion Case" character varying(50),
    "Shadow Case" character varying(50),
    "Revolver Case" character varying(50),
    "Operation Wildfire Case" character varying(50),
    "Chroma 3 Case" character varying(50),
    "Gamma Case" character varying(50),
    "Gamma 2 Case" character varying(50),
    "Glove Case" character varying(50),
    "Spectrum Case" character varying(50),
    "Operation Hydra Case" character varying(50),
    "Spectrum 2 Case" character varying(50),
    "Clutch Case" character varying(50),
    "Horizon Case" character varying(50),
    "Danger Zone Case" character varying(50),
    "Prisma Case" character varying(50),
    "CS20 Case" character varying(50),
    "Shattered Web Case" character varying(50),
    "Prisma 2 Case" character varying(50),
    "Fracture Case" character varying(50),
    "Operation Broken Fang Case" character varying(50),
    "Snakebite Case" character varying(50),
    "Operation Riptide Case" character varying(50),
    "Dreams & Nightmares Case" character varying(50),
    "Recoil Case" character varying(50),
    "Revolution Case" character varying(50)
);
 #   DROP TABLE public.skins_from_case;
       public         heap    postgres    false            �            1259    16591    skins_from_collection    TABLE     �  CREATE TABLE public.skins_from_collection (
    order_number smallint NOT NULL,
    "The Alpha Collection" character varying(50),
    "The Assault Collection" character varying(50),
    "The Aztec Collection" character varying(50),
    "The Dust Collection" character varying(50),
    "The Dust 2 Collection" character varying(50),
    "The Inferno Collection" character varying(50),
    "The Italy Collection" character varying(50),
    "The Lake collection" character varying(50),
    "The Militia Collection" character varying(50),
    "The Mirage collection" character varying(50),
    "The Nuke Collection" character varying(50),
    "The Office Collection" character varying(50),
    "The Safehouse Collection" character varying(50),
    "The Train Collection" character varying(50),
    "The Vertigo Collection" character varying(50),
    "The Baggage Collection" character varying(50),
    "The Bank Collection" character varying(50),
    "The Cache Collection" character varying(50),
    "The Cobblestone Collection" character varying(50),
    "The Overpass Collection" character varying(50),
    "The Chop Shop Collection" character varying(50),
    "The Gods and Monsters" character varying(50),
    "The Rising Sun Collection" character varying(50),
    "The 2018 Inferno Collection" character varying(50),
    "The 2018 Nuke collection" character varying(50),
    "The Blacksite Collection" character varying(50),
    "The Canals Collection" character varying(50),
    "The Norse Collection" character varying(50),
    "The St. Marc Collection" character varying(50),
    "The Ancient Collection" character varying(50),
    "The Control Collection" character varying(50),
    "The Havoc Collection" character varying(50),
    "The 2021 Dust 2 Collection" character varying(50),
    "The 2021 Mirage collection" character varying(50),
    "The 2021 Train Collection" character varying(50),
    "The 2021 Vertigo Collection" character varying(50),
    "The Anubis Collection" character varying(50)
);
 )   DROP TABLE public.skins_from_collection;
       public         heap    postgres    false            "           2604    16581    collections id    DEFAULT     m   ALTER TABLE ONLY public.collections ALTER COLUMN id SET DEFAULT nextval('public.kolekcje_id_seq'::regclass);
 =   ALTER TABLE public.collections ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    217    216    217            �          0    16562    cases 
   TABLE DATA           D   COPY public.cases (name, quantity, year, case_id, type) FROM stdin;
    public          postgres    false    215   S,       �          0    16578    collections 
   TABLE DATA           O   COPY public.collections (id, name, quantity, year, souvenir, type) FROM stdin;
    public          postgres    false    217   Z.       �          0    16979    skins_from_case 
   TABLE DATA           p  COPY public.skins_from_case (order_number, "CS:GO Weapon Case", "eSports 2013 Case", "Operation Bravo Case", "CS:GO Weapon Case 2", "eSports 2013 Winter Case", "Winter Offensive Weapon Case", "CS:GO Weapon Case 3", "Operation Phoenix Weapon Case", "Huntsman Weapon Case", "Operation Breakout Weapon Case", "eSports 2014 Summer Case", "Operation Vanguard Weapon Case", "Chroma Case", "Chroma 2 Case", "Falchion Case", "Shadow Case", "Revolver Case", "Operation Wildfire Case", "Chroma 3 Case", "Gamma Case", "Gamma 2 Case", "Glove Case", "Spectrum Case", "Operation Hydra Case", "Spectrum 2 Case", "Clutch Case", "Horizon Case", "Danger Zone Case", "Prisma Case", "CS20 Case", "Shattered Web Case", "Prisma 2 Case", "Fracture Case", "Operation Broken Fang Case", "Snakebite Case", "Operation Riptide Case", "Dreams & Nightmares Case", "Recoil Case", "Revolution Case") FROM stdin;
    public          postgres    false    219   00       �          0    16591    skins_from_collection 
   TABLE DATA             COPY public.skins_from_collection (order_number, "The Alpha Collection", "The Assault Collection", "The Aztec Collection", "The Dust Collection", "The Dust 2 Collection", "The Inferno Collection", "The Italy Collection", "The Lake collection", "The Militia Collection", "The Mirage collection", "The Nuke Collection", "The Office Collection", "The Safehouse Collection", "The Train Collection", "The Vertigo Collection", "The Baggage Collection", "The Bank Collection", "The Cache Collection", "The Cobblestone Collection", "The Overpass Collection", "The Chop Shop Collection", "The Gods and Monsters", "The Rising Sun Collection", "The 2018 Inferno Collection", "The 2018 Nuke collection", "The Blacksite Collection", "The Canals Collection", "The Norse Collection", "The St. Marc Collection", "The Ancient Collection", "The Control Collection", "The Havoc Collection", "The 2021 Dust 2 Collection", "The 2021 Mirage collection", "The 2021 Train Collection", "The 2021 Vertigo Collection", "The Anubis Collection") FROM stdin;
    public          postgres    false    218   C       �           0    0    kolekcje_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.kolekcje_id_seq', 5, true);
          public          postgres    false    216            )           2606    16583    collections kolekcje_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY public.collections
    ADD CONSTRAINT kolekcje_pkey PRIMARY KEY (id);
 C   ALTER TABLE ONLY public.collections DROP CONSTRAINT kolekcje_pkey;
       public            postgres    false    217            +           2606    16987 5   skins_from_collection skiny_kolekcje_order_number_key 
   CONSTRAINT     x   ALTER TABLE ONLY public.skins_from_collection
    ADD CONSTRAINT skiny_kolekcje_order_number_key UNIQUE (order_number);
 _   ALTER TABLE ONLY public.skins_from_collection DROP CONSTRAINT skiny_kolekcje_order_number_key;
       public            postgres    false    218            -           2606    16983 /   skins_from_case skiny_skrzynie_order_number_key 
   CONSTRAINT     r   ALTER TABLE ONLY public.skins_from_case
    ADD CONSTRAINT skiny_skrzynie_order_number_key UNIQUE (order_number);
 Y   ALTER TABLE ONLY public.skins_from_case DROP CONSTRAINT skiny_skrzynie_order_number_key;
       public            postgres    false    219            %           2606    17000    cases skrzynie_case_id_key 
   CONSTRAINT     X   ALTER TABLE ONLY public.cases
    ADD CONSTRAINT skrzynie_case_id_key UNIQUE (case_id);
 D   ALTER TABLE ONLY public.cases DROP CONSTRAINT skrzynie_case_id_key;
       public            postgres    false    215            '           2606    16569    cases skrzynie_name_key 
   CONSTRAINT     R   ALTER TABLE ONLY public.cases
    ADD CONSTRAINT skrzynie_name_key UNIQUE (name);
 A   ALTER TABLE ONLY public.cases DROP CONSTRAINT skrzynie_name_key;
       public            postgres    false    215            �   �  x�u�͎�0���)XuY��C�e�jF���n<�V��lC;}��B鵇nX����s|�|z<�W�z���Ug9A9�;f��~�q6�~F��9J�=7�	/�ٰQ�TNg� ��89��R�r<s�vīP��ErA�y9=�n\Y1��ʔㄗ��RJ����"[�<[S����\����B���d*$�B�`�8���m��uP�"�R�5)��h�W�^f�P��o�
v�5Z2PD��p3�a�9��n�����ҲF�X���!��Gݍ�9��o��*��&��;O���T�L�\ͯ@��Rb�tz�1PA�=��$d���h���bN�*�#
�z���-$��=i#~�M�H�����o�7��A�#L��'#lXF�R�E�}8��+����̧�}��J`~	�{�$�bG�j73�[E}�*=z������pQ!��-�g�;��0��ƃ�M?�_�k�$3�B#B�`Aj-���4^������C\� ��c�$����q      �   �  x�}��n�0�kx
��X�Kǒm��d�]�����5m1ٞ~�)B��b~;��?y��+~)p�J�)1L
ͽp�"/�LA�����%7]�4��/~��P�5����Θe��-	�Nej5�ՇȨr`�����wѢF��D2f��Y3�s�Bݳ��u
�O�U�tc��Zُ�}�e���<���-d���SZ	��fb<�SeX>�+��_p���7n�,M��~�w����]	��p�T)ׂ��핪��	�"�B^����wȸs��7y��`-�6Ti�� ��/��ȃ])�υf�?.�^�*��W͉�����#��I3������/0���K[S5m�zx��yhjg&�+� %݉Դ�Qaz3�ထmI
�$w��}w��$�ads��oM�Q��ځ��ڸ����8t�ҁ�07�Y������?����4��      �      x��Z�n�Hs����w�\h0����\J�e{ǲ��{v h�m�W$��$e��� H�� y�<Ln��EN�?�]�]�Twu��S���a4�v��=yն-&��_�i�K^�rtٱ"�r�ۖ5�~Z�l�܉r�F����8�_J�'k��j4>N�����b�k�������������Ê��\�팕�{��|��J1Q���:y�_�kv<�\�v��J�9����i�oE��AȂ��(s�x�2�ºŇ�/�Zߴ�L�d�-���D�R%3������s�u�U��U��&�	7��A��뺕�d�Ö�ޚѮ���cz}���U[���l�C-w�4�ʍ,��V��E��(�MV���;^+Q�޼�����J�ѱ���>nN-Nw
^��|x9�kÊ_��oU����5��_̊�.y��ѽ<0|�,�?xZ�֢(����_WL���v��$KV���v��Y��J���K���Ե�,n���JƳB�deP�*���/����;�^8���"���U�fm+e�������d���(��>�7p�;��N6-^��r9��7,Mݰ�MnX��ʊ���K?i��	�w������G��|O�Vҡ_n͇�d��W�7��UGP��6�¶o�Z�ε�8�3���ʸ���B���N��W�	^�k�-k���{�)Y���{J���n�/.�Ea���
��Lʪ|x� "oΤ��Ax<<?'OR��pprcS����B�˶���،�^npRwKY�r;Z}[dq�*�H�E���F$���,p�ϊb����x�G��o&T�x�5���;P!�ϟ��sr�z\��՞���u������ڳ�Q_2�O�1�}*�)r=C]�H�1��X��C��*�=m9/�KѨ�n��N�s��Jl^�X����O�>�k������3�P�}_��?���bٷ;���5����#���;"����|L��[�A.�R���Al ����`8P+�~xG'��*�D;�a�m�
���@��X�/>H���ȸa�{��u��p�:�Zͭ��B��5Ş�B���&UpD��K
c$�B6-�\�bK�vi�g�,E��ryL�U�x	�m_;ޘ+ͭ.�^r^Þ�=��׮�'�QX:WZi!	�a�����-�#x��$�7��Uw�Y���Y�����3���[����" ��`�Vɗvg�⦯+ي��L���yhj^�-��& ���S����M�n��0ޏ�����!��������=�2�n��er-s��=���Ň�Wц���~�RB�X��'��8�i�h!�.}<�;�<��L���oaۼ�/\��|�ɢ%�6�$q��ߏ�=���@2d��0R�)�,p8��'�6h�t
�'s���cO��
���L�/��\I� �	�/U�ԛ�(��Ik0\��("�{P�x�d֊oxq����R5 ���~�g^�(V�׭c�,��ҫ��h�II���d.t~�F����1���l��W)�^�BQJ3F���A~Q�b�}mY$�Z����򒉲��4|_)����t:)� )ܕ�(z��#:�4�T6:'�Vfx���(%��t�q�Y�_ �Tm�9S�lHY6]E)Ǳ���&�=���kҝ��RV0dh�U&}�N3҈Ts�k����X@O�Z��ws��Mm��I&��
��y(�p��r ̲W���sT�r�BS-�*�C�����%�GAIEۦ5�<����[�|�vU�;�d�:5NϾ���(�T���3x�$%�l��h�H�p�����Rn���M�)�JRL����5tn�;e�}�D
>��ݩ���V�=d� �YL78��K�<`�8^�C���ф�PO,� �A���{�7]���aĺ>k�"��/#���--a�J�g��ͥ,wr��G��n�
�Lk��7V����}r�wȔ24�`ͳ�T*��a�8KŶ�rT9e�FJ*.<MO��2��?��d;|Rˌ}Q�ׁ�������o���2�n�k�Q!o1��	r��ؔ̒낚"N%!I��("�~CzƎ+�M�}�I�����Ԡ2�!���%��'��6M�`5����%7CH��!�>�4Q��\ȼ�V~�;��3��>��S���%/:R�!��։l�s��`�X�4~a�pX	z<������-�I���e�
P��y��p��X<�FWH_���F�ĺS�i4,Igګ��q;���v�5������6;-D���qҀ)���4E�����0G���Y��ᳬZ�l��r��*Oʌ���2��	�hnEL
{%kh�`�t�����B�Ϳwa��Φ�(�!�<k4����
~�Q�À&E����(z�_F�'W����$FL�b�`��� ŭU8OA�l=�@���%Q��m�	S� �����mC�����&<+:�|��8j���Z�b�;Q��"���
�T��\b\�;�?�_'ٟ��h�b��H&
��@�ų��.���H�7�2��N��o�xȨG��B��[4�@�B� 6���+]C��j���ܜ궃E��SEz ��%�Mݐ�9�+�(��f-��{�%,���=���^����%VO�	�@�>����q���?9�f-�ݣ�ܽ;��5,��a,��{���C�q9bѩ}?�΂�3Yn�����+����i�g�v��ڜH�p����>q?�=�|D�
MY�P�=R+�j];��4�#����Ѷ�i�\�|���*z=1��V��aE�h�H����NQru	y������G6^?�s�tH�?QL�~C��cg=&1�0�L�������M�n�B�n��Q�b/E@p��ǟ}^�EQTV�����x?�4�v�mKډ 0�?um,�µ�6��\�C�=� S�;ʖ8O��O�b+��s����UpHe,@���鳨��n��xH�bX*�����Rv�ɤ��P�>��p.�GdMP�G]Z1��ZĈv�����N�,�To!lw�큓�K�@�8�!�!�:z�&���6�9pY)��|^�>Iq�"�AKQs�s�~gb��b��i��/�C�		����>
Ҧ֎���?4�Z�������=��K���d\e�f�2j麉Ϣa^��{�����c�cF*�2��N�	���g����~�Q/��;�k�x�'���98F�G3@�RP0�'[G��%]g.������ۿ$�`}������D�n`o���~���v>���|�s�����il�3�Ϩ6��Z��0S�8��v�6v����BdB�??S�(�&hU��z��-ul�����U��'w�{�$%m����u��f�U=S����2ӡЎW��M#YU�U�.З�)���}�S +��5:\�����"�n�ׂSK�W�tӝ�̸�/�ڟ���"�~aګW�a���:���_��Ǯ��^�F��1�T�r�By���<���n�kX릧.�"����A((��t띪�tq��3�.��Ӡ%^�^�� ���.���'�$a��;���JH�;H|[�n �-K_�?͗@�� ���iA~jR�W��d��	i��;��˧I�6�Ѱ`=VlE����e�'����_Ұ]������M%�B�����A:��`�@i�SN5�XM��e�<�+��)A�&���8��}v�)B�����nB�%0����Iui�e�+��+�%<�'t��sC�$j�F�Ec�L"�y���B'Man��9կQuD���eC����j�A޷��#^ �	!��$U�_8�a�R���%T=�)���,#�B�#��U�%�gݐ���5t{C-� ��*���,��}_w��u�	Љ����4�o�bW�4��0Pt�lJ�]=�%qXʌzӨ0���@3q�r�e�O�{ҭ�*����?��!��I�	m�����������9E5ɵ>�N8U�A�T��_E�g�����f)��]"��r_�M���~EjX��[��*�n#�_�%=���5Ax�^54������=������j|/�:�{����O��BU#7nb
&1��DT�9��S�`Y�Ǥ�`����
�֕q���K� �  g�I֊	zk��%/���p�/��v?<�����nϺ�����W��,_�r�%N�sd�&<`����t�R�U�6��mKvR~.Y��~�Q�^��=H�G�sxy��P3�0���W���ɋ6H�o\�����ՆN�ӻ�T`��4�RQ�S��M��}QPwｈ�z��i�,1�f�G����5o��FW���Q�wpj�^���"��@���z������I8��fz�鶋v�E	R|KF�{88=?�$t� ������F�O��w���V��c_9����f��^�2�1/� SyF��R�J�ל�<�;?����b�b{n��$�Œ<NXL����`�ֳȒr����	�!�>�~U�~ɩ_�2/�W�"]���)uZ�}�P�������Hb��e�-�ښf�j�K�w��s���q/���U�Q̏��M�V9�%���2WĲ^sD���Vs��D�Rݾ�y���9Ԗ� L���|�U�A��Q�9�إ�����Fs��"~	a-{�'N�c��0���/�HV��nc����/��L�V��m;�����㨳|�H��_D&j41�?� �knIη#p#7�޴|���>�C%�G��nΓ�����QZ?aݜT�s�_;#WTV�Q3Y�յ�h�����J��Q;>J�4��s	s��m�܉q�?'ŔP]**��@�IwQu���m+!�L`:�h�B�$�g������8�:      �      x��Z�r�Jr]�_o�!G�o���%)�}���mM8�)%�L �[ ���b��_�ͬ��o��dUe=@y"l/f�A���y���,\�-��\�_�v[�b>_N����Ǐ?��6���ٝ~�x�����ϲ;[|�~�Ź��u�M�7.��.�-���pa-ڪ��<[.�g�U���v�:��y}}����iq��rmD�ո��ZԪ.�+\��^��bV+|���5FTJ��*�5,;��.�k|q����ԃǳ� �b&��{х�K�:��7��9��R�'m�Ig������t赵UJ|Y����ߜs��V>���P�R��&�-�ߑG���EV��OO�G[�^_NW��鶩i��z���L��Q��~:�Fk܇���Xr�EϱZ��F�X���z��ĦX���δѿ��+bc&�Q��d�P���*�2<#1x����;���g�<'.wZ��Gq���l�K��Ϻ~�&�lf�nǋ̍����/����U{l���¹��~��]ӇV�e�T��}x0�������G�0��S�Գ<_�gy���a)�~�<²�����!� f@��#�Q��`0��QQjS�©�O`�$ƣj��c��`%K���T׀�B���`�_2�����jEO0~�m+�M���&L���\�>�Kѣyi�7�䋔���(U�z,��;lV�����XF�ڻ$�r�e*��i[*��L��6�朧�\r#����t>M�4mu�,�^�=]���#�r�u%�[yT��z=li�����77G2���3�^"l�bz8f9��vm����O)_{�Q����^m��Lȴ��1]�Ti@���,�O�(����SL�����U�5:�E�]!�uF,������R ��M8?ͭ��zV�0`����$��!��3*2��ms�S)U�'`Yh��Z�fc;|���F[����
\k��q�5R���s�D��g���������>���'�_�o�Y�
��̳���-�">���Q����f(m6�����s9y�@�.^��1�Y�Z�`d�t�����x�M>��FU��Bًڛ{��b�#�}�:�L��XLEJ��w���S�[6�w������޽Ke
�e��%ו�k=�`�&y�J�B=6�ZҞ���K`� �3v}[����5�O2�[̤R$�&%�$?v�A9��oR��!��l�R"C2'�G��F�,��B*�ρ�����3#Z��;�J���'���q9M����Y0f��=3!�j�
,׈n۩֒J��	����b3�୚|���ֆ��X�da���R[i�({;)*f�X��䒯�!��pj�0��Y(B�Z��;��3!	amN��"VJ��T��\Ἕ�{HR+-���}K<�sڛY� 8�O�O?��c���%�E�HR�:�������/��'ֹ��oP�Y����I;E�/$�+D�➫2j�D)U �|��:g~����=E�RxI�O�@���~8q�=2�;q�"y&�!J��a�J��3���ԓ�Z��ܬ��B4�Me��4J��՞q�}@ҫ���7z��,8�g��ǝ�%.����/%Z��T;��6�Ԟ�ƁL.u�}�t���S1[�4�s��Zq���>v�t��&��հ�X/��\�r?�u&	�U�Qt$c9�O�ˡ/�e!e����`�ZmQG"��j��Yۇ�J>y?��~�X�W����D�}���AԤ�>���]O���*��w�Q�k]��/8��i1}�Di%��)�5Rnr�V�QX,��ÿC����nY���t����'��:�xٓb�I_;NDk���+��s��)r|@L.5��F�&m�9�z�ѺO:'@l<1p'�X	/:�.���z�Ņ�Z�aY�p&��	�jSȣ�T�Nَ������V��/����� Ľ&���F��8͈o
W�G��6>�$�I���������г[i�w�����jfQ�,A��Kv���i�Є�n�K��B)����s��bJ��!c#;���A2�`�T�{������H6�DZ<�y������2 FS�䄁bU�F��4�lmٴY��9�ʺhh�nu�$�їP~�Md�w�p�Ȱ�]I4��ީ�hΪr����W�,����L|̳U"�Yd�&��v��	y���:Ӕ�97���F�򣢥��j�FB�Y`�߬�*%�����x;>1�|�#b��I��*{fb�k'��@%I�r=��!��tbpM�ȵKѷp�pJ n?B�l�J�����7X��Lq��ܑ�S���'-%�N�"�T�{1��hv{�	�.�z�� Vg��W��h<S-4�a�c�`.� x9��sˣI�2Ge5j:.�����ٸi�q9����KS�D&/؞+��e���9!Y �H�}���YN..5.��]��{���,a��'��&]�EsW|����	�}]	�b�Z�<�VeZ��1�2�8[�y������U�e�Mrw.{=��;�0%ۡ��x�#�rr\↴Rw/Ì÷:�6�s�،�U�q���x6�U�]�6|��?�2��6!K��G�n�f��?
m�=�p~X@�$�I@uhZG��}'��\MsD��t?�x�3���a*�0�}~,��2�hNtv�\+.��y oYw�F|=L�3쾕�;<�<e�!+C��an����B>����\S���/�4���nKa������|�N�փ-��I�K�%�tI?EL���<J�h����)�
�o1�m�\5M�<���u�.����5 oM��c��u��n�FUQ	Sk�ե�rKՈ�8�-�r݋��ρR�H���\?��Ҭ1vi��먓�	�Ҡ8�f�S�I_Y�Hii̐HSmP�2���#��5t�J�R����t�'x^Z�N����q���؞�����3ߏ;�Ӳt�ϗF���7�3F�g�M���u���@�j�3�o��T�Q%�&d��u7�K�yt{��zls����疴hכ����z�۝����C
���8���4-��Np�V�0Fb��>s��
i&�T��KU�/�w���[��RպϢ�.��_��H�+-j��(a�5��s�BVC'�6���?�- ��O�P�l���vS*_}�n���@_��� E[��#%+�s��M'�ti軃�L���� �����۟P�e�Ԩ�X�z��1C�Y%�����p{���[o�usHN.>�
sP��\�����	�xB 3hPx:?F6��j�8����Fqv�'L�R�N��+�U��3�>
i�R#�Fl�H6
Q����Md.�Iv�P��1�ͱ��u�yv@�ax"/�+��;D�vFrܺ�0<�T<���
�R�5�i�23�Q��Bj]ʼK��%��5�~ C�l2�<!w�%�*�v�5��am&��K�&HJ7s�Qy��&����p#�d�.��Q�e���Žډ��Oo�%�+������B:�;���,��w�
�-ip�3g|W41���/�dWX�s��'� ��t��܌־V�Fw�puG�$�d�'�j� ]�П�W�Oh���$��@R��O������Yً�a@��n�tM���!UU����y�o�K�*��"�{z��}5���7� G�A�-(iZ�>�C+���z�Cr6W%���?�Jq/:���Z4�(�4�%�sV�>PӃ< ����_�q5���h�	�7�����	u�Q���H�}ƹ~�&
ݖ"F���p�a��	�=���A�v��j�ua�K�d�ʲ�B�oĹO��mؖ��O��î����翇�����GY�uj�Cn�i�����t������!7��:�Q����6��5'���/GI����(&�29���,O�7���?+?P�I�����|�f����
~G6��u��29"OG���è���;I��M� �Q��:�@.��~t��j��d,I�A��&At�͆Ҝ��J!T�&���/?ʝW.��L��!)�`({��Ur��kz���@_��4��]�Z�>�I��*�_P����k������~�{||�r����2��M���Qv#�N�j� 
   �<�L�R��     