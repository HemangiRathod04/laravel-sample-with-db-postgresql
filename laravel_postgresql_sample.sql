PGDMP                       |            laravel_postgresql_sample    16.3    16.3 0    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    16397    laravel_postgresql_sample    DATABASE     �   CREATE DATABASE laravel_postgresql_sample WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_India.1252';
 )   DROP DATABASE laravel_postgresql_sample;
                postgres    false            �            1259    16615 	   countries    TABLE     #  CREATE TABLE public.countries (
    id bigint NOT NULL,
    name character varying(255) NOT NULL,
    country_code character varying(255) NOT NULL,
    deleted_at timestamp(0) without time zone,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
    DROP TABLE public.countries;
       public         heap    postgres    false            �            1259    16614    countries_id_seq    SEQUENCE     y   CREATE SEQUENCE public.countries_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.countries_id_seq;
       public          postgres    false    225            �           0    0    countries_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.countries_id_seq OWNED BY public.countries.id;
          public          postgres    false    224            �            1259    16591    failed_jobs    TABLE     &  CREATE TABLE public.failed_jobs (
    id bigint NOT NULL,
    uuid character varying(255) NOT NULL,
    connection text NOT NULL,
    queue text NOT NULL,
    payload text NOT NULL,
    exception text NOT NULL,
    failed_at timestamp(0) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);
    DROP TABLE public.failed_jobs;
       public         heap    postgres    false            �            1259    16590    failed_jobs_id_seq    SEQUENCE     {   CREATE SEQUENCE public.failed_jobs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.failed_jobs_id_seq;
       public          postgres    false    221            �           0    0    failed_jobs_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.failed_jobs_id_seq OWNED BY public.failed_jobs.id;
          public          postgres    false    220            �            1259    16399 
   migrations    TABLE     �   CREATE TABLE public.migrations (
    id integer NOT NULL,
    migration character varying(255) NOT NULL,
    batch integer NOT NULL
);
    DROP TABLE public.migrations;
       public         heap    postgres    false            �            1259    16398    migrations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.migrations_id_seq;
       public          postgres    false    216            �           0    0    migrations_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.migrations_id_seq OWNED BY public.migrations.id;
          public          postgres    false    215            �            1259    16583    password_reset_tokens    TABLE     �   CREATE TABLE public.password_reset_tokens (
    email character varying(255) NOT NULL,
    token character varying(255) NOT NULL,
    created_at timestamp(0) without time zone
);
 )   DROP TABLE public.password_reset_tokens;
       public         heap    postgres    false            �            1259    16603    personal_access_tokens    TABLE     �  CREATE TABLE public.personal_access_tokens (
    id bigint NOT NULL,
    tokenable_type character varying(255) NOT NULL,
    tokenable_id bigint NOT NULL,
    name character varying(255) NOT NULL,
    token character varying(64) NOT NULL,
    abilities text,
    last_used_at timestamp(0) without time zone,
    expires_at timestamp(0) without time zone,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
 *   DROP TABLE public.personal_access_tokens;
       public         heap    postgres    false            �            1259    16602    personal_access_tokens_id_seq    SEQUENCE     �   CREATE SEQUENCE public.personal_access_tokens_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.personal_access_tokens_id_seq;
       public          postgres    false    223            �           0    0    personal_access_tokens_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.personal_access_tokens_id_seq OWNED BY public.personal_access_tokens.id;
          public          postgres    false    222            �            1259    16571    users    TABLE     P  CREATE TABLE public.users (
    id bigint NOT NULL,
    first_name character varying(20) NOT NULL,
    last_name character varying(20) NOT NULL,
    email character varying(255) NOT NULL,
    email_verified_at timestamp(0) without time zone,
    password character varying(255) NOT NULL,
    phone character varying(20),
    gender character varying(255) NOT NULL,
    date_of_birth date,
    status boolean DEFAULT true NOT NULL,
    address_1 text,
    address_2 text,
    deleted_at timestamp(0) without time zone,
    remember_token character varying(100),
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    country_id bigint,
    CONSTRAINT users_gender_check CHECK (((gender)::text = ANY ((ARRAY['Male'::character varying, 'Female'::character varying, 'Other'::character varying])::text[])))
);
    DROP TABLE public.users;
       public         heap    postgres    false            �            1259    16570    users_id_seq    SEQUENCE     u   CREATE SEQUENCE public.users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.users_id_seq;
       public          postgres    false    218            �           0    0    users_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;
          public          postgres    false    217            8           2604    16618    countries id    DEFAULT     l   ALTER TABLE ONLY public.countries ALTER COLUMN id SET DEFAULT nextval('public.countries_id_seq'::regclass);
 ;   ALTER TABLE public.countries ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    225    224    225            5           2604    16594    failed_jobs id    DEFAULT     p   ALTER TABLE ONLY public.failed_jobs ALTER COLUMN id SET DEFAULT nextval('public.failed_jobs_id_seq'::regclass);
 =   ALTER TABLE public.failed_jobs ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    221    220    221            2           2604    16402    migrations id    DEFAULT     n   ALTER TABLE ONLY public.migrations ALTER COLUMN id SET DEFAULT nextval('public.migrations_id_seq'::regclass);
 <   ALTER TABLE public.migrations ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    216    215    216            7           2604    16606    personal_access_tokens id    DEFAULT     �   ALTER TABLE ONLY public.personal_access_tokens ALTER COLUMN id SET DEFAULT nextval('public.personal_access_tokens_id_seq'::regclass);
 H   ALTER TABLE public.personal_access_tokens ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    222    223    223            3           2604    16574    users id    DEFAULT     d   ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);
 7   ALTER TABLE public.users ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    218    217    218            �          0    16615 	   countries 
   TABLE DATA           _   COPY public.countries (id, name, country_code, deleted_at, created_at, updated_at) FROM stdin;
    public          postgres    false    225   L<       �          0    16591    failed_jobs 
   TABLE DATA           a   COPY public.failed_jobs (id, uuid, connection, queue, payload, exception, failed_at) FROM stdin;
    public          postgres    false    221   �D       �          0    16399 
   migrations 
   TABLE DATA           :   COPY public.migrations (id, migration, batch) FROM stdin;
    public          postgres    false    216   �D       �          0    16583    password_reset_tokens 
   TABLE DATA           I   COPY public.password_reset_tokens (email, token, created_at) FROM stdin;
    public          postgres    false    219   UE       �          0    16603    personal_access_tokens 
   TABLE DATA           �   COPY public.personal_access_tokens (id, tokenable_type, tokenable_id, name, token, abilities, last_used_at, expires_at, created_at, updated_at) FROM stdin;
    public          postgres    false    223   rE       �          0    16571    users 
   TABLE DATA           �   COPY public.users (id, first_name, last_name, email, email_verified_at, password, phone, gender, date_of_birth, status, address_1, address_2, deleted_at, remember_token, created_at, updated_at, country_id) FROM stdin;
    public          postgres    false    218   �E       �           0    0    countries_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.countries_id_seq', 196, true);
          public          postgres    false    224            �           0    0    failed_jobs_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.failed_jobs_id_seq', 1, false);
          public          postgres    false    220            �           0    0    migrations_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.migrations_id_seq', 23, true);
          public          postgres    false    215            �           0    0    personal_access_tokens_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.personal_access_tokens_id_seq', 1, false);
          public          postgres    false    222            �           0    0    users_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.users_id_seq', 31, true);
          public          postgres    false    217            L           2606    16624 '   countries countries_country_code_unique 
   CONSTRAINT     j   ALTER TABLE ONLY public.countries
    ADD CONSTRAINT countries_country_code_unique UNIQUE (country_code);
 Q   ALTER TABLE ONLY public.countries DROP CONSTRAINT countries_country_code_unique;
       public            postgres    false    225            N           2606    16622    countries countries_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.countries
    ADD CONSTRAINT countries_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.countries DROP CONSTRAINT countries_pkey;
       public            postgres    false    225            C           2606    16599    failed_jobs failed_jobs_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.failed_jobs
    ADD CONSTRAINT failed_jobs_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.failed_jobs DROP CONSTRAINT failed_jobs_pkey;
       public            postgres    false    221            E           2606    16601 #   failed_jobs failed_jobs_uuid_unique 
   CONSTRAINT     ^   ALTER TABLE ONLY public.failed_jobs
    ADD CONSTRAINT failed_jobs_uuid_unique UNIQUE (uuid);
 M   ALTER TABLE ONLY public.failed_jobs DROP CONSTRAINT failed_jobs_uuid_unique;
       public            postgres    false    221            ;           2606    16404    migrations migrations_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.migrations
    ADD CONSTRAINT migrations_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.migrations DROP CONSTRAINT migrations_pkey;
       public            postgres    false    216            A           2606    16589 0   password_reset_tokens password_reset_tokens_pkey 
   CONSTRAINT     q   ALTER TABLE ONLY public.password_reset_tokens
    ADD CONSTRAINT password_reset_tokens_pkey PRIMARY KEY (email);
 Z   ALTER TABLE ONLY public.password_reset_tokens DROP CONSTRAINT password_reset_tokens_pkey;
       public            postgres    false    219            G           2606    16610 2   personal_access_tokens personal_access_tokens_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.personal_access_tokens
    ADD CONSTRAINT personal_access_tokens_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.personal_access_tokens DROP CONSTRAINT personal_access_tokens_pkey;
       public            postgres    false    223            I           2606    16613 :   personal_access_tokens personal_access_tokens_token_unique 
   CONSTRAINT     v   ALTER TABLE ONLY public.personal_access_tokens
    ADD CONSTRAINT personal_access_tokens_token_unique UNIQUE (token);
 d   ALTER TABLE ONLY public.personal_access_tokens DROP CONSTRAINT personal_access_tokens_token_unique;
       public            postgres    false    223            =           2606    16582    users users_email_unique 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_unique UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_unique;
       public            postgres    false    218            ?           2606    16580    users users_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
       public            postgres    false    218            J           1259    16611 8   personal_access_tokens_tokenable_type_tokenable_id_index    INDEX     �   CREATE INDEX personal_access_tokens_tokenable_type_tokenable_id_index ON public.personal_access_tokens USING btree (tokenable_type, tokenable_id);
 L   DROP INDEX public.personal_access_tokens_tokenable_type_tokenable_id_index;
       public            postgres    false    223    223            O           2606    16625    users users_country_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_country_id_foreign FOREIGN KEY (country_id) REFERENCES public.countries(id) ON DELETE CASCADE;
 H   ALTER TABLE ONLY public.users DROP CONSTRAINT users_country_id_foreign;
       public          postgres    false    225    4686    218            �   *  x�eX�r��|^�
}�>��
��͘p	��q�M`b�!#�����G8qS�*U��5���u�qS?G���T����ߧ��J�������ڑA�Z�pv��v�l��,͡R���`�ܮJqb�q�'w�8���#�'];��@�2��ҩ���ٸ<�ܔ�U��2?}�C�%CuT'U�0&��a�L.�G�;��C�R]eHQ7��R��EC�C�L�
�w�{>��$�	����Uː}�ͽ+�)Q+��!�j��f������H������S=�)m��My��ک��dH�i!bW���pE(⭲��Rz[�r/�d�
+C���۪<�U3��2R;l�K���T�XN;��#sJO��q���eD��n�*nD��2B�����g�*����ef/#r�ݑ�Q��P��]`&�[�%�Aވi�dd3{�����?Y�z���ڢ�
��d�N�f�ǭ���#>J�t�������h��	qʈ��7��3J9�G��: �r��<�R���<���u~R�E�s�{2�iv�*����;�������1�����)Kc�ې�*� 1 UJK�)�}��t2ܒ��r.eB<u�2ɂXe������ۑɯJ������Z��+��ę����P&Ei��P�w{���{n$&º�Lʣ�g�:�ۗ����6��zZ�q¦<8��<�aK�h�\��a`]�Sb;��T[w�0�v���/2f8���ό)�bؓ��>Lهȣu'N��þL��>)��)�k�o���z�w�?CS��)�¬.�;T���<*�b{��;�h�r��|W�3�"�T��Pf{]�=�U���,��h�WD��.��B��e��ȌW\�c�dF�5�����Z2+�ҙ̨£��J�]dF�E����;�3�6�>Ã�kC�l]�Qj��'suU/�Z%̩H�H�:�`��o}�gv�i�S9�2�芿��u�Q���~�-�,��h�`+쫕�ir��2�ސK�S���_��r��J���Ba�.���!��/�5x�'�Y��G�[�,(���,̮�Dr��hx�,x�7�@1$K���*_��ڂ�<V��Z�ni�eQ����*w�ŝ����tP�^9YN�ԅ)SoF��k��kry�]�R�Yn�y�Y0��`�;�V�+�*˂Y�w�t�[�
��rɜA��L�e�AB�-��foe�7È���{=,ل�m��W|��������4b��a�U�ӊ�7 _���i�cK,���	I��W?NUZ�w*�c(�|��[��:?�WwW��CɊy�[��d�f���H_q� �V�-x֪%�;�z��tp
�\V\�d+�/+z�F��\mPcucK��i��s�7��M]d���|�.�/�4�Z�ܞ%�K:0d��k�h�0���ղ���!,9柬�W���:��Yy_-�`"�)�Ț{�l���5S�4�3n*d}�Th��֬�9#�[k�U��57�WU�@����\O�T�����T����_ ���߱_��'ȭo�2���,�G�J�HO.y��۩E������f����@��}^���@���d�|�@��Pp�&�s��be�Ğt}�G��%f� �bU�&8�&f� �b߰�6����b��<Yw΄�/���PB�y��6XhL�9��h��>8csI���g=/�3._(5o�߱1��Z�6�35��#XA��x�9�n��|��3� �v3ƕ��1���vr��
g���_��;������r16������t�q�B.~3��6�dč9_�T���-I�A-K!����}D$��ԁ)�ֽ�𠃞K���_N�JbV�!�\���;�o��T�uu&v��/�6��*7�).?�o_}���������-���zUY%	/d(�͡�����y��в�B�����i�.��d�D�����>4GU��$S�@��ws\�?�p�@	n\U���bps���<m���ѐ�ʡ�+������.��Ȕ�r$�[����&�-�A�5�D)ʖY�$��A�|�;ݕ�ۃ��"|6��ڽiy�z�翟>}�]��      �      x������ � �      �   �   x�e�]� ��0�E��]L�PX�jS�o/�����>�d��v�$i�)�׃�l3cN��Gޑ�nKRE�lJ�="'������Tr1;�ˬ̳F���~���/���-���dGX�8���*�*RU�c�����<�8��>ԴiL��}`�%P�A��^�A?`�      �      x������ � �      �      x������ � �      �   N  x��YɎ��]����.^�	�LϬ.��\��&��`���4��aC�T�Jݨ�Nyg�F7��F����������G��ID�x�?c�/���Ŀ���ò][�	B��4Ӗ�vc	��A�l�9�X乕x���<��b�xMW��d�>�r�0�2�e�r	�D~�d����#�M��r31�O��	I��7�E,�E��%^ԫ�\����+UE���ã*!�f����pQv�	�x$X�c���L�5��E���^m>�0��+�iv��ܴv7�Y�)�c��u]/�"ֹI�� �Pq%��H��4N�6�:ԇ@,n��V�[4�~�çߑ(�W�j�"?<�qI�:�M���v�kq6;�^��|��V����n���{�]�<���<��z�/����rl�4�^&�~�ae]��e����,���	<.c��9,�W��$�4�,��� �i���|�+��H���Ue�*��Jz	q�4���
;S�j3{����F}�꺱���jr����㬹V�����k1i����O��6G�9V ���cQ��0Ϋ��m'�j�]cy?;�(��Ћ�`���_��U,W���(�p	sM�׉��p{����I�X������^csO��i7��1Y��������/�����}q�M�}jv6덽�9f�x�P��>گ��!K8[v�����ז���\ �p�"�$s5�"yg>��$�rB�����`д��K��#q�u���f)8?m��#%Nk�mН��#��4�x��jjH�OՌ���M0\K*j*B��m�o�5q-��(�W�W�s|�c&���~$W%� �^���G5�dp�Bm�v��"� &?����UZQ%tM��?'���W��nz�Ys��r���Q�Z�*��(�����b\�_+�e1���wɎ���c���b�0�,�}� ���W�x�(���܈�,!�k�ď�=�eן��3������v(m��2[�NK�j�sb����4q��ljS�{!���A+���V�Zȱ�#���SV_Ū(��~Bg�QUį#|�=<�+%$qu�u�N�o.A�������|������~-�֞vj�m��ҕZ��[e��J��i6#��&P�Y���)�kU���E#��Ə���V��%�~���Z�������|�x���b�4[��"E-�?�H��$�����9f?��3�1��U�!���=�Q[����o��S�[b�������p���6�i����$��G(v^w)�o�.�q7#'��؉�h7Ƚ��1s�UusH$�+)�j�1�C�ͣݷ%��H����\]/��_��Cc4���)�h}E�xt��Я��^��t�eq�I�ln�.��MQʆ&�GR1�
�����⏃-uo�.�x���|-&=�
^�b�;�p���֙� �c����;�(H����_�֨�&�Zh�E]�w;�N�z+hqG�O�w��1�6͙z+�$����C�?�W�~�?Q>y�z�\����dD ޱ��m����C�=:�%$���:`NY��?#�κ�����/��Z"sٵ�t���S"�����<��~M�+,����� W�%��`��H����K�i79kg�f7W:r|����<�^�G����(5�0 N �ED���ɉ�_�H�=5=y6�t��&j]��9f/�t���iG��)��f��w��r��x�eUG�����|G�'�۸��]��߼�<��O_I(g�G���QC,������fq�~�9��;�L��7Iە�n��u�<����u콵���)ZY]}����ٽ���իF�PD�5��D�ʒU�n��K��L20~LO�$��*�a�e���
|�.t�H�K�xL���A��4�I�]��K ���p��,���,%�F,`�JP�f�0��S+���{+�k��j'8��@]���!��~�r�'otMo>!������ i2���!�E����@����G��+\�fŹI y�;�߬9Z6�D�G[��1���bF䉰Yfl�E��g��⹃��&�������@��aV�av����@B�r}�p2������wKj|JW7\:<�-)��P�u����x5�\�S?�0��D�v֪�uS��vn�Ч����+;����h:m?�����!�Cn��%�o�Rs��I8����W��NA�L��=u����7|]��GGs�R܎�IF����fǁ��4�šJ�x	"e2�]H;��ڕ�^���b=U!�j��n��ԛu�޶K����2�"�4-����~�9}�	�@�#�u���D�����T���IJ�Cդ��䮓�}`2/�~]��X�P$5벣�>�S2��:v����9K,���u���r�C���!2���a��7���r�֤W�~�'�4�Ͱ�0����J"��c�Z	b�ԁ����V�'�d�^ن�I/iߜ��v���t�x�m�Y���1�q��پ�P"�^��ν�5�"��+�����Jy�F��-em�)(z���Hd�S�u�_)_���L�rM
Xz��pO�����3PZ���(�/}�]g;<��!R߮'�"6�R�����/��J�:O�mCf����i]�����ZASjn�4��>_1N�Ç���'N���C�
��gB�r��Ύy�掛.&�\�K_z�I��e��k�jŃ�$��l�E:�v"!����v?w�r��j�e���!h:��[�,nVXC��ZO$:�P�Oc.R�6��	�w�*�!չenM�$���@��?�<���F)�=d�ҭ�Lړ�p�x���4q��5�2=�Lh�.g�-Q(��*)f"5��b���"��n,�@��Y��D��/B���f���l>A��$�6D'��Z��+�F����ᚉ31��m/V¸+m���_N��T�o9�8R�;��gB3��g�*HJ��ƹ�@��xΩ	I歠c���ٷ+=�*��t�v����ُ݁�YD'H�_wW��˦�R����QV9n_X�%�Ĵ���;��n{y�K�_���)��p�*�,�����H :W�q�_1�bh�""�4n�[�0�0�3��Z�,����;�W��.4f��(��=�E��/��.3X�O�r��Xf0�k_��ͬ���$��<�n�.�\`\�ò�zg\$�{�󐁴��6\�+Kp�ַ�X�>-�6&��s��'������*�BU,A���uH����;R���^�	�/��&[]N5,����2��F��O����b��<x��@Xh���������N���<%'�(���R���7�MWqT�K��R���Z�     