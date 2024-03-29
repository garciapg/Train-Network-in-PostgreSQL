PGDMP     $    "                 |            train_network    15.5    15.5 +    &           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            '           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            (           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            )           1262    24576    train_network    DATABASE     �   CREATE DATABASE train_network WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Spanish_Colombia.1252';
    DROP DATABASE train_network;
                postgres    false            �            1259    24596 	   passenger    TABLE     �   CREATE TABLE public.passenger (
    id integer NOT NULL,
    name character varying,
    residential_address character varying,
    birth_date date
);
    DROP TABLE public.passenger;
       public         heap    postgres    false            �            1259    24595    passenger_id_seq    SEQUENCE     �   CREATE SEQUENCE public.passenger_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.passenger_id_seq;
       public          postgres    false    219            *           0    0    passenger_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.passenger_id_seq OWNED BY public.passenger.id;
          public          postgres    false    218            �            1259    24605    route    TABLE     �   CREATE TABLE public.route (
    id integer NOT NULL,
    name character varying,
    id_station integer,
    id_train integer
);
    DROP TABLE public.route;
       public         heap    postgres    false            �            1259    24604    route_id_seq    SEQUENCE     �   CREATE SEQUENCE public.route_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.route_id_seq;
       public          postgres    false    221            +           0    0    route_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.route_id_seq OWNED BY public.route.id;
          public          postgres    false    220            �            1259    24578    station    TABLE     |   CREATE TABLE public.station (
    id integer NOT NULL,
    name character varying,
    station_address character varying
);
    DROP TABLE public.station;
       public         heap    postgres    false            �            1259    24577    station_id_seq    SEQUENCE     �   CREATE SEQUENCE public.station_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.station_id_seq;
       public          postgres    false    215            ,           0    0    station_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.station_id_seq OWNED BY public.station.id;
          public          postgres    false    214            �            1259    24587    train    TABLE     j   CREATE TABLE public.train (
    id integer NOT NULL,
    model character varying,
    capacity integer
);
    DROP TABLE public.train;
       public         heap    postgres    false            �            1259    24586    train_id_seq    SEQUENCE     �   CREATE SEQUENCE public.train_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.train_id_seq;
       public          postgres    false    217            -           0    0    train_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.train_id_seq OWNED BY public.train.id;
          public          postgres    false    216            �            1259    24614    trip    TABLE     �   CREATE TABLE public.trip (
    id integer NOT NULL,
    start_time date,
    end_time date,
    id_route integer,
    id_passenger integer
);
    DROP TABLE public.trip;
       public         heap    postgres    false            �            1259    24613    trip_id_seq    SEQUENCE     �   CREATE SEQUENCE public.trip_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 "   DROP SEQUENCE public.trip_id_seq;
       public          postgres    false    223            .           0    0    trip_id_seq    SEQUENCE OWNED BY     ;   ALTER SEQUENCE public.trip_id_seq OWNED BY public.trip.id;
          public          postgres    false    222            {           2604    24599    passenger id    DEFAULT     l   ALTER TABLE ONLY public.passenger ALTER COLUMN id SET DEFAULT nextval('public.passenger_id_seq'::regclass);
 ;   ALTER TABLE public.passenger ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    218    219    219            |           2604    24608    route id    DEFAULT     d   ALTER TABLE ONLY public.route ALTER COLUMN id SET DEFAULT nextval('public.route_id_seq'::regclass);
 7   ALTER TABLE public.route ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    221    220    221            y           2604    24581 
   station id    DEFAULT     h   ALTER TABLE ONLY public.station ALTER COLUMN id SET DEFAULT nextval('public.station_id_seq'::regclass);
 9   ALTER TABLE public.station ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    215    214    215            z           2604    24590    train id    DEFAULT     d   ALTER TABLE ONLY public.train ALTER COLUMN id SET DEFAULT nextval('public.train_id_seq'::regclass);
 7   ALTER TABLE public.train ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    216    217    217            }           2604    24617    trip id    DEFAULT     b   ALTER TABLE ONLY public.trip ALTER COLUMN id SET DEFAULT nextval('public.trip_id_seq'::regclass);
 6   ALTER TABLE public.trip ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    223    222    223                      0    24596 	   passenger 
   TABLE DATA           N   COPY public.passenger (id, name, residential_address, birth_date) FROM stdin;
    public          postgres    false    219   b-       !          0    24605    route 
   TABLE DATA           ?   COPY public.route (id, name, id_station, id_train) FROM stdin;
    public          postgres    false    221   8                 0    24578    station 
   TABLE DATA           <   COPY public.station (id, name, station_address) FROM stdin;
    public          postgres    false    215   �:                 0    24587    train 
   TABLE DATA           4   COPY public.train (id, model, capacity) FROM stdin;
    public          postgres    false    217   eC       #          0    24614    trip 
   TABLE DATA           P   COPY public.trip (id, start_time, end_time, id_route, id_passenger) FROM stdin;
    public          postgres    false    223   G       /           0    0    passenger_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.passenger_id_seq', 210, true);
          public          postgres    false    218            0           0    0    route_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.route_id_seq', 100, true);
          public          postgres    false    220            1           0    0    station_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.station_id_seq', 107, true);
          public          postgres    false    214            2           0    0    train_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.train_id_seq', 1205, true);
          public          postgres    false    216            3           0    0    trip_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.trip_id_seq', 101, true);
          public          postgres    false    222            �           2606    24603    passenger passenger_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.passenger
    ADD CONSTRAINT passenger_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.passenger DROP CONSTRAINT passenger_pkey;
       public            postgres    false    219            �           2606    24612    route route_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.route
    ADD CONSTRAINT route_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.route DROP CONSTRAINT route_pkey;
       public            postgres    false    221                       2606    24585    station station_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.station
    ADD CONSTRAINT station_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.station DROP CONSTRAINT station_pkey;
       public            postgres    false    215            �           2606    24594    train train_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.train
    ADD CONSTRAINT train_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.train DROP CONSTRAINT train_pkey;
       public            postgres    false    217            �           2606    24619    trip trip_pkey 
   CONSTRAINT     L   ALTER TABLE ONLY public.trip
    ADD CONSTRAINT trip_pkey PRIMARY KEY (id);
 8   ALTER TABLE ONLY public.trip DROP CONSTRAINT trip_pkey;
       public            postgres    false    223            �           2606    24620    route route_station_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.route
    ADD CONSTRAINT route_station_fkey FOREIGN KEY (id_station) REFERENCES public.station(id) ON UPDATE CASCADE ON DELETE CASCADE NOT VALID;
 B   ALTER TABLE ONLY public.route DROP CONSTRAINT route_station_fkey;
       public          postgres    false    3199    221    215            �           2606    24625    route route_train_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.route
    ADD CONSTRAINT route_train_fkey FOREIGN KEY (id_train) REFERENCES public.train(id) ON UPDATE CASCADE ON DELETE CASCADE;
 @   ALTER TABLE ONLY public.route DROP CONSTRAINT route_train_fkey;
       public          postgres    false    3201    221    217            �           2606    24635    trip trip_passenger_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.trip
    ADD CONSTRAINT trip_passenger_fkey FOREIGN KEY (id_passenger) REFERENCES public.passenger(id) ON UPDATE CASCADE ON DELETE CASCADE;
 B   ALTER TABLE ONLY public.trip DROP CONSTRAINT trip_passenger_fkey;
       public          postgres    false    219    223    3203            �           2606    24630    trip trip_route_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.trip
    ADD CONSTRAINT trip_route_fkey FOREIGN KEY (id_route) REFERENCES public.route(id) ON UPDATE CASCADE ON DELETE CASCADE;
 >   ALTER TABLE ONLY public.trip DROP CONSTRAINT trip_route_fkey;
       public          postgres    false    3205    223    221               �
  x�UXMs۸<ÿ�=��8�ۉ��e{�ڪw�EDD	�@RZ�׿P���Ve+�����!طV;�5��1�apfϲ��/�.�/�&3�-�|��gBHv��h���k�l�T��_��â��E�R�p�ެ���/��������i��h�WTMWD�+���/�����=�ֲ���M���:�/L��
�W����Wf`YS�%��a��s�-���t���q�l��5��vC����%��!2�Ɋ���l�3�	Y��z�j�U:��)U��f��G����;�geU�G�۰�o�z�S�J���4��n�M��R��z��<ǵ~�s��6!΄�؋vac��ѿ˄����0e*3I��,qV��Ejn4�YS�ƃ���Y͇e
����G�����M�B{\�ٌ���p\
�M{��f\�h�\��Wf�3oN�U�ʼGM�,;Y^�ZNp>��
"� �R�&�B���R��
�_�W2�Rʒ��Ў?���|�P�U��n)���m�2 +�h��߶z���eE	pnBl�����z!%��(e{�t�c�T=18��$Wj��p�a��痠�7>�$���NGÿ�~9XD)3I�,R�3va�����55a��:����e�b�������L������?ho��E��e.�+ڵ��WG=�a�,�7�[Ű5�|k�H)P�7��9�<��v�rSg���vC�#���F��<���.`Ѭ�ta؁z��x��j (�C�?��}� �+(���.��Ģ�������xZE�� Z^�'�I�����6��oP��q�,~=�T+�MN%�/_�ҍjz�����D���{�������e8���bh����t6`��?�-�&j�NO�I}��E��j�G��k�;��IS�jB��Qw)�B0����!���}83�d��d7�AW�e��=�����F~�ҩ"T�"g�PH�z�m4*�x��� i���FE�.�[������ޑ��Y����L��:���q�y��� >�%J��m���E�8��(Jz "_͡�@|�2��h��s�t\C��j~�b��lx2�!��ʺ�8{�k�<�b�բf���0���p3��Io�|J���MѰ�I�� F�cF�!�t�����:*c�vG��4J��#�e����I ������h)��
����~��i*���d�#�'>P�󺀞}��E�B$U@

���2;j�i#�u&d�#ENX���`��qy����Iv!��0U��(�.t|�1D�
9���Y4�~�P��6b֚!j$�Utz��N�M�zHU8Nu5�F���OFG��@����(�j�1G�#3���o����0o�uk3������~���D,��� �2�3���:����Jwhι��Ft\�� ��i�r0�5�9q\e�`P	��2��q݅��R�@)���ԛ)�������N�4Rٴ����L#�,�}�p��Bǈ��Sg�MS�_��FBj�0�b��V��-��C�p�Hx�w���q�%sE
X���1B��j�,Ae�s_'��[�GI>�*�}0�O�yF�v�l�bB�fw�ւ?xbܰF��1�\ ��|M�XB�1G�Zq�Y�+X�s9.�INPe���te�� ߟz}�Աp����W�9�zF@`�W	=]�G�${ٷpbp h������r��I��p���R�x�1�+�ɒ?��ڞL�&M	��`����HHH�z&�`;��a6fI+�+��?0Q��@���[r߇)�����}7t���뽁m�� �3�1�\���8�*Pv3�����1=� N�ܫE��ZQ��9��D>�걸�J���U�nј{�d���Y����M�L� �:c���)��,̡U�əz*u;�`��T���7ɔ]靟�R ���>J��ƕ���U��,�N�v%�Q<��9Ii��j]@�a�J�1x��1�6�k�fI]�k�-)S�;�.(��� ��1�b��f2�2�'"�<5L$g5��T5���2���p��	���0U���кBB\!��wL'�0�}�Z�;��P��]�hװn����d�)�lz�������Q5�&!F;Jo�]�,b�G�jz
h��A�h�����!1�~��gM�}運�]SS�5,o�'`�w0(�ƪi�9�C������TJ���K�Ġ��M��se�'O#���6��#��&Ĳ������J�I���쥣J�h���w�	C �s��-1ikO�L2Gj�[�� qگ-�(ScS"oR2��fOk�*�`��*������I��� 0��@�vْۀ��$D�70�(L-O������h\����޿�?��H*�i�3\P��m�cFy���}"�Pgx��E6 "�E�g9�N�7��Hn"�pA�f�-���>�\��]�m'n�<n<8��,.N.������W'��0�J.�.���K�,ａ|6���#)��'�v�
�����I��,��kJ���%�+rE˖�-.��M��P�1s/Ҏ
��Y�L�G�+���("��U��|^&?B0W�S��n�a���!Z �;m�&�TZ�@����n$���'�ZOH9֤�/(Ɔƚ!�F�}��L��s1�mS\�����'��t�Uŉ3?�c����������C}6      !   �  x�ET�n[A|�������h'i��R�v"E��Gg�j�b�af8&�i[�f�*�GiA]��p�Vl�r�H5�u��SjG�\��:��T��Tg��K�2��Vݬ��Պ�ob;��䌪��ժ���&"�jM~����Z�ɖ�lp���甯��jΗ�]�R�y��F����F��+�b�Ş�)z㥣����\���59��f�L�?PwN�S됇Cn���N,����(��mi]�u�nm���*���`��-�u�k3j�XUFc%/�1��]L[����+���}@�)�(z�.���-�z���=��7�%dΗv�F��k�fO�7ZD|���rx�	uj�y��L>���AK�Ԫ��5�(-���N�Fd�����u'�p��f�� B0�`�	��}_:�\�e[*�T2"�\��-u��F 񸏮���-������s*9���
�S�v���2��.y13����h)����3�^.�!�����n�Ԋ\O�Kn�Ɯ��R1!��C����E7�K�0��Y�],�NO;�����b�^�p �+p�j�
��v8{����S��ϋ����&' K]�� ֫�@n/��5׌	��
VZ\%�,y�ܵDnS��S=�����f	p�;\�v��5	#�1�ӌ��>����)�מ��X�<��+��5�a��Z��܈ ��5��U����         �  x��WIs�>��U���{���#9ϕT.	�x� HJ#��|.�I吓K&����n�Nٮ��^���_�oUee�y���*b���˪8���-�b�5�O�^ڊ[#*�[�x	{�?��EΟ�ѭ꥗�[�������ģ�wt���k�{+�eo��tc���A������jێEI�W������I��I�jo�^��Ҕ�`)�C�����j/��������?��5ÑEi�Ak���Ih���� ��Fj--K�,���r6��d�!ۖ���\�o��X����z~c�	�D�]��ҝ�+~m�VM��Ug>�E��+a{���MZ+Jl��hkd���%9�>�����	�$+�z� 	��?�}ͯ��:�c2e/y��C��� 5��?��2��ꑱ;�گ,�(��,.�YQ�7+T�9�B*�������b�P���ݛsרp��u>�v�X�sǊo'��>ۊA���&[ ��~�J���0`7�l����o/��X`>��� /��W!�(?&�ؖҧ̐�F�6��C��
ݏy�Z��_4�2A����������/,Ҥ B�NUr^�,g�7f��}?D��]D&.�)� ���Xb��z��זP3�=J]J���t5�4���q����U��(�z�]���c+�x�I�|��-
��C�
e�M�{0U��Y��,���IZ�g�)�m���� Rw=���efEʟ��̙4511
a�t�E��+I�LKB�Bm��I��͠�I�8���P�X�}�%	ߋ"���wv�XV�����m���� yh�u#+~ݚ��+�챕J����Ģ�?��AY��'���NT
�nj��FOʔ{���~Gp��ڑ��1��z��SI��m��Ar,��z��j��(s�FA�eE{�⢜]�V��Bw0�++�F�JY�����`.�I��r�0*/j���=�%F�6Y���8h�P�V�l�'	k����%���YE�81+v�v�-������Y� �ߨ���T�7N�sxq�}�Y����v�w�~��H�^t�v�p��;A�.��Y�nF����"nD&�4]�� Q�B�3(�+������ ��|q��5��S`�H���E�����{tW�_��`<h3!���� ��c���(Y�W֜]%���C~|P1� ��d�<�Pf��S��UI�ٗ3���p�Ź��E�S��s�)�<\�������u���0�v6a�(�vo�I�^Bm䗄3�M3�L�$e�Ɩ�B_֏h��4��1j~��$c�u�_Z]���XL�T��Kr���ڄ�+|d��l�'�}��獹���n�Iu,,��j�#.���6����]�f���X�z�Q�;��E���h�	�.���m+ٍ1t˲��1s@xV��t�VJ�@�;1f%賂��xiՋ� ���s�;|�<Y�q7p����d��Q;�3~sviLy�_|ܘ�*�b���jt�⋓# i��v��N���b�2M�#�G�A��6~~ai�ëu3����`�:����֦%}.w����U��`[#箟��s��p&�vba��+�~���H������J�{Y�MsR����r,`�mc̡�,��@#�Y�D�����r~®ɪ�H�4�v�E?J(Kٖ���-:�B�t�^k���	����
��Z�ů��Ϡ�E��f9M�0{l\O�j� �z1��`���d$R���Q%G�1{��߫/�:�ј�� ��=�T��NQ�4��SmT�U75�i��S�;9�qNv�5�Oz�k����h��ٽ$VZ�a��N$ʊh����G��1��0�.�7ssn�b���#��ӈ�k{)�.0�+Oٓ)*�-Ƌ��L���RΡ�(�D��?��Uk���m�5M��H�kE���B���`wV���q���6���� گ�����g�k�xT�kz XO���8�z�z�Sf�B�6���~��4t��cU��<G���̉1`�_u��{���R5_���$��|���[?����\�`>	nN)�P�?sR�	�N���_�(��Kчi|��Sr,��p�jP�e%:�� �Z���������H�f�����<�S+!�&�f;�\����3��Pr.)5�-I��6]m�D�p�ɹ�S�n����-_�-h�������g
i         �  x�M��n�8��?O��B<����b�2�`�7��&Bdѕ�����9���P�q8C�Z�.��17Ƶ-ԙRm�Uͧ�/C�<�ֺ��@����|)e
���_�K���:5K8),�L�4V����X8`���K�����:y��9\��M})�	���ՏM�hSݾN���k#^2U|̏�L��<�z����wPt��}Z�z�㶹��<e(:��e�V�m��$�ߨu�R����N-�/	�B���L�)���1�4qZrXǱ��L����2��d�u�K���P�i4
9�A慦�h��+S_�����.�д�+�Zh�����:�ʻ��5��u}��&�}Nm�3	?��C�m?��2�eC������e.~�U"��Ų�o04Y�Q�*+ew|8Nr��4K�j�v���و�� q6I=�:q*��=����3,�Nɇm�m�r�}���it���2&���2���:�;9) ��Z��>o��O8��r=>J��.�f����#�I��m��Fs?�V���?�����y�K�^�ֽ�����ew��� G�7�^����-:i4G�w�c�<=�a�&�γI�e��}��%<�>H�S=
<�>���[�=�>I�����SZ,������ih��:i�<a�~�R=�%ϓ����X�����f�#m!�6�Yn�q�y!b��������-Ve���������c@ 2j�;�d�H��4F�����e��]����[)�"�_�"MBX-	�	�һ����,�'�OG^�������	Kً�%�:y���돼d�L7����� ��ddSŞHM����L��;BS�xGj��t�a*H"ղ�{_&�H}\�H���|	�|}�˟����Rⳓ{��j۳��:;;���W      #   m  x�u�A$!E�r����]��瘏5)��U�F���I�t�H��)��������̳���i\�d�e�Ǡ�������Ӻ��z� ƯEV����m�~�l٬���<^s�m�Ʈ���}��:���M&�[����¯M|��E�|5�x��f��/;�g�/�/�؋���{��6��t<���_��]���Sxmk��+<���Br�I��m�|��VvD�C_Ə� 0җDo���S�\zY��yH�/�oݏc ���O�k�u�'�[��"?�X%�]tw��8)W�?�7!M��l_��I�?�;�#��$��Q7����O�{��R}h�>��Z��
��w��]�����ģ�ѫ� �	y)Ӹ���1῍���W?��eӸ���jD�J���gz���C׹}ƪ��OC|����>�]���=����7c|P޼����3^3����C���3����t�%y�#Y4����|��H�\>���,�c|�w�	�ŏICl4/�ty�A=�yU��:ǯ4�����b�����-=�Y	_�=�e�J�<���{Ӫ�at�=�U}��b:�w/�|�H��o�=6N�/ԗ����������\�>��4�ɮ�_�&+���Z��`R���ε�dZ��6c9	Yڽ�v�6>KÛv�l;^���Q����Yٝ��>K�<���̫��s<�s'z)�}V�1�D/���ݳaO��K����h�ݱs�g})��4�l�W�>���d����b��G~�e�wU��{������}����������{��n/Շ�Pv�'��̇���izWsw{�j����՛�ϳ:�ǭLv9��]��t�w�k��3�x�p�e~��6� �c{�#����͞�     