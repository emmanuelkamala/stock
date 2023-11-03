PGDMP      5                
    {            stock_development    15.1    15.1 X    m           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            n           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            o           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            p           1262    16650    stock_development    DATABASE     �   CREATE DATABASE stock_development WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_Tanzania.1252';
 !   DROP DATABASE stock_development;
                beata    false            �            1259    16913    ar_internal_metadata    TABLE     �   CREATE TABLE public.ar_internal_metadata (
    key character varying NOT NULL,
    value character varying,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);
 (   DROP TABLE public.ar_internal_metadata;
       public         heap    beata    false            �            1259    16918    batches    TABLE     �   CREATE TABLE public.batches (
    id bigint NOT NULL,
    batch_no integer,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL,
    flock_type character varying
);
    DROP TABLE public.batches;
       public         heap    beata    false            �            1259    16923    batches_id_seq    SEQUENCE     w   CREATE SEQUENCE public.batches_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.batches_id_seq;
       public          beata    false    217            q           0    0    batches_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.batches_id_seq OWNED BY public.batches.id;
          public          beata    false    218            �            1259    16924    expenses    TABLE     K  CREATE TABLE public.expenses (
    id bigint NOT NULL,
    date date,
    category character varying,
    quantity integer,
    unit_price integer,
    total_amount integer,
    description text,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL,
    batch_id bigint
);
    DROP TABLE public.expenses;
       public         heap    beata    false            �            1259    16929    expenses_id_seq    SEQUENCE     x   CREATE SEQUENCE public.expenses_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.expenses_id_seq;
       public          beata    false    219            r           0    0    expenses_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.expenses_id_seq OWNED BY public.expenses.id;
          public          beata    false    220            �            1259    16672    financial_searches    TABLE     �   CREATE TABLE public.financial_searches (
    id bigint NOT NULL,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);
 &   DROP TABLE public.financial_searches;
       public         heap    beata    false            �            1259    16671    financial_searches_id_seq    SEQUENCE     �   CREATE SEQUENCE public.financial_searches_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.financial_searches_id_seq;
       public          beata    false    215            s           0    0    financial_searches_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.financial_searches_id_seq OWNED BY public.financial_searches.id;
          public          beata    false    214            �            1259    16930    fixed_expenses    TABLE     >  CREATE TABLE public.fixed_expenses (
    id bigint NOT NULL,
    date_in date,
    type_of_expense character varying,
    cost integer,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL,
    quantity integer,
    description text,
    total_cost integer
);
 "   DROP TABLE public.fixed_expenses;
       public         heap    beata    false            �            1259    16935    fixed_expenses_id_seq    SEQUENCE     ~   CREATE SEQUENCE public.fixed_expenses_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.fixed_expenses_id_seq;
       public          beata    false    221            t           0    0    fixed_expenses_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.fixed_expenses_id_seq OWNED BY public.fixed_expenses.id;
          public          beata    false    222            �            1259    16936    flocks    TABLE     �  CREATE TABLE public.flocks (
    id bigint NOT NULL,
    batch_no integer,
    date_in timestamp without time zone,
    retirement_date date,
    source character varying,
    initial_stock integer,
    died_stock integer,
    notes text,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL,
    status character varying,
    batch_id bigint,
    sold_stock integer DEFAULT 0
);
    DROP TABLE public.flocks;
       public         heap    beata    false            �            1259    16942    flocks_id_seq    SEQUENCE     v   CREATE SEQUENCE public.flocks_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.flocks_id_seq;
       public          beata    false    223            u           0    0    flocks_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.flocks_id_seq OWNED BY public.flocks.id;
          public          beata    false    224            �            1259    16943    incomes    TABLE     J  CREATE TABLE public.incomes (
    id bigint NOT NULL,
    date date,
    category character varying,
    quantity integer,
    unit_price integer,
    total_amount integer,
    description text,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL,
    batch_id bigint
);
    DROP TABLE public.incomes;
       public         heap    beata    false            �            1259    16948    incomes_id_seq    SEQUENCE     w   CREATE SEQUENCE public.incomes_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.incomes_id_seq;
       public          beata    false    225            v           0    0    incomes_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.incomes_id_seq OWNED BY public.incomes.id;
          public          beata    false    226            �            1259    16949    report_searches    TABLE     �   CREATE TABLE public.report_searches (
    id bigint NOT NULL,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);
 #   DROP TABLE public.report_searches;
       public         heap    beata    false            �            1259    16952    report_searches_id_seq    SEQUENCE        CREATE SEQUENCE public.report_searches_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.report_searches_id_seq;
       public          beata    false    227            w           0    0    report_searches_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.report_searches_id_seq OWNED BY public.report_searches.id;
          public          beata    false    228            �            1259    16953    schema_migrations    TABLE     R   CREATE TABLE public.schema_migrations (
    version character varying NOT NULL
);
 %   DROP TABLE public.schema_migrations;
       public         heap    beata    false            �            1259    16958    statuses    TABLE     �   CREATE TABLE public.statuses (
    id bigint NOT NULL,
    name character varying,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);
    DROP TABLE public.statuses;
       public         heap    beata    false            �            1259    16963    statuses_id_seq    SEQUENCE     x   CREATE SEQUENCE public.statuses_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.statuses_id_seq;
       public          beata    false    230            x           0    0    statuses_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.statuses_id_seq OWNED BY public.statuses.id;
          public          beata    false    231            �            1259    16964    types    TABLE     �   CREATE TABLE public.types (
    id bigint NOT NULL,
    name character varying,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);
    DROP TABLE public.types;
       public         heap    beata    false            �            1259    16969    types_id_seq    SEQUENCE     u   CREATE SEQUENCE public.types_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.types_id_seq;
       public          beata    false    232            y           0    0    types_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.types_id_seq OWNED BY public.types.id;
          public          beata    false    233            �            1259    16970    users    TABLE     �  CREATE TABLE public.users (
    id bigint NOT NULL,
    email character varying DEFAULT ''::character varying NOT NULL,
    encrypted_password character varying DEFAULT ''::character varying NOT NULL,
    reset_password_token character varying,
    reset_password_sent_at timestamp(6) without time zone,
    remember_created_at timestamp(6) without time zone,
    username character varying,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);
    DROP TABLE public.users;
       public         heap    beata    false            �            1259    16977    users_id_seq    SEQUENCE     u   CREATE SEQUENCE public.users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.users_id_seq;
       public          beata    false    234            z           0    0    users_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;
          public          beata    false    235            �           2604    16978 
   batches id    DEFAULT     h   ALTER TABLE ONLY public.batches ALTER COLUMN id SET DEFAULT nextval('public.batches_id_seq'::regclass);
 9   ALTER TABLE public.batches ALTER COLUMN id DROP DEFAULT;
       public          beata    false    218    217            �           2604    16979    expenses id    DEFAULT     j   ALTER TABLE ONLY public.expenses ALTER COLUMN id SET DEFAULT nextval('public.expenses_id_seq'::regclass);
 :   ALTER TABLE public.expenses ALTER COLUMN id DROP DEFAULT;
       public          beata    false    220    219            �           2604    16906    financial_searches id    DEFAULT     ~   ALTER TABLE ONLY public.financial_searches ALTER COLUMN id SET DEFAULT nextval('public.financial_searches_id_seq'::regclass);
 D   ALTER TABLE public.financial_searches ALTER COLUMN id DROP DEFAULT;
       public          beata    false    215    214    215            �           2604    16980    fixed_expenses id    DEFAULT     v   ALTER TABLE ONLY public.fixed_expenses ALTER COLUMN id SET DEFAULT nextval('public.fixed_expenses_id_seq'::regclass);
 @   ALTER TABLE public.fixed_expenses ALTER COLUMN id DROP DEFAULT;
       public          beata    false    222    221            �           2604    16981 	   flocks id    DEFAULT     f   ALTER TABLE ONLY public.flocks ALTER COLUMN id SET DEFAULT nextval('public.flocks_id_seq'::regclass);
 8   ALTER TABLE public.flocks ALTER COLUMN id DROP DEFAULT;
       public          beata    false    224    223            �           2604    16982 
   incomes id    DEFAULT     h   ALTER TABLE ONLY public.incomes ALTER COLUMN id SET DEFAULT nextval('public.incomes_id_seq'::regclass);
 9   ALTER TABLE public.incomes ALTER COLUMN id DROP DEFAULT;
       public          beata    false    226    225            �           2604    16983    report_searches id    DEFAULT     x   ALTER TABLE ONLY public.report_searches ALTER COLUMN id SET DEFAULT nextval('public.report_searches_id_seq'::regclass);
 A   ALTER TABLE public.report_searches ALTER COLUMN id DROP DEFAULT;
       public          beata    false    228    227            �           2604    16984    statuses id    DEFAULT     j   ALTER TABLE ONLY public.statuses ALTER COLUMN id SET DEFAULT nextval('public.statuses_id_seq'::regclass);
 :   ALTER TABLE public.statuses ALTER COLUMN id DROP DEFAULT;
       public          beata    false    231    230            �           2604    16985    types id    DEFAULT     d   ALTER TABLE ONLY public.types ALTER COLUMN id SET DEFAULT nextval('public.types_id_seq'::regclass);
 7   ALTER TABLE public.types ALTER COLUMN id DROP DEFAULT;
       public          beata    false    233    232            �           2604    16986    users id    DEFAULT     d   ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);
 7   ALTER TABLE public.users ALTER COLUMN id DROP DEFAULT;
       public          beata    false    235    234            W          0    16913    ar_internal_metadata 
   TABLE DATA           R   COPY public.ar_internal_metadata (key, value, created_at, updated_at) FROM stdin;
    public          beata    false    216   �d       X          0    16918    batches 
   TABLE DATA           S   COPY public.batches (id, batch_no, created_at, updated_at, flock_type) FROM stdin;
    public          beata    false    217   =e       Z          0    16924    expenses 
   TABLE DATA           �   COPY public.expenses (id, date, category, quantity, unit_price, total_amount, description, created_at, updated_at, batch_id) FROM stdin;
    public          beata    false    219   h       V          0    16672    financial_searches 
   TABLE DATA           H   COPY public.financial_searches (id, created_at, updated_at) FROM stdin;
    public          beata    false    215   {�       \          0    16930    fixed_expenses 
   TABLE DATA           �   COPY public.fixed_expenses (id, date_in, type_of_expense, cost, created_at, updated_at, quantity, description, total_cost) FROM stdin;
    public          beata    false    221   ��       ^          0    16936    flocks 
   TABLE DATA           �   COPY public.flocks (id, batch_no, date_in, retirement_date, source, initial_stock, died_stock, notes, created_at, updated_at, status, batch_id, sold_stock) FROM stdin;
    public          beata    false    223   ��       `          0    16943    incomes 
   TABLE DATA           �   COPY public.incomes (id, date, category, quantity, unit_price, total_amount, description, created_at, updated_at, batch_id) FROM stdin;
    public          beata    false    225   �       b          0    16949    report_searches 
   TABLE DATA           E   COPY public.report_searches (id, created_at, updated_at) FROM stdin;
    public          beata    false    227   %�      d          0    16953    schema_migrations 
   TABLE DATA           4   COPY public.schema_migrations (version) FROM stdin;
    public          beata    false    229   B�      e          0    16958    statuses 
   TABLE DATA           D   COPY public.statuses (id, name, created_at, updated_at) FROM stdin;
    public          beata    false    230   �      g          0    16964    types 
   TABLE DATA           A   COPY public.types (id, name, created_at, updated_at) FROM stdin;
    public          beata    false    232   h�      i          0    16970    users 
   TABLE DATA           �   COPY public.users (id, email, encrypted_password, reset_password_token, reset_password_sent_at, remember_created_at, username, created_at, updated_at) FROM stdin;
    public          beata    false    234   �      {           0    0    batches_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.batches_id_seq', 75, true);
          public          beata    false    218            |           0    0    expenses_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.expenses_id_seq', 1052, true);
          public          beata    false    220            }           0    0    financial_searches_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.financial_searches_id_seq', 1, false);
          public          beata    false    214            ~           0    0    fixed_expenses_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.fixed_expenses_id_seq', 1, true);
          public          beata    false    222                       0    0    flocks_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.flocks_id_seq', 72, true);
          public          beata    false    224            �           0    0    incomes_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.incomes_id_seq', 2268, true);
          public          beata    false    226            �           0    0    report_searches_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.report_searches_id_seq', 1, false);
          public          beata    false    228            �           0    0    statuses_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.statuses_id_seq', 3, true);
          public          beata    false    231            �           0    0    types_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.types_id_seq', 3, true);
          public          beata    false    233            �           0    0    users_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.users_id_seq', 9, true);
          public          beata    false    235            �           2606    16989 .   ar_internal_metadata ar_internal_metadata_pkey 
   CONSTRAINT     m   ALTER TABLE ONLY public.ar_internal_metadata
    ADD CONSTRAINT ar_internal_metadata_pkey PRIMARY KEY (key);
 X   ALTER TABLE ONLY public.ar_internal_metadata DROP CONSTRAINT ar_internal_metadata_pkey;
       public            beata    false    216            �           2606    16991    batches batches_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.batches
    ADD CONSTRAINT batches_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.batches DROP CONSTRAINT batches_pkey;
       public            beata    false    217            �           2606    16993    expenses expenses_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.expenses
    ADD CONSTRAINT expenses_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.expenses DROP CONSTRAINT expenses_pkey;
       public            beata    false    219            �           2606    16677 *   financial_searches financial_searches_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.financial_searches
    ADD CONSTRAINT financial_searches_pkey PRIMARY KEY (id);
 T   ALTER TABLE ONLY public.financial_searches DROP CONSTRAINT financial_searches_pkey;
       public            beata    false    215            �           2606    16995 "   fixed_expenses fixed_expenses_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.fixed_expenses
    ADD CONSTRAINT fixed_expenses_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.fixed_expenses DROP CONSTRAINT fixed_expenses_pkey;
       public            beata    false    221            �           2606    16997    flocks flocks_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.flocks
    ADD CONSTRAINT flocks_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.flocks DROP CONSTRAINT flocks_pkey;
       public            beata    false    223            �           2606    16999    incomes incomes_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.incomes
    ADD CONSTRAINT incomes_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.incomes DROP CONSTRAINT incomes_pkey;
       public            beata    false    225            �           2606    17001 $   report_searches report_searches_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.report_searches
    ADD CONSTRAINT report_searches_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.report_searches DROP CONSTRAINT report_searches_pkey;
       public            beata    false    227            �           2606    17003 (   schema_migrations schema_migrations_pkey 
   CONSTRAINT     k   ALTER TABLE ONLY public.schema_migrations
    ADD CONSTRAINT schema_migrations_pkey PRIMARY KEY (version);
 R   ALTER TABLE ONLY public.schema_migrations DROP CONSTRAINT schema_migrations_pkey;
       public            beata    false    229            �           2606    17005    statuses statuses_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.statuses
    ADD CONSTRAINT statuses_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.statuses DROP CONSTRAINT statuses_pkey;
       public            beata    false    230            �           2606    17007    types types_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.types
    ADD CONSTRAINT types_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.types DROP CONSTRAINT types_pkey;
       public            beata    false    232            �           2606    17009    users users_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
       public            beata    false    234            �           1259    17010    index_expenses_on_batch_id    INDEX     S   CREATE INDEX index_expenses_on_batch_id ON public.expenses USING btree (batch_id);
 .   DROP INDEX public.index_expenses_on_batch_id;
       public            beata    false    219            �           1259    17011    index_flocks_on_batch_id    INDEX     O   CREATE INDEX index_flocks_on_batch_id ON public.flocks USING btree (batch_id);
 ,   DROP INDEX public.index_flocks_on_batch_id;
       public            beata    false    223            �           1259    17012    index_incomes_on_batch_id    INDEX     Q   CREATE INDEX index_incomes_on_batch_id ON public.incomes USING btree (batch_id);
 -   DROP INDEX public.index_incomes_on_batch_id;
       public            beata    false    225            �           1259    17013    index_users_on_email    INDEX     N   CREATE UNIQUE INDEX index_users_on_email ON public.users USING btree (email);
 (   DROP INDEX public.index_users_on_email;
       public            beata    false    234            �           1259    17014 #   index_users_on_reset_password_token    INDEX     l   CREATE UNIQUE INDEX index_users_on_reset_password_token ON public.users USING btree (reset_password_token);
 7   DROP INDEX public.index_users_on_reset_password_token;
       public            beata    false    234            �           2606    17015    expenses fk_rails_4a49dcc6f9    FK CONSTRAINT     ~   ALTER TABLE ONLY public.expenses
    ADD CONSTRAINT fk_rails_4a49dcc6f9 FOREIGN KEY (batch_id) REFERENCES public.batches(id);
 F   ALTER TABLE ONLY public.expenses DROP CONSTRAINT fk_rails_4a49dcc6f9;
       public          beata    false    219    3244    217            �           2606    17020    incomes fk_rails_a0907e92ed    FK CONSTRAINT     }   ALTER TABLE ONLY public.incomes
    ADD CONSTRAINT fk_rails_a0907e92ed FOREIGN KEY (batch_id) REFERENCES public.batches(id);
 E   ALTER TABLE ONLY public.incomes DROP CONSTRAINT fk_rails_a0907e92ed;
       public          beata    false    225    217    3244            �           2606    17025    flocks fk_rails_bf7a1cb1f5    FK CONSTRAINT     |   ALTER TABLE ONLY public.flocks
    ADD CONSTRAINT fk_rails_bf7a1cb1f5 FOREIGN KEY (batch_id) REFERENCES public.batches(id);
 D   ALTER TABLE ONLY public.flocks DROP CONSTRAINT fk_rails_bf7a1cb1f5;
       public          beata    false    3244    217    223            W   R   x^%�I
�0 ��y�h�b��-�A�VD�~Ao�m�wo��g�|�ѯό�S@�IL�)G�y��q`���TC�Z�d�5��Sg      X   �  x^}U�nA<3_�?��~���O�N��}�ߧ�`{A�R-���ս�! � Xf3��8�ρ����Cq���,�&��d��r~~9\^M{K���af�0d�LhHL��	ّuL�f7�x0����3q�������I5%e������W�j�h�]x$��"�������0�������l�o4��ꃛ fǙ�����/ȵ�4��B�a�Pl ����h9�$l�A?M���n{���������L`�s��Џ����i�}�iA�v��Ү&$;�!Zr�C��6��w#=���ef�|��a�u�FĦ��y��r0}��pؕf�	}��F`��֐e$���l��4m�z�PYR�`)J�+UK�ΩR!������2Y�N|�:��i\�	�h&�2�2�]b���*��m�+S�?��
զ�jt��0}�z���\��L�3�[��W����~߃�K��Ԕ�砊���tDR;�-�����(o��w�ޡ��� ꢌ�&0�qW&��E�(�����{Pg�Nϻ�i�f����g�2A5L���;:�*4�U�Hs�?ߌWΡ�KXA�J�Y�ĩ.�J\�L�q`�4��u��,�^��.�5d��������p6mu����a�EP�������t�}��H42���쐸Lɲh�c�J�d��$��o���\6�æ�]2y�X�K��P���1�M��b��F]�Lpd���e�1�݋��      Z      x^��Kwc9r��ү�fV�R�|䮫���ݞ���l�af�����<zdU֯�/�@ �Te�>�������]-��w��w�����y�����t5\-������{������|6lߍ�a~�����x	4^��sƌ�����p��/7���4^���w�5�wu������~����?|�-�le��v�����i��>�|x�v�}���
�a�n���z�o��K������o�|z�w���rs�]�6C99�4��u�������������ϟO��S���w���n��n�@�9x6ϟ>�?��q�W�pB�~������a���|><N\.nv��r��U@�+�������kZ�)��ӧ��ɭ��-�7��|3Y?@X>�DI�K��v�_���B
��@��������cM�w���bw����U��tOH�I/�������e��Y�/����;>?V[̹�w���v�Y-�x�-H�V���~���������ӣR�n?)T��W�!�L4\�X�O������x̬�:��������im�-ƛ�|��֯�ӊ �Fי_}=>�<��?>}���?ø���9�ss��i�Fk8�L���������������@�{9�[8�1��O�g�����ݰ��ո+ߞX�<��[(e�
<a�r�ٷ�����yv�� ���Xx|�o�a�R�&@��
�{�q/l�m.l�G���������ˬ�����_�cØ��i�⫿�B�k� d3̷�e��+x�ޯ^�����y?�����w���b�X�&H#���@������Ūa!-�z�\1�p����O��7٨ޢ�����~�,�}��"L�	�Ԡk$|��/�;���������/��/�OMp���f	�m��D�5�z��p��g��C����_����0k�-��w��r=/o8#�@���G82�񯧙��Nϧ���F�O���dGK���w�׵�@���H��W�E�z�yd����{����8�>5��[�k��6�]`�y��z��8��Le�®g�p�Y��L��]"�7H�UX5c�@���X N7�:���g�������O>��O���_�3�ͽ�6.o6��b���E�L�m���v�}���[B��a�8�Pn�^:@oh_��ױ\�[�n6��n��9pD�p��t��������RHfX.PJ��@h$I��F�m�C��]�T�J*�鸝/�Q�A��A��U�������ۇ�#��b�?^�4�7��b��S�A�)�|W?޽��G���?������.Ta�ͷ��N"H���eg��>a�L\�|�P�<��ca�����D�b�����ˇӓ\�)�����w��o�uF��j>&VU�( EQ�C��q���>=�������Y ��+�(�+ᴭyP[�+1� �O~�5ݶ�,�w;��wse�"+1�Ŵ��Ov���[
�dy3V��s@]��:HHK��b.�")>�d��� D®v�K��z��o�!#��d7,'��#�	�zz*k����n�M�T�
��$k4\�;'��5��Ͱ[.�>�}�J���v���������p����.w�]����-��Jv����2����j3��j5��!�ɨ!=�uq�Ĉ��Y��v������J߮��c-F˸X��r�D�<KSE��6�V�b.4#� �T�#�M��i�=yPTM��� Tt�6��h-����)��l�f����Sa�=3���`��[ډe�Z`��3�gA��u�=�v�`I�S����)�����z�(\���E�0Ԭ����v:�~<>>�ߪ��]�f��
_�& v��Ό��)`@!��x����F"h�^�������2 �V8Q4Z�@`o�i�ؾp#��p���.��� ��E;O�<�����<r��w'y.�λ���c��?ԥ����D�y���7+A���	�qn±E�.�����⤻�*V��S�Z��j�v�L���Tk�u�ך7��0�.�ձZ�Z�
��
t��U���J�4��k�q͗ �{ܪ���^�U2��u�~&v���:0-�ʨ)\7�ꂆ�IwE���;&C��" b7&Ǣ� j��%�x�����A�𜯸�K � p��i����9���Ǹ0|l�}+�kW��sZ��z�iq�g�~�zo.�o��z�r$9J`
�mw9C��K�zV�@ج=v>lq����8�̭���0~S���%e���h#��vV���f��V�9��73cK�N�5,Оft���oY~�=A�2#a(�
�%�c����h���O��02�D��݀ ��|�݇���7�8nv�p=���/���g�멪��hv����x��j�9�c�}�14�jlg�ڎ��tA��m�2�М�����xk��T���K���8��P(?;N�rz�����#t��Wg�7A�	,o�o+����>��r�l"� SL�p���t��/��f�8/o VOد�0��ӧ��K�5�;�'���f���k���跸F}���b�)�!�Pm�3�d�}c�<>�*E��������햵}E��.�/�ܻ��7��P�2������+��a6�gG�UՓp�!�<������0���nO?O��e�*��V��wᅯ��u�c�!@0m3D�!�L��W2���@p��\5���F����,���뀰B�뎂+Rц~�~�u��~��Jւ��&y�O�_{����P���;Y�fV+��PkdyS� ���ߊ@��+���A�{�[��8_Y٣K�������p�5h���,��َ�Ǉ9�)HP���	a{��:���o�x��f�$+~��`�/�}"[��X�i����#
|z��·��M���n	��a_�7��q���cJ�*��{�^o���m��U��h���Fr��d�x!nv��V�)(��Gd&�%��xʒ?��i���l����%�"�/E�����ٰEe56�f� .\�u��zk#f�1�q�ڹ�j���	 �����ЉHTGe	8��
E��ׂ�X����C��5�o -_�X�<��Df�{�l>���fj��#�%N�Aa�ٛ���~M�P�9���W ���"?��.����zņ��q\$@��R�\��̌�*�bI� ��"�C�:��D�Zz��Ag+~ݚ�~�rS�J"}%]*��Z�	���7!G��KN��ǐ�4�g�L��a
bɯ�&T��9g�;u���tw|��5y����_h(/��pǨKL@���Ux�0��G�w�7�N-���6
�\��d� �߳2�==���aD��k�#6��V���Z��k����R�
ھ��Dey�	��-�6�ʊ(��>+os�����K��Й��Xt&y�Ӕ:�>�?����J�[��*y��v@��x��Rv.���+�8s\M�$��G<�&߃LI�?9�����aɿ��� �*�*�D	_��a7��Z���ɲ�qQ�ٛq�����0��۵B�"�CC�~�S���=�x~�$�A��{}D*����~x����"c���z\!mHD��)���������j"4@J�g\�h	?��e;1�n��y8�r���c ?� ��GC�H1�#.A��	����Ev.�Eb9@c0��0]��ŋ�f��3*%"��������}�M� oFu��]r]�Yv�-̜�"ǧ�}:��M�!��/��9����Y�(�0J�j��Q7e;���55x����h�1�/���V�����<DGd+|���:eV~��_���#�z�kr�·�-�{=�>�I��|$�n-�xA����-��u�}>]{��k�z%oo����"H���h�<J�;�RO����@ę</i�&lQ���W�Z��k+).�����j��rp*�6Т�jBx�9��υ�����8� �u�ѨP�%�NL��=�*��=�?|:}��>�d#�F�;k���(Z)~����ǧO�O��gĖ��8*�,)P6Kl,'�TE�T& ��������ooA�c    f�V�̼��<�}��|s�귘������Bs�#MNA+Ľ���;lN�Y�Ł��q�=�����>p�L
O�
�:��2Yz��W�(o-�t�xK�c��o]����,�|s��E��b��3	�1��D�geQD��u�pʆ�G� ���)� �F����E�29"M~�{� .�U)ų��\K��%�?��E�b}��J`���X�%��l��q�M�2�V8!F'�ʮ^�/�uIa߭�;� �x�G�$��q�D�Y��Ŋ�=-W���Az�q�ч���a$����|�x������4�6���ǋ�J^L㧹�
���L\h&!:�JBn{'X�>^�\�x=ZҨ@�)�}��&$�bI��aՠ� ]�MOX_p{ qw�Ɠ��E�`)ɤ"��[`B����7-Z�����$�*�d��P'�)��$���T2�D+��b�VE����vQ"�<I��h�da�e�e�E��F�`.b��8q	�KfȆt���MAl-DC�'���-F�B�_�?Z�$o3�5����b	���&pYw�<x��MG��PW	Қ�G�H#NË �6�E疵��z���E.��m��H�J��
��+�2_Of�8���,y�T�\�% �ٱH���@Z��o1A�,�*�^�ʵGP+S\�jĞJ�9���Da��)5/���GM�	�I&3�����d/�[���C��at�H���xTV�`�!�q�$#'ӒͮȚb����2�[!����(V
j=�4��-��)�$�l
b_�?��͘�cJ%F��9��=��=:K��``18�L.�P������}�e���&��pZ����.c �J4_T�".{ ��F �7<��Z����IL�M��t@k��\!Z[�X�˫��M]�6�+�񜫺Q�V��]^�P��a��E��c�X6Q�N��5����:���!B�Cq���P��Z���I{�m^G�\�k������0�H�
.�h�%>��8�]�h���k�-^���Z~5����%ҵM21�y�ރ�$���&+Lѐ7�N��������"�H<E�?�p5/����;`���#%0�jH���,C xQy
#�^�3�09���ѣW"��]��ut=Ŧ�9*�$ϩ�3B�tg�t�E�1�m�����K�[��m��� y�n�W���^���>���yO ��ē����n�����}�"���h�W���Z�q�pS�q<Gl�q@�OY�;�u|Z�@d7�;��T�$dg�j�T\��2Ε�%���M�7V��BvS�3�^;Yv%�p��o�ͧ����tA�0OI�����\�r�>gpj��&��%�\[����9��(��g:/�� 3wG�~�D�x�I�W0,�����t���)*�D�`��9�t����F����2Ҹ���A��]2�R f�o��`(v4A
qw?<~%�
s�ڤ�m��!�.�x�{��[�1����9���z����ȪSu+Z�:���T��w��5�>��Ҹ ���dV����.>a�� <�����{4�c!a�P�z]wK	��̣���篂�p鍲�U��^"H��2
�U���L�hO��A[r�b�/�X�M��5�d����k���qKW����hA 	�2w$�,�
��QH�WJ*G��b;�x$�,�Y���@��:XU�X���G�mA(;=������L-7~���r�\7_+=�(�A�%�33v��ւ�t=E��#�){,?/�P�=�/g�	�
�U�g�(ɽ�*�K�-W����L"��H]�i��k�����B��ܠB��ka�Li��B����4��c��r��n?ZD�tP��e�j�}��\�~��X�r3S��K������'�dЮ)M"/5Av��-M�zt��Fh�$A6Îr�)�v�E�j�ym��Zy�S�,��( ��@��f�9��]t��a
iY��+�7۬��Ց1V u�Ϋ�ҕj����&�9RgM!h�|���<'��<�,qކ>f�I�A��5���:�V��n
B����m�QsIb��<I[%Y#�@P��.�>EH,]�"?w���T �BQJ�Z��ZQD��w.5��\�`���DZ�{����9I.U�W�'���_NH�TBH[q]�Ӻ yWAٯ�v��Lu8éPn/!F�Hw��L�G�<7O��햜r��)��9��)9qX�aA�>$�d��^�vl��>�/���-I5A��*��mz�B{M@R������dq��]��&[K����C���-~�3�#�ś8FS/�Azp�S�jR���٪��.XJQ��9�$d����|x�� �g�k��X�����U���T���K+.Yh
Sa��1[l�hұrI��v��g����=֠����x@B~Q�
yHrvuV�����x�q�{���z��Ivm�Z�&ןJ���3�R�
O��j�R�& �O߀1S[���-�g�|?#���&I-&��y��H,(�I3��º���MAk�r,���Z�K����wG���Q�����-RB���L�J+p�1v���+W��DRl%ZT�Щ���D�t����	�X�3���R��s��z�{:����A�lHo=}�&�75�.Y˷�'"�w��2��grX��-<�7j�PQ�p����6���o(���e�:D����_CD2�8�׻�x��E����'LO.1�trF����tB���i'L�d"D[q��	؀�b�b��ϟ��Q@��"����U�HUZ4\I?�NJq�)�����."�E��2O�8[��Ү������nUS��K��<2��kA�Pw�G�JǺ�Zr�i�&��p�G���,��5�z~���8˦�����/���:';�x�3~�E�]��0O�n��O�?����������E�q>l+w�n$�$S6��q�}�O�}�d0�]�}{V��'��l�Gn�g�RU�B^\��˥5�v�61H�	d�ч����:���i.�뫂�[n��)�u
RA^��N��xxO�v	|֒�G������$����_R�S]�Ci�p�C�s�B�A�%H풩�H3���-�^���s��Fzd���g<���C�9���t��_�%�� ;3ʐt�����"���^WL-�=E�$z��f(�}��$�G�o9UT_��$eM�SR�x�(�� ]>~�$f�����i�*u��3�P. 	\F?k��{���fم� ��1�P�0��@��׼�����Ja��׏/�m(��azc�U��Zz�E$>jn�+��PI��10s'�����M�_�_h��j�Zp��h$���6qn�[&��{�]��Ps��P�-���e�I�����^��'�-$	lr-�\�h�����x�D���z��&����"� 1�����J�6Z~ш ������eG�����R��Z�Q�:�[���}IbǷ���(����k��%�:�V���l�-��ÔwA�����;��ǲO�g#v�fI,QT
駧�RY�=e�i��u~os< ���P~A�{����DV{}�"PIWbv�l!7�d�g0/�]иb�"�l�R!R�Ю��s[:�yVZX��d���\�<��L��/��&8���EA`�Y����1��j�
O��hW�q�^��_t!"φ����3�� �q���L:�����g���pJ��?ҡ��2����V@Q@X4�A�E�)�|�	��&��/y��]6�X�宕�#H��z�d}Oh2��@YTU`�Z�K"�Ѣ Sl�����z��e�k*OAs�`�zQ$��UH'|��MU�J5~��#/�~��ײ�)H#H��|�RO������z�K��#- ZD�)�b���@�e_��N�Et���k�D���da����x�}9M��P��e�6�͉�ϕ�-l]KBp<�az�A��:�
9��/��V8Â-QJV��� ���g�hӤ"���M�>d]� �uD�*�cBAB%�Ԕ?.��+��Ѝ}��P=Zg(�a�Ԕ���<}�b	o16l�V,*htR�"�+J���    ���T�� N(�Ry�;�M������ZҀ����qQ	fB�!<S��� {]��HQ��J�P�7[PE��
<xl3|4��V��B�]!���a�������*i��VO�3�M�_�>11�J�0�$��lԈGNK�cbW�ߪ�
F��^�0m�c�(	�ѧ��K�KPF:��2�W1|�ks���ht�}4�C� ���}h��j����l;]�����^�. Y�
\��LU���QreM��Ɓyh-�R���W��'T��m��P�M���e
�R�7ŏk�7�^y�I�jm{F
�����r��$�ҚB�)S�c�PH�Uj�C'����(�(�����Uo߳(pSC�o��E)���Յ�PW>�\$ju�U�"f�̽��)Hq�o����_�t4b�%W�\@z��=�t|�b�r��a�k3[�C��y=� �z�˪���ʊ4�N]�E����]�{St"�I��~���i�T�;�D$��kM@���@��]y!"굧����e��S��'R@ʯ.-�\7���_���4����D��n��'+N@(VVt�n�xa�H�6&D��"��D�P�u
ji�>���G�B逅g�5�f"H1ռړ�T����a�y�����0{8����;�^�4L�e�~e-����{es�5�,Q~=���F:��N�$�U���m����Jڤ��p�9�c�:W��;�J�7:�����%_R� ��s�:��_N͜$`�H�V�d_1`i��-����NP��&�C2*	��s�(�B�(m�Ĉ�ĉ:\�ږ�eH_�c�����{������}��FM�Z��HJ5�u�8��؂D4�m/�v�}�(�m�Юx�+*`�A�|x�16oj�T�K�B�ժ_��`�3��$��������ji��ʋh;�d<0��_�7h�4�rH��tNa�xS�:�ߢ�]s�����6oB����2�V�R�AЖ��M�e�D���3m��B��qь1*�ג������,�F�8б�������#!���dKE��ǚ��l�%]��%�c ��	@�9�X�]���������d:DQ4)�p�����"���B(�y8b�?s|9 tv�Y%n�QZ��>�5XeK1�&���X�h�k�2j/�d87e4�.��P�CgY�_�K��h���*���������RR�"�	~2d;Ղ�	Q��غ?[
%��7�i��}ɳ	g�#�#H�AJq��[����mȇD.m@��"����d9�K��UpP��&t"̂Fc�yt@�N��S��TL��#!n���?Qr&�)C	��� ��br?ϔyat\E�%���:�]@�ho�6�Ɩs�V@nh2\,��(@Oy�]<*k�wy�5]��r`x�ye4�V%W_���]<S�,��d�R8n�+)�'�WRfu)����Z�� ���sgu�Y%i4N	+�"Hڄ��b���M��!�{6��bR�Us���%�澺�%/Zj�"�g�X@��9z��H5#˛2�=��+����Sz3���%�ܣ��kyӋ�pֈS�̟���7D�b��56�q��e��K�AA"C��/�&DzGDYH�k�.�d�f��Ux�0�↴Y)t>�[/@7AB�kO�H�u�����z�s��]��-��QD��DD�8cO$<�cA��H����� !��_"��_ƣ�*H�Y�i$Wuݠ�Stp��ȓVIqZVh����Z�呉8V{��3���ih�\�_H����,�E̻N�$ϡ:$�@#�,y�hoi����.�Ql�)�%�@���ז�&�Bc
S�P����b腼<r�B��R<��,C���z�]���
/�u��n���k�-��!6-�ړ�Aܒ.<�yC"/8L�#���l��^jjJ�����}U �kO��h7�	�w6�|!�Wf�����������6�55�(�a�x�r��a�HkZ#n��1)�����d�r+9�Ȋ�5�T�xoS�^\��P�5�RC��w,#ɚ�y`b�S�Fry��$/ xS^�����PGi{� �@��.�<�Eotma$��K��'����iY�Nw!L�h�K �H)���~[��j��@�����
w~�שlƕ��C�ү�
��+�����K��I�ˏ�U:(^���_M�AR��=%%��z�N��_w��)��������l�.BCHC殕�2UE������ү*�OJ���M�UH��4K��&�©������2��\�_J�8~'v�t7u�O b2g[���z�ֈ��P�����OM/e��=��N.���*�0-%�YuR���%I>dV{�/��E���cp�p�]R{:2Ξ���'A��r�R�G��Spz�\�Q����T�«; u}|��vߎ��G�z�o_҄��v�P9�ͭJ,:������x��]J�H �%wZ���Y��7�e`
�:]��Wd�b�#5"詺���/u��$KYXq�uAH�	�|[�k�Z��v��a�JD���k�@�#;�vG�rz�v���?�%����� F��K������Vl�w�S�8ϴ��"Ϫ�v:���4LA�SwH:� Q2_��vϿ}<� ������R�&-���䵺_G~Q9�q�%=+ؔ�wb=��@ѤZ�R4�&hd0�9
Ok���G��m���;�����3���<9��*g�7A��
>�u�"u�SQ/=$�x���h�~c�$Cɻ/���R+��#����+M�ʸBɋu�$ێY����@��Q+�m� ½�$��;Дr�7�WcD|Ǻ�?҆F���$t��2����&7��=�G���aLe
2�8�r�A�o�Օ=R�`�J&�~cLxBqn8wA��Dj�z.˼@"�q)�[�(��u�`$$�~��$Ӿ�����;��+�)�ba��}Pl67ĬАSsxx<}=�q�^�P�%}�MZCU��¬P��w��a��[��p�Y�. �%�kzęVg���Dz�I!������}�������b>sS�<_+����z��Oe�4xI��<k��D��Y��[4&���,<�X"bܪ���b��}g�.��m������p�H��
�΢q����;�j�hy���vt�Sy�.��>��j'���鬀R�B�(�e8�6���$���@'M����Z��َ�A�26#�J�[b�o�[���M��"а����b�H�ȥꪗ�ۃJE��_zTx?�tP-H�TPᒅ�LSO���RYB-k���M�ڱ�/: y	V��|1�VGo&E(w]S��W/ ��"�R�KG F}�	���,mFK���s��$�_t�N_�B������/X"H6c�����\E?����G��V��IA��9�mxi(ƫ:1-����o����?�N║{`�Zx��)Hx�?�El�$b6����`�t"*�@�ý�(�DJ	$ي��"K� a�^U!��#�b�n�8Z(��-��b���Ւt������*���|na����6�?��0\����+�<I��X/� {�A{`�*�p��ׄ�܈Y]�P�G����-�4�Jhq��GAB�^�2�ka����
G��<: �����R���vC�U��Q�>�Ɏf]��c\��KK�&Q�~�K���=�jiy+���݈���PkP�� !"��РD%г�h�S�=Z���V|�
$��2}�46�������y҄X�:2��/}
��woX�K��8����!g%@ߙ�j�PE����pP�90|�[jm�S�#1.ԫ
�`l}��K��2�8��Y��$<�j�S�#�ϙn���9ĥA5�3'� _1�&�N.��Kh�H��!]�$�*:k@��B�l��嵟YZ�<I�-�4�lX:�������Wc0� ���Z��'���H�5�����h���I����9&��喲����*e&�9�y�	HPX�BQ�n��2${2�%�h	Ǡi��jn�1D��?0�Wk�����˧�i��r$��C�4�""H/��9.";��-�i*�H[��I�    �����WABM�b�	�Ez�*��%q^z��vQ�t�b+��څ����=R��0�C��(��S�jIc��=Y����mʜ��חO��۟���h�A�*b��:	��T�a��U�8����$V�ԑ��G������ݹ[����qj��[� ��pDn|_]Tu(�s��*Q�����'�.� ��|���dځH+6�h��
I)t�g"`h����ã�o=tT�5��e��c��|O��F!���҇|�p��!�A�{%l��A
O4
��K�d5V��U���;R��8U��A�
�OCi�a�pz�}����("ۼY�x���������c����������
�>}Z�sH;�� �"�\5�� Ri�RV�GFnt�����k������;0�f�}y8Z����Æ���"�G����W!|�����'����~� ]��E��z���jʩ��t�^���#HW.7xRL���xz:�в/D&-Kִt��AA�#ȋ��Bhq��Y<6A���}������_v��f����z�,���gs�:�*�fg@�+�mx��b�V�*��	$��̟eƺ �j�����l�JA~�uA(Er�E��DM:�4���2��ˌ`/r�MksD$��t�_q�L�0]�݁�z�o>F��I^���.�%����`��U=��~��h�n���ůA"�
��ǐ{8�������O�0{[��t���z�'ۥu	�*�)-A�t`ݫ��m�tY���%�O�{u�,�i~�E2ZÓ�h��DF��N5�G4W�1ڹ|�:�t����y��)�E�T��e�i0���d'�,�Y�*wZ����jO��RqN#k�������j1e���4�|J�$K�T����,� X��"��Ž�me6牠Z��vV��Bנ0�vd�]�؍����fl��D}�B�%��W#n?qd��Pk����f�i���~<~6!��g�g�&������ZJ���k��`[$��L^��C.���ho"�}.�H�,0ʔ��A�.*/�Q"�̶Ljj�G��ZaU�Wi�֫+^䱝ܻ�tF�&��B��AI��b2�E�>`\=�~�N%>1j|>|�=���}�01�(�M���ofi����>���C˽4z��ET��7�1�7NA�kJ��\��\6'��(��)M��W�����5A?ԑ��\��o����gD����,��F�3f�r�M���ۊ ��t�����$75�:�a�jf�� ��$�M�LA�Ɍw�d�$�:`5ʿ��I�`ۊŎ���EqI�k@�X��*���aڶ1+ɂ&�Nz��wvA�����N�UDV䇩ש�v?R�Z�
RW8p�*=����d�������2�вF�)G�b*�b1	���W�V�i��U�m�G�.^����!˯s7"�� '��W�A�<�M�����1d�I�.n)q�5M����A��]���b���D���Ը�H1^T6c%e�S�P�r���?2?����+�b�\�k��V$����QD�e�(k]��MVk���	��&v��
����W_�yUrU}J(^�B������������|�i.�[���~	�(��K(lj�<� ��u�7 �.���� %E�[��D����X)��ғ>�m��~0�����Yޑ�D��~���Ȫ��07��M9E�Xe�#�-t����r���?>~|�}yy�\�i��/c9��w�g;J3?�.)���*	�B�������p1�E�V
HN%y��HB���ݡ��I�	Jl)�)���OY��(	������c� Ea��_T��.j"�y�_Z�*�n�RLa��q�����j�!����!l&��)�xyE��ٜ�����Ť��
{T��ZCl^��/<K#tb���_�$JJ�$�	��)�
<o`�Tc�Ѣ6w�DA�xŦLz�s�U�Mt,35�x��+�U`S��#җ�Ghl�*�U�S�aϚ�������"��������(��ׁ����!�����[�M������H��K 1��_�Q�s�Ͼ�T�3C�h��bsY�J߀U�Hz��bk�DAr��j���j]�����*��.Ԟ����i���%����N'�>�"���� $Р�@�"(%e�;"i�&p�bj���뗧���^%�9�Gב��28H�4�=�E�9�UVbY;��9?��ܒ�[�@�~�5*�kM�B�(�z)��\ý��QD(����Dz��3(��]?ȣ��R)��+��/"�ڊ�Щ ��9�R�iW�Ы8���#�*[�8ʛ�������fB�W��uD��¼��J��6��{�Ф��vGuS��Rd�ȫ(���tM���~t�)*{��q���c�JF�hD�,s~�o��td�����j�s-A�{T�6�/�0���IJ�Z�(�A	���cW1�ю�o�o��S�%2�ZD.��"��fg:�V���J������Ӓk@��nD��%Y|��4pK�f�ץ��� S�H�j9��?8�"N��[Q����U�!݂޽-W Ez�r�pz��uƜ��N�� �(� wo��}/SFZ�cf��U����}A��%��1T$%`�4�d)�V��.�<�x���a��vL�d�]j�X��]�u!k#̒$�hU��sw��ZZݬix�d:�d��A�]�w�!��Nw��Fړ�~����6���7�*�$f����������i�6��`�J�B0������4� 4���X����{1w��5�t\��I:znޤ�TPJ��
���}CiWuOCWߛ���lg�{�U �[�S�"�2csgh4�'��_�'^��C�t#�����}L�'QA��o��_.�	�$��0�Z��@�v�F޾��yV�B�v�B*rB�T)��spx��Ҵd)��&65��Q9���
;��4��mJ����!�]S��,p���MAXr��OM�5\U��?ņ+�"���'���-�[���Dᇞ�YE�.�i_X���)o�з^u?q%�Ē�)I%��d�R���dSF���t#7h��H*�'D�x�=�O���Xx���"FCt��vvOMY�E�x�n���+�Ϻ��wU�wl�|��˷ց�R�1�r7�t�S�n�<��)�X��'Oj��R��M�eX�T�C Ž��wWT��W����A�F�V��͌3���d`b��)t^� [<�68���I� C&��Us���P]��d�p��xiӶH���� ����NA�)Х+y%V�������U�H���v0nuȼM������mU�"�^̌�We&�`s.��⚠=C��d�$o+�d2�0h�'�<Q�JGp�,0�/f
��y!Jl�5�L��Q�$�B�o�'b�
H�QE�<�Һ%�\ju��8��)H(�H�KPص���G�����/�c�`�pJ��T�4E�������?� �l��L=�B��Z�AQDH(���{����I��{W�� E�b2(0���K9��%�1��^^*)�#R�^%ѷ�6/��xԶ���UN��0ǲJC��%?��rN��v�����b��:p.H�?RJ�oZUA����dM{�����!����J!��f��^T*�J^s܆Z[9�O�<�ǒTD8���8�pbS�<���7QM�@i��tbN|*:�?Q�G"Q3���΁��P@��du%I��pZ#\��4G��<�HPTO���V-��.����M
���wfz^���Վ~:����?���˾#�y�����u4$�L�[^��&�7<�+@���:�z�9���¨�!�ᲔE��9���s��~��❩3 ��jI
��L��S�INA��<e��]����e��"�����uA��3��E���tom}uQO�Eqn#\�~�D|���h��X:�����]Nڀ��p��8{��A��r���E���2��Gs����v7i$���~#
i��&HM�#q�k޹��8�������I B  i�9Mx�>@=����'\m��+'��,��R��ۈ ��T�>����z!��[�@�Q[��<㔞�;%��|ᄋ�<ڈ�t�\b&��d�������W��gL�?�磴GԄ�5�a�� a"�%�Z5f�;l+��â-��%����{)� En���Kwq�h��4c�}�������`�1�]��T��Ԡ�l�A��ޠo��m���v�)H�"t�v���r��������p����3���	'��+T]$��
%����xw��$�O�ד�����nd{�+"H��. q|g�j!=R��?��?�<�:y훜z�r�kb�OA���^�#�ӛf���JFo��T��	�rvR���������;	(�v]~�Ӽ��-�
 �뷧3ʯ5QO��1o� Cy�[a	U=^�M�p�"�d���tA�عY�-�͔������G�m����<;�������i�t��#��H�ڎ&�ൊdfʰ���_�А]Kƌ�-���瓟!&1ϰ�]�^eN�p�<Hj]uG�Gf�������r�%��t��a肨��&�|K�c��Y�Ԧ*ۢ9+5� �R��ڃ;"4�/� [b�$�ř����KF �`ճχ�{�L��b͒�R�Ԃ���P%^���{;�t�s�@�E�
�&"H��sKM�}̭?!�,I��-t�K��ҵ�����\�b�C�a�Ht*�h�݃�B�f'�RQ�f��*Z��������"H1�#lJ+�vw�zE&'���8擋 ]��%Ӗ%���$Q�L�����K�����U�����,$��t��/�&�D��I8��M(=��O�c�&�%�q�F6�*e�+M�J�P����c���w����h�C��aW��"^����z��Q6$���G���8��������q����RN4��x�'����!�MG�<hK"uQ*,�B���C#|�6�W-�,��t���C�\Z�*�M�.1��mOA��@s6�[��X���>�H�,�s+�t,	Q	����Bj �y 2J�{W���L?�U�IZ�@�z��7��a��T�x��5),�=�"HN�s`*4�&�z9]��D��L�DFъ�i�o���Le[��e1�SF~<���]��+�_L����S�0Wx�.s���Ȇ6_����H�[mā�n�.H7(-$euZ?�G5|0�@Cn����U[����)o'�d&e�\aS�b
8-�Gr큸�>5[��iW6��x���J��HR�;|���2�A�θ��%3e�K_j�	�y�ȧ ��m=��/dNG��053z�}	�&����wA�z���~�}XLl"�+�M�]���A�'\Ut��R�䨴d�N�W�PE��
49������T>r��9/2�i��#Hoi6��{�F��ql�/Ӱ��(ωL\UQT E`q.,;��=���^ �Q��HGA��_�RYj�_q�����H��Ҧ�C���ɫ�<���9:W2Ye���n����ءɊ�c<t���*��E�ų�*\=TE@�WSxF�?�Ӗ�	NA"Ă�;l�-H4��У��I����$"�]����{�>�v'�F���$���#� |?�)�?^�ގ���+���$¤+�7�L@B����K4����\z��C--�ך�����.��낔��-5���T��0h�oL��Br$O�鯃A/��hʟ������ =7�����w��CA�^�v/:
����|� ��=�Z��J�BU���v��{�!O�K�pW�ItY��?�7�|�FҘ�n���X���"����&GϦ�&l�"�4C��
�0�E��ȟV�o�^N�Jڵ#���d�J=K�j�A�H=7�:Ae7骺I��8�,j�'��I1�f�mb)j�4�%��$�1�#(Ґ�����'�������J;���L���Z�,{K$�XnH|5펳Y 3�� �c$@�|K2]�g�(&��o�>Y���d@��L�KD0)�R��^h�h��%&;��1R0s	�$"eْV��")Pu$�ǐ;�3`tb�0���4r��V�����!�qϕ��b�'o�7�E�Ey��սM�8�$Ji�gǚ��1ŭ�t-�$N'��2t��uy������r���J���-��L�M��^%Ygқ,�0�6Ƕ��\:_CE���5�.H�/ϭڈ����k��Bq��[� ����bƎ�R�%� #'M'� t��ȼO��c}9~9<���S��T�!
�t�)֟�8��aY�(ƒ�gm���		g�W���.^�)|C���ɉ��>a���N����!#֛�a8�*���g�k��DiQ�i�MT�}��/�����Iz���\�����	P���|�Pf��Dl>����χ�om��<Nn1iVQ����+��>P{%���ά�B5�X���2����҆S��L@x��&8��6g���<9h�Iɳ�H�5B�i����w&�T�L�p���HBA������V;����efl��Lp��0�hp��h���Xl�|��FR��'�-2~M~�{k� =/Ӭ*4Ң�x4���9�S�A<�W���k��S�.Pg\��S��1B�<�������z��۾6s#HS���.H0�K)��d�������]�@�}D���=ES0tŏ�N|ģ�;���Q�ҋ7!��>���ǆ��;eq�[��cd�d%�$G�!=N�I%�Lm�F���ADYb�:��x�'��F�3&Q�����O�.a���OY&K��.�ie0റ�����	a"�Y
�N)-�H��q��T[�Λj�i�+���n�K��w����W��S:G����ձu�e:%�At�z(X�#dn�J��y,����GHss��tAJ��k���Š���U(�(�!��x��1�f���MV���+�fj�:��b�'à��ܮRmq������3��t%9)"c�	H
Ho<SU��P��Z�y�;��\rj�X1|�%���Kϋ�T�ģ�U���)˱�8Y!�6Dz��}����\Æ$+�gY�c�p	r�x���"H��+Yե��1��.]��	o�upCQ�$��#������馼�����˼'���F�x��H6Q�F�J�k"��XT,������p�yߙ.H�����A�/�Acp�F�`�"�����1[9���S��F���NR�A���\�>���,3���7)f�S[���8��%��Z@�-d��ނ��O�}*��BRc��z�3�b�p�'�[U`��$���2~�O���KO|�~��%�t��/�����]Ղ�L�OO_���E����_L4O�9򐱡��eđ��ꡢ{��J�.���M�V�9�r���5�)�6P��,���,��=�:Bg�H��L�
d������s�ȑG�<,�Ac���琍��s_i��HD��yF�t,����#���R�@���4����� ,&��?���{yd�u�bX�`�h�]��2���2�VףHEȣ��NpW�e�ZQ?l�
�˛.�w]]F�xw�e��qE�/���j+j�J��.Hq�e+��|�T�;>C=)#-P	e�i��	H���U�Ou7���A 3k����x�@)���NY�\g���i���H�-O ?�'�#C���YSz3)t��P�D��Rc�x���	s,H34��#H�7��O������<�g�E��L+N�.H׏_`��y�BeX��J�F�h�%����U�ߞƥ�������l���H�x��\	_@���|6��CG���կlu�Ij H�V44#�.H�$��ô1����)�&7�"���|GLavA�#O�f�����9?���=��;���D���jwG�ny�U":�y��<�0�P]���5C\����&?���H��ϛ����;2�      V      x^����� � �      \   N   x^3�4202�54�56�,N�I,�L-�445 �������������������%>)CΒ�|�����Ԣb�?�=... �v.      ^   �  x^mWˎ�F<��b�yo���� ���]ѻ�jE���8_��R���j��c�����׳��A2fMym�&j�O�Ƅk�n���?��w#~+�]��a�]7�m�m�Ӈa�Չ/���⇨I�O�p�e�$��5Υ����v���ʥRZ�pI`��=�v�
dRo�w+.ξ �`�<�ɵ>����͙��[ǭIq��S`9�hu*�߂��|['OA���8�ꗩ�����9��[�M��Y��Ζ���Y�.���6�g�uw:��f�� �K���=0���hJ>_��i��~��K��ȯ�]kl�E�n�Y�]06�HO��G(6��#��Oh]4��ɐ�n�_��A�7�us�o87L�H�whLc�˜,A�D���1����a@\���u�k��z݌/��.)R����Ao7�N�{�������xz���nᏜ[Z�������J�pK8Z�@�`�n�C��V�&@xU�D��ޏ��=�:��0��x�Ǳ��Co�[=���q�Y��\n�i(yWJ	8"\�,�6���s@��:��x^A�g���V��~�������rV��fh��L9�IV8&	c[�M�M0�Jn���]���z7����o�,Z��x�m�	a��s`0T1��6C8T�"�;�ZD+������͆��l�LK��ޅ4�����b4.'����O�|U�k?qk
�~R*��2��W���h4q�-�( �%�Z8Zl�uq�`��hę w>��W��g������.�'��&1��M\ڟ�A)��@s�ʱ� 3	�m��U# $�T{�p,SHYdM�����k-��׏���h�������y8n�Mr�jLB&(��́�$*^�Q�WLcS��R�0 �3u���Z;��D�Y��g�����%8l�c�A�3u����'h�q���ld�m��6X_��O��[7"e�)*��Ʉ�*�j]�)É1�*����%��1L���Å�����69\��o�3O���-
���°��s��������z�r�5�(;m]�)H��9�EpR/��8P'��2xf����MJ@Pf	^�.�`�F{vKd��Va�_�_�5\C򾚅..��ۏ����ӯ�|��,X�ŤIV�jr>�����
 ��M:N!�M����W�-���I�y�� 
��9Jx���#�&���Kx+�-�\(9 ��G�Ͳ���^/�À���A������`灰�;�!��9}��D��T��Gҟͪ<L�Ka����o6���V'��޼���
6�Z��>drNvA��*�	ӲjP� :��]�w3;*�����س���l8����`��6��U�F��
#�w	�w����&�����U:%�	T��#���D�H����*���
 ~��{#q�3 X+�Vݶ��u�o��a��B�Ow�@�|�0�`�u�Ca]�ˀ��YBµkJ8���Ml��n�-�y��XC#�-�PDN�ۂ'}nV����o�      `      x^���n�I��{-=��fP�8��wU����ՕhT՞��&�bIL�d�3�|��������큦Q������`'߼ڬ6�?�n��ڼ��������˫ͫ��j��~|����;���z�����n��z�_�7����T����*	����t��OO_������S#n��f��j���W����}����h�?~;ݽ��\����\[;V7�����~}�J_G;�q�p�����܋��n�ys�lov��['Wh�Z�]��C0|�������wW��w��w[�_����~}S�n�c\��ow?}�����W�������ś�a��^��֯�S�5�(�������OW?=3�ʄ�Ɇ	�~��]�2
#�lҏ������y�-��p���nw�����qw��HO�2��=������m/�F����ۃL�$_!�K҂ի�!i�����wW�?>>�uD{�j�fw�����D�~H%��x�ĳ;���\�2/O����'Z�����|��ne�ߌ,
�"��aنv��:������}�m��^��o�t�9mi����o���]}|����wY�RS��m���z�M!htV�},Tޔ��Ş{��7�aL�B?a֒~������4��&�XgW�τ?=~��������v����[ެ��Κ+V��D>⺒cR}8�|�t����J��V[�n��0qe����v�߾{���I�D��=~��~s}\��4B0Ȅ�F�	���;|��~����lE����֯�`�u�{��w�՛�q}���� o�ׇ��+>]�g�����L��+�{�-���ñ�B���tͦ=����ז�S�ʛ�v�]7�c;�Bp������H��t������v��h�A����z�������ݓ(Dv���Z��e(GQii̹�t��ҵ-����f����������B6o(3'6v�;Q�c��G�v@�vV����z��SIF�yBRg֠t�3�8��Yo�[9L �P��ɁYS�YS��n���a�@H���J?7k���ߛ��x�T��@�(ޜ��H�K��f$��������9nkG�u��v���&ec'�'��j�R	C�o&�dƑ^�R��n�q�z���z=B0T�3رy��Y��V�����Z�;�(OUM��HpF1��C��ۑvW!�����J��阯m�9ZrM�l鰦%=I�N��1&uԭǪnl|���fE_ɑv= Ȗ	'��^jnYˇ��z/�*q(�(����8��2�g�۽�\ovk�0B0���E���8$I\W�o��79�G'�M^w$u$vW+k��϶���#�|�F�n�-b8ڬ���.A#�h�0p�-v�?>��%���ۧ�����z�\sf���ώ��+��K�\����Kc;H⹵�Wo֌��'�E����������W�f��,?}z���w�(+���F�s#�}#ڭ�U/H�i֤�Eo����l����&&Qm��ɂn��w��̶�����r�g$Vk9.M HDǅ�p~%�d��Ȗ�����!Hd:ȕu i��/�[t�2@����E?di�H<�F�o�o���!xDӅg[���>�ݟ>������On���\�r��f���f۰��8����U�_����	7����o6K62N#�,jZX\Ē&�������B��_v�Hbn�0�b��;B0��5ל�[{~��X�I�r�[2[���#�[�>��77�m����~"��mk�Tu�L��`cDʫ��*��<�^�}��$�BN�){�/�oE�0������\8���rz�rw�����j�j��J�c�f��va1>���︄�m��A���ɿ?~<]=��y���Ռe�
f7)V0.�K�Q�ܖW�&�~pz����+�bo&������@�l_7oV��f�����Q�Q�nu7nO].�S07��1���͑{�T׳e��,$I,˶߬��3B��.ʵM|y��_�E�?��mlvf���'�9; ����N�8�َOkd���5S�N��%+��p�o�|�]�����F/�� ���ToG̱a�Or،�on��u�Z�AF�m������ݫcnė��׫���~�[uh�&0Fd�G�	����׹����N`	'b;X4C�C֞�����G��λ�N����Z��ɮ?���꾲��8�>��b�g��!��	dUە�a��o*��{�}�f��ފ�2(�Q5�eX�]Y�k����`=�B���ήm�.�[>���n`�态�l��Ve�@��ť��$���<���5Dk�p�-�:[2� <� n�dU��0�f}nbqwgb�!��z���f�����R.�f�Ϣ��������E!c�ge�����1��-�7��Fֿ	d,��k�_�WǬ%?�>���=����ݹ&�X�u���.�Җ���	K9!�q�^X̙ç�Z?��E�a9�b�%��7<u?ɂ|Ƨ�C�rQ��7Y>:�]��&��h���3�{��5~�q����2
���ň6Xn6;�m��_��V�	�z�n��'�r��ZQ.��K�e믧����w2*�M辅5J��x�����7��������T7XR�ưbn�\��`8�`�߶�fVrH38�p�3G[�̝�٥=��,�I�]k���K���������><~�U�B2zm{���"F6�bĕu���Y}��W�����9~��@��\p����2�\���"O����E=0�,�B�f��hd{�����g�̘����V۝\�����4�����+0�
��#�}�-6Ϙ���,%3F���@��Zp�5,S0�0t�ܐAO��^c^��"�3q�]��U�7X�W�;�3��K��$��������#dSK�8|Q�����<<~������i�ۺ��g�D���ȞP�͙}��	VgLn�טZd�������)�`���mF�5�`h4���olS�G�D�wH�w���@P�.S{�y�PK3` ��}A!+Kc?*k�ǻ_��n		�b!6I���诚�fT��KS��OO���k���[u:fA|��;R"[�app�����SȈv�\�aL0�ϱ�{�L�	�,Km��$Ļ���EG���hSu����Soq���N6�N4C�r��q�ÕprJ��P�CS��Ia�$xe���5���A�.�zY Æh���@X�6�k�� (D�o.]�	;��xm�y7�pqC�|��܏����LOC
���ݥ=�$/�"���r=�/�87�}|�̟6�j�xd���~qs#v��z���4��Kb�D}������]��� (m�v��Vd9v��[w�O� (D�iUv�a!Β������&�O+Y�&�_�e�/~��n���%��	�ȓ# c��7K�]���{5Y�WXM8�s�{���꺲�{e�S������z�XO1[��ۘY`���0��J��N�UX���;�?=�)�H�����B�T�Wq�'�1��~���ꓱ�b�E;+_ﴇ��4��I3���OW�uz�d��j�{	e���j� ���k�V<�n���{�������6��c�9�����@�յG��p�?�?��Eq�����N,׹M�z-Qs�4��?sv$�Z�ts�v�D�@�Lr��Y�������@�(��48eD��.A(��g�*�������ɜ�������L!��ۚ�+��s|:}�}*��!�������)r
Y������۫��>���0�qnm��<jSșʪ`���j�<�@�[ܾ���h�΢��슐Ł�ru�����!X�K�i�����=���#�"g!x��h���m{��EL����)K���B��4EQo[���f�&�HZ|����ڄ�ڦ��p��AQ�2��A����80�0��Tu���W�&|a���������TW;c�"J�Xj�D������Щ,4ی�\�0<��2�	�3ܞ@5��6"�g~�5a�-��CPH�6e6Ou3�XD��	�Xw���`�@:�z)����H��2n�:.��BPHK%2������x� 6zV����������137G;�u%ʦ��9��}gj�;e� �ڌ�$,�s��:���    �4Ol�����@"Z�S
 ^���R|��ptf�����V (�N�ߊ�ւ	�p�Fӏ��M3�����y,��EB�9v��t�%v��cvR<�|�t��l��
A1Wpl��v�M}̰fKF)�u���vs{-W˰����q=���0(�r�J~���rm������L����Y����"���t�3qV��� {9y+��w�N!��l�Kg�F�pڬ��Ձ�����H"֎6��M�r2���nInoL��yD[�5�p؇`
9��~C��E�������Tx��F!��w���^\��	���`Q�YdhX6�C��3��l�X"�!hrY����ܾB�"7J'����B�"A���,��R�y 4n��0��BN�,����t7�l�T�}����/.s�
�yIV�Ͱ���\!�����4�[���O�\�������C�Z*\�y�����Q�Sȹ�*�$�Ԡ�w���B�Y�k2��܏j�Ϡ�,�ѯmBP{q�e|>�y�׃@ ���_E%����HO�5W���喐	��X��7�c��>�����4��]�s��F��d�X~��D��rʺШƦ�����]?����	��Vp �Ʌ��/����Xﱃ��Y�fb۾!��z(�|���KAۦ�ȟ�����8{d\���7D&�75u��ǔ��Ni (tJ^ �>���9i�����������Hn,�m��\���.��zp'�o7a��z��0?����\ E��bX-wלhu�҇-�, MJ�&�)�q�F�[0\�ޘ@I6G�꒟f�U��aX�MJL��$���ꯡ��bQ�~��c��Ed��G��=�V���Oum�Ó��H�UԹȹD��c��y#���(�1F���Yd�\x�͒�z}�7��Ư�������)��I�J�B&g�	�,� ȼ��EN��&�0������21L�+�|m��fٙ��?��b.5[�:{F�51�2_��
C%��?^8n���!���BTI0��L�� J�-v���V��GQ|%y��3u-ﵘ����`��NY,�Wc���Vɠ���uKLw3�.��Z:�C�d&:�pSC�
�̍H-��a8I����+[�K�9�F�g���ȶ����VO;��!ċ��ʺ0�e�0z�(�
�u�Ȯ�_1B�[2���k9�yɯt��Y��$���#�H!'�OiL�W��y�>>�`�֗��@+,�'y���2����?��`/qaf@'���gTȹd�t�«�1�>����o��)>�%� d@ꎘ��n�|�Ԍ��������#�K�{xx����$Z���x����Ώ	�,��M-M�3�ݰ��EaD �5A	j:쏷�>?��KRh�1-b����l��ݤj���~'��*�تC^��xށ����٠�����y��<ɂ��AkR7L5cy
9�,�y7�ݓ��c6Q�#�zED�5�;B0����i��`����L���eDr������aȻ�Ĵ#�H2�9"����hQ�	�z���/VH
��+n�uZ$��@�>�oqwsIVƁC�4��#d=��Ƙ�S͘�IcX#H���O=�mcA#z��m��,����hD
G �Q��⚢!1}<�3.ʝHr��eǁ$�s�5�$��d�'��֡(����׸�AT�Q,Y�`�?��CT}1�o�i�gXS��$� D��o�쑖�X���;��z3�@���7�Y4e[�*�1�e���Z�#��ҷ�E���$�����0�^�����XBg��^����H,���A��5��s��W�f��:G��Z$�uq��4a#������Dӿe�����L,�zpI_�@�T]�'\.�.ȭ�B��P�@Ҋ�[gDU�!�/�Sy|:�˭��2�B�uU���>s����c�f��Q��`I�V�P;h� �@K����ll�(%�
]�QkAQU�<�"ƫ̵���Y
gT,�>����&�����4���3��������'"@���Uw��LBrL�/�
���4�AV%U�Z�i���Z������Rw�6w�3o,�^@�R`{q�� (��rU�h���q�?~�R�IT��P����!@^���;/E�!jiJK���IR%?�l�%�D��;|M�њA0���ee+u��ٜ�p��c��n0�4m� �l�����/�v�����JE�#Q�5�N gݜfˆ�x��>?���zx�܎M`��n��M�&K=�CP��N#�~?��UVC���E V_�g`��^#��\2��8�}�tkalaD��p��"ȧ�wd^I�;�����֮A#D_Znaٸ�|�Dg�,K���[�-�������9�Z�3�C�,������a��=�C����"�(Ǣ2�[$������ۚ�c[&�[���	�:'b&<��mJ��εV{#a�f��D�K]��  �}j�w>I��R�R��1�u6��2l���J�ƒ|vRGҁ�~�Kb�|@t~�ΆKVJʊyk�bn^A!+��y�^��Nw7���ޒ���9��f3� ���=����Y���qx������pEC��h,�fڪ���@���y��!f�8�t� ���$ɜOx�+$2��ˌ�I�T�:5BŘ=����}���Й�X-�z�Z2O{A�t(hvk����ߟ�gl��9�ɸ�X1.
�6��������.g�߿�}ϊ<Twd!K��s���m�:��dh'/d^�l4g"���� �7(dD�%݊������?>��}�,y ~l��MqP���B��z:lgul�$VL+_���,m�|�?/tX�f�:
\��+6BF$KAC��?YL��c��y/�@n F.����Z6)J����Z�=8���$h:z�h�x�Z
R�骷qYc�ԛ��'�GO#d����`j��	�����׾,Wj��lXX'�Zq
9�,M��qg+UE�aj�IP���~T!�9��z�.ݶL@Y JaaFo�&mxy#D��oGg2��V$�k�æ�;B�Q��6�r�&'���j��y`��2���ͬ�C�Tf���'>��9Q�Ģ����/�������׫�O�_J-gfP�a���#j�!g�o�ܧ��io���J����bIa#|�5d����`b��W��!�� <j !�^��x���i�WV��&���'���a�h o��r�&Km��_���Ks�UY��+W\����9��5EԽ��]9eHU ��!�T+�� &]4���D�O� q�P�$
�&j���5+��0B�Y����q���6.�X���=GY[d��~a�V���V��7��Aơ?�fXjG
�ؑn,���u�fh�u��@
��%K��w�j��E9��y�)[
̳J�Qf�H��[�2��ѯ���N~�Ó#w$.�'z��C��c1�$8XI�o��pT�9D�;��P��N�$+�2ᕑ�9BN#��R�bj��ﰕ�_�z��E�����'��w�y*Wa�&[��r
Q�o�`�#��;�9�BN!��T�(�����L�8q��{�9���4c��o�X*�E����u�W#����P��������,}�ηr
��o��8��T�)*d�㜢58��O�������Τj8:�9���)Ib7��dAb�֣�9���:ɴFt)�]�Y��9?cG���)j_�A�4��ӦS�*����s���򦈒O���ʒ�`�
�\7'�����q[��6�A��0��B&_ӎ�����m���4�'���:�ȉ��s:l<��/#C[X��YR#F��B!��ʮUQ��(�c���$2�q�R*"��r�������9���&S(dQ\������Ў���+Z����sbi g�_�=g�,8t��Y�m;��,�C׫�A�n����^đ���_�!�C��e�u��2nUV���1�Z�A�4AD	WoGV���w~_�bX��D�����9��Z�&F���΂���|d����"{�v�DzeiE&���ʝJÐFxUԱ�CƤ_���3���kBwY��z�î5�^c�Ȃ���ĥ�K��2�R��[��� ����*�B6�eQ�_4�.-O]/��    ��I�E�z��Ch�[3�`�=E�H$��W������rXR%�0����s�
6>����zU��.��Wn}S�)DE�g�/��=}�pw�a�Y��-
\rQ�b�P�`��bX)�tcO����~+���eZ�n`8Ÿ��?��"�*a���J��f�(��s�+u�+�����N��
�����|�v�Db����$�[�s����kH퉵}y�M�yr�%�ĭT��A�c��/$�(qxEZ|}�����R�=$�u�� ��v=�j�;��B���I�����%Ž��cr4UG�'�lW�R���D��O�D��TF�މȉd�/������$z�!�6�t!(QP}���<# GVՃ�K3˹����.�3B�*Ѳ�Kr��!w��~-���b&�CFR��Ҍ�H���(�%��_{�u��ӀXo���N~�f��{1��l�>SW������.�4�ߨs�,%!J�B��n�98u��������ףu&��S�0}E��7ڧ�G�C�c%-xZ7�r
�� g���uPkƤ�s�����Ώ'	��
ArO���-0�w�7CԽ����#	J�=�U�r�r�@�3ɿ�]bϰ�~�J�_���+�9�t��n2[T�����\�3K�����52�tk/��U��1���RL�(3{,�J��j�+&���T�B��w�	5������R4YkZc��7�yx��!=i��7FT_�j�&@&&�ݳk���ęI�E�/	֏P���c��Bk�ㄆ�f1�P��@�4%�k9����UDO���o݁����e����L
9���Y'�,��"�Z�x���2BN"�@CR�e֞(/�?�.?v�㬬w���G_����L���o��A��f^���BN$k�Y�V'�LlnG+B�ʫh������z�1� �����hϢ�;�� kD	��O��N����w��*���B��#�$��i�4��z�}��p[���ǋ�c(���*_�1�����4�b���Xvw��O��A�![��9��W�`�Xn.Q; ����p��1C@#�c�a�PW7I>��|(D˅`�`�ĸ�gO|���9�v�%G�$ƪX[��Fo<#�2�^t�XO{�x3c�C ��5F�D�\X�]����SQ�Q�+���3O\?��6a��F�G�J�BS�f�<T�l�Z\mn��l��@�ıtO��5`��~�5�N=B�Y�g>2O�*����J��/�}��j�r�b9���rcd�Kbh�վ�r�,s#�������MY�p���
9���lV�����B�8��}*����#%��?�
�PCof#�J>��uY��FE��_��r����Qğ.��#��T� yg����K�Hen��TL���!�([��rDX�	g�z���C�!3;8��Tz~���U�T� ����/Z.mXޕ����ۙz�!g��(�918$1xa���Իo�BΠ�<�!�G�!H�f3B�Q���ۢ/�R��Әn�@�d�&�ST��Ր�:[���q�㵵�3�B�P�[K��w&��f"̅r=7%�E�+�U3��B�.�(ݚ�:#V�	�DU����Aޮ.O4��B���;:`iȸO [�J��5��o[��S>���5)"[ӈ8C��9C�����v�d!�~f	ğCNQ��^~�������O�ٕ>@!g�_�C�)Ri>�p�X�9dc.�YW�nq�ʕ��2�i�lc�n/�����OK�Z�jz�R*��k:�+�}%���aQ�y���pv�nRu�7BT=��J�3S�/��mh9���Ĺ��`�9x�ؗ���m�����]�:y�˭/���j�3?v^ a4�l����k�/꙽&��_갸(r�)i��(��,d�^B<�y�t�Lҥ����7�s��7~݈�S{:/�:�	��^pZ�S@h�h�E%S����J����^���P����R�tb4ID�N��1�fV�i{�Q6���j-�[�ǫ�J�8j>�vv�s�^k����aD^ŊH:�g�r"Y�Q�^erRΚ���2
�|!���@|��Pe`���x.w9����z%V%1$D�`�3xn�BFRB���/Jb�ZB�ۗ\�&�3hW.V�����Ŀ��
9���zŗo$�K9wa�0���ġ�s��W���_������C�ݐ�59�C�C.]�ؤq��U��O�ˉ�6f)m�S�-�BlM�<#��o�՚����l&ʞ��3���+z<B΢���&��*���Ѥ0�W����Dϣ1��,��=��r$�Q�
�8=���D���o�x:���zB(Q�j��l���x�Nb��A�a�׿ c�(1��>��'���N�\�@�xg�f_���G4~��yƨ�P�r�8=!$b��
��W�6%��g[b�X�5	d�J&Q��!J?s���-��Y�|�)�Z�L gů�j��V-(D�D~�u`�pQ�����N���)l��rQ� ����;�O��zrQ� XvOX/XJ?�P�Q/�#��֍Om1�18̠t�ޥvr���s�^J#��n����5��P]�F�$̍�y���:%A�i��H�0��d�k=5~��S�*[63�9��)C{j=�p��5��O����Ը��T�ջri���9��d���2juHU� 9����oMlg� $�Ѷr�S��+#� g��w��Z��j��q�wj/@�@N"J���.��+�=�N֧�o��jp�U���`.71	����ަ�h}�H:WbߦZ�����
�!o���+�3^����dZ�t�D$#1 �$���M�� 7��~E��L��n�:�/Ts�ݕ�760X?��i' k�N�嚔�7N�	���+Bڬa(��"���3����ą����E�A��j��ƕ�QNG�����ϧ����u�p�'�(�3���d�йdE�i�:Z�U\76�����[H$KdY	�$���d���$������z!!�툟L"3r#��] �.Q��{�?o��<�x/jc��yb@M2#��E�ų��q^6E?>=�h2v�1�y�@\vU -���i�&��L��a��J%̨	���L+C�PӅ5+�aT�h����0��ݖ֔�B�|�via�{
����Q=䍪ӯv��h&z�Ĳ��e�V:�����,�F���V��2���@�P�]��&�ɔ�&� ^l�=�ANQu�p���p祬��3?}<��΢r���m��x�*=<����oV*��*9�{���:�R!���xz��}�.�́3�#Σ���\�{7ƒ|6�9-zFZ�l�ȉ��E�%������D�x�!��86����[ �r,�,?�K�'�W۠i+�%��R�8p,���O #�V;�x�F/�����a�j��o��Sp{�!���Ӣ�x�~���魌��,�o��9���!
�hiaIz��N�i����ۏ9_�zʅq���E1�(�2��G�D=5�_�ͷ�_���J�%&���./����8�L-}�GV�Z)���o�	��ម��0j��!}�ݗ���n`�o�� {3�r�!g�<�
�y�b8pcT�pY�/RG*d��jJ�b�YL�J�8�۲���`#�,��ٰ�򥽕�8�6�%�0�%d�ȋo�-������JS	�"}E���C!;c�k�Rn't��u2�A�Q�^�G�I�b,�\%ޓ�������`(�lk�x�2I�kI8+���� '}W�b.Qf 4�+��s'�勞��E{���C
;�"*�7c�A� ��tS���VG��
!�1�����%�E^ϗӒ�gHL��hl���)�8�P��j���C_٫�^	��#2����{��޲w)Kʯ��}��%~�������Cf�qJ��39>�B��3wɰT�aW�'J�v�F+�A� 8-��^���JIP!RKaȻJԧ!��m��o���_ʛ+��N*_��Y5B�!(ݴh�b؃�u&��FbP�Du �e�z��o)�!	�u�b]\��`��bU�lA�5�m[��rm�z?��i�����O�=.`Qĩ�%�,q'i��z����Mg1"�RDJ��r��6'Ѷ����8    D�̡� ��Mk��2�G�VC�%ш��rd����l:�B6�K��(	0DRf2O�DiS*�A!g�o����w�cϝ�D]ۆ! g���-x0�ka�hC��A���:,��Ԓ���|Jm�B� W�}�%qFl2�>=�Z]�|(�n1�jjF�Մ���F�f�ť�sIV�K��V"�,�vv�&�MU�F�� �G�:Le ��tp����H�_b��G�(�iEI8�8����/N�w�Q��E��"�~a��>�JR!g�c�8|�hY��d�q�����S��iB�	��˶��]R�LxF�ydo".bJ9���t�%&�lQ������ h}+�F'=��5�+j/�t!o�,,ҤZ���~��\k�d������SbQț#�K�����,�X/u�s้����+�׶�@&Ya U�-�1���3�꟫�8p��f/4_κ�V(��M���ĝ�������#�~{��V9ӄБ|�!��#+�V�m�\&�:z&�#�=��S�l��u��"�XX0u�W�;y9����\뻌w�.�͟D�Qf�֌�����7�1�U����v��]BZ�*�,���_��0��R$X7�(d����r�wa�;�禰8��)#���iUռ-JW
�{$�5笢��xyL��#�ҫ����r�M��v�@���1���Cо|�%�7&��9��;�r�oH���j�1m�$_�Ǚ�\U�@4�x,m�����H��'��F�z���Y��m�$�h�3I�yA}4#�v� �a�#NF���nv�3�EHU�I�CΠm�&��Wf1�5�l)�������;��x�oy&�.3X�Y�b�@����e�ھ�,�27��@��y3Dϼ'V7B���m9<$S
G��CF��N������1���!o�6U�)޼*���N�[�=�@:�����A��,Z7�-e�*J��&�L�AbV�D>5E!kJ���(���-����<�:�D�\�l��$��-cW�T���v`:�[S��[�|�է���[O�4D^
���sțS4�q�����Dٵ�&�J�ǽYié'�P!oQ�)QY`�ȟ��Gw��m���5�-��B�����h�U] _��Nl�6��)��з���,v�5`��U�x僕��5�dl_d��`���)�D߈��p���&*�:�d--H��u�	�j���b��Un�ǰWN!oFYcZ�K �澄��T%<��y
�����/�n0���g��kz����X����c�Q�%��%乑��l*-ֱJ_��S�ěSuS+�p�g�2�'�)�$�����5�uǒ�-�!'�oZrf�zZ��H�j�V��%=�/����E��h�A�{��V�D�[���>Q��w�k,��3��S�͞?��cAۜd��׌�g�0�p�����S���p��U<BYO��
��˦҆%P/&�&xw������Βa���8y��l�I���r��D=�z���"���~������'C��o�޻��e�J�#�T���{oԘ$	�	�d�����c�+��c�~N"�~��0I��xz�5L��dS!*Dx��T�R�9S�^PӓN^!g�pYM�`A��}�]�R����,E!�w�K�k4��D{��)$yt ��Z0`
y�
PG~]�w���2��Tl��Y�#G�ŋ��*�V���ý&s
{��B��6��-��֖j�Pa1ZP�<|��a�R8G?W�(a������Uɋ�E�ȉK!kV�F�\�׃l�rI�#�fO��$�$��_b�pۭ<��h�
2MGȻM���K-I�8���j�x;D��������V�8/����x_y7D��w�;�㺄-�o�����2`#���[#=:�H:^"�cQN��{25M.��A��q���z�g��S*�Y`��#�$���&���tm�@��'�mR����,1�{KV�$�]��cA��8B֒��a?��τĺ����,ES�Id�5��E9�q���<���&���b�au|ļ8��|"8qj��������Q�dƒVcK��m�p�ڇ慺B�Q�����W&B�?�B5r�-�
9�l��wX�]ߠ��Г(��]�n,9�`��RI�c)�-�oZR��%�^v�㥸fv��W��wc�b���-��)���,����툔3��ʧ	�<O��v1B֎��+��~h!�Vݘ����9���K[�7H�$�^��D0�r�&o��%[i�d�-�O��h�9�Lqq�.$�݅5wER�(@bP�F=\�>"5�D��5�{^87�ӻ=�K�1�����b��ɧ\�Ԛq�{j$����Ucw�,Q�yUĮ��P�̑WOޅ�BN"�(��ΜS<m�AǄg<�x����(��XV�~;=}�*�ı�l%Jez��5&�'.xu4
$v^��"Ͽ��� '���u$���MRZ�p�%+�ww
Yo��)Yx��"�J�I��i��o���	D?�:��FX]�#�nƁP��H�jr�2֢!����J��4�x3då�nO_r(��X�[�w
߬�>���,�w[������F��q���61(�����CN4�늓�Zr���4*.g�3&B�u���kD{"� '�J�V�<��:�v��)�C.[�2�z�Z��&n7ve����j��^[���)�c��2י��-?~冠�1��U7Η,�-I�`��}����B�Qg/�`/�	P�V�_��
yOթ��'T��IQم�]!��_���WA�=Ȋ��||�w�JZY7E�Ys"ܭZWqc��TQXa��w�*�YC�(�<���O$�@���p/S�[R�K%ap¢���k��n���܆����π��p�]au���A�����`e�q(�';��/U��{J��ysi�=[�2��� �����vԍ���S���8HT�J�`�վ�!��[0/�}���rL��Q����;�B� x�i�H���!���>�Ϫr��s�]uFѓ$���Z�"�IT�.ycU�^�;�����,��X����S]��'�w�U����S�t�F�Y�ِC�L���pŊ��� z,9���XCl�^��_p�$���`/��!t1����v��*� ��"�vC���K�'T�yD�.5˥�p��w�	x����������K�B�{����hI2� o�v�f#ǫ���7�T�0-v�SM�4&9��ܾ�������eU�x�>�w/k�&R+�L�����ph�$^<��u�����������Z"���+��ڒ vu�UO9�Ueu�B6���n8$���$qF}E�1�n��B�Q�������<���*dx�H���̍�;��Pm���C����?2V�J��|Q�V~���'j�N��k|\�l�|�������9�6��fM����[��_�-��Q�at�F	b�?��N/ŵ�@����P>�Ԟ�
9�(�t\G�SA�����B.[�w�_�nC�/B�p�f�)d�D5�D`ﾐ:��k��~��b�	�V!i ')�hO�P;��Y�U��L!��m�-u2��r`����j^!Ӏ���F=	��4W�B�B�ᢹ����l���#�X��A.[47�������&�#���Gc��6���f�q�x�f�ʹ��+�o/;pOQ���Ϸ8.�dQ�2�V�e����!��{�Vs���C�+���췱T��+�d�:~�=m���+d��m��}���`'G).!eX��%l�.;��|�j�v���G����&bݴ����*�r%�6!^��r�㫧I�}��a���>��2͏���e�=�0�aU����w�v�\�g�r`�d]�S|�B�㲯��Ł�xNT�9+�E+Gkv��^���Q}_0�X!,*9-���<+�6�U��x7W�j-�e��%�б���Z�7�Z!��A8�Ѡ��kw~��<�ٓ�7�uG��`´�Š�b+��=��S���/��h�@l,^`�LÊ���B�,��GOK]����r%�8n���
yO�m�R��c׫k�#m����Gv-�R�H���v`�������=^u�/    G�3���~�l��9g:�SV<�O)ﶙr�U��o3ve��;u)�l�{D!�-9=�6�l��坰n([�fI��0%�u�6��d`�R9j�/Ć0t\���� k�?�V�՘؛8����+�/�9��뻅��;{8:�V!��͡z`۽��-}�k8�ki9���h��br K������U�,w�B�뢖/���^���2HzN�\�h��9���	ZO�6>��b�A�ᢛ�Q����>��{zz�}����M���R/5�w�(��O���{��(�;�\��$z*�1�#k���n2sd��Lp��0���|C�-� ����C!��Y�M�ct�!?��3�C�,e�˼����l�ý�3w�`�A�-x�H��r�W��׶��֪!KK�E�p8ڮ�7K!�%Q��s��K�B���Y{Ţ]V��@���������i� ��%0�Z�0+��6��vCwy�`����ݽ~EB��N��m��T	���Ҕ��5}��BjzJI,����\���E���;�dX�	b�# �)�H^����0�w����%�Qh%�鿌v������W�e�Fڄ�e�f/ţh�d�H��Jd+Wx�Y8r��B��E��)>�VȦ�L�IQ����Fi���o�?Y4Qj���D��p&"�7IϨ���������U�_;,�: ,�7�h꿌���7�侜�|n��GS{-]�4��2~
;YP�x8'YqntX���宱�g��tߗJ����>MElvD)�Kާ-�}�\�ޏ���9�>:�
]�f�D��-��m�=[��v�rڠY����8�<e�";������Y��>�)�-Ѷyf�QD��o)sV�����eה�"ƎD�@��E&���<�S��64���X���7%�����ϥ�3��(�U���a��!ӂ�'j�1��u I�(W�D�7(�*�^�s��R�y�X����7�
y�Ȳ4��w�����pß�|pEw��h�O�G��L����Ww�uI&ٰ�~�b��^��[�N��_�GG0R+xX��_{�\�&�匐���+��I��� ߅�/�?���aD���gI�۷��)���!
�la���Ο�̒��1s=�i5B�!�:��;�\��[Q��Ti]�]v���i�SE���j�j�&�r�\���"�x�Yι{�59�V��DT��~��nj[�Gsj���#W�4��q#�txwE���Sbd�s�QS��3�yW�-�h~��86Y�V����@��Z���i�9ܞ;�u��~1�a����i �p��s����K��ğ��+��.v��s�uV��e��5���w�(煲q�oY
u���N�<��L���޴��>��(��!�y�'�i�7�G�/�B�ɺ��̊����jO���d+��-�y�w�݌���)be�2��c�v��m+ⱮE��
��H��m��ѣ��*ø�$1t�B=/�9k"��5���T#n���7D�ޘ)#�x&���w��	�ў��������X�6z�!�nmY3��M�zXI�t[bE��E��ng��yB���(�6}�B>?t���ǵ�ꕘ׍`�X�&_y��r;��/���?e@���a��]b�[�=��O����Vc;����ۇ/W�n�&I�OD�M]BH��mh ���i�A]0�Q���}�m � 5_�Ev-��6����;hi�\�����w,�7�˞8B�����`�Io��u���c�{�~US�����K�:�+YVh,�
��fz���^��%Ƙ�	��
y'�u��V���*=�k���'�x�0�t��F*�����B:���ҕ��1�cq���p�/���6�<8�~q#�ᐎH
YWI�#3����Hb���E���?7P!k���T�x�x������)�h�BN 7��^_��$��!aG	4���ID�/J�O������r���rQX���5���Ba�3�^!�?]�h{�[�+/�nU���M�a���6�~����W���5)��6�����<��~!�۞��&f���rQ�_���v��[ݘ�BN �<v�!;X$V��ed�BF 1B�M�P(����b��x@��� ��3�x�ʃu�뮮e��IB,���S��r�2��z�Z���%����.�3h/�b����fU�o�E��­#+k�ۧǻO�?��i��xU�4�f��-�E�8���2)�!���Voޅ�B�Hh�D�k���%),5��[�6��n���:,�����8l�WIUP�����b��U/���Ϸ���B�2[�8��f��b��G��Z�S
��ƅI^Jջ� �H��Tv/W�q�p!d�ar�"��5BN �)��1�.����������4�r��js��KOA֮��)[�q�嚗�dЕ�^t��U��zK,�؞��f�e%�Y�C�d��+���鹾H�擿5j/�l�I�)�U{���������[� ���P���&�w]��+������x�WAd�@NP� �J@�m}X�4ӟ�r��2������|Y�a�".���Թ	
9C]<�d��K��ɒ�'�ҨZ_![e��m_��"|D���f}@�z�-=E��𬳲PGa�
YOI,C�����g�7!Ls�9ȺJB������O���UrC򮪺ݽq�=�|�����-�Uw�� �ht[]�e^���û���v��YG>[�xsP����P��܋��h�J����$�,�V(	kr;�E��v��t�����}����_��Ï����e{,�`zR �NE��!�&6Dq�������R3-�"��IX��+���h��1rhޒ����[$	1�D	���y;dR4�R�+�
�yp�o��c	�i�§�/����d�"&������n�S�`�]MU�?����(�2�y
�*��꽓E]	��{C���y\�g�4{#R%Y@%yS�;|N-AN�*>!ya��WE��]�7�C!�S)�����FF Xv�(�B��4�nf�_�R~t�y�̦�8����"�����ѓ�ԓ�A)r�u��V1^��J�
�x�~�?�@�ɕ2��KϚU��{�Η�2BF����&�����t��A}���o�X!�.�T38ϖ��0}�X��OH�� ��B�Z�	��?<z�Qj ��Q�7�s��%ȥ�R��(_3���4�ԫx�\�4O�[����4���ꍐ�.����v��ɑ����@bP��/�7���̛�os�4V'�ߤ�L�P�&E�,A��t�M�� �c�4'�^G'�4�.I�HeP������Mt�C�S�)�*s7�Xo�wY��pK�U�F(*d)@+���@�� ܖ�j;
֔�
9E�hM��L[��>>S�#��K���9-��l��Y��!����<%����iS;f��y�5
sq�L�[��8�.7'��Rk�R⭐	���ܢӳ/��a�ը�	WȄ�>K�j��3�$8���%%ݭ�_2�U�k"��J/*=�"���E�.�����M����l#<��x�zF*s�j52�uW��y)"������KzvS�O�!^�cM���`����-��U���ކھ�'b��p�>�0A��VQpE��f���	�J(��o"�qVB(�]3>]!�^5�u=gcg4g٬�Y)��Ӫ�![]Ֆ�*+۞my&{����+���J��}��\�-�m�8�w+dҫ����5���&��7[v�fQ��P�E9۴|=��Yg����S�
�0���������؞
J�/m�B��Ua��PÃf�â˻:������˯:�'��V�L>6n;���ݣ��O�d�����4��/B��mh�(��eS �:Ք-�s�,`#�f�Vv�\����F1�oY�9,粴�)��E�"d�:�����o���3��bb�b�I�d��ihȖ�#߄Fo�,�M�q��(��9מK��c�*3բ�r&�k�2�Z1��~�x�n�A� ��b#}[������Ʃ�D��zL�%i�D��vW�(��B��b6�X�E}F���./�+�]UO�Z���&x�!������:��    #���_L�����k�0Q��1�
9���·��z�-��Va����6�	BI��3��U��KO��ě :��H����wm�n�O��&M6Ō�!'���L�CwsJa�I�U+Nj[4E�y:��$���~J?��H���8�h�4'�֑�F��k����ϣ�H˓�!�Şz����R��a��!8K�S�bk+jr�8��cSi,���P4Q!'�9��O׿�Js�iG%��؎b�'�q���T5�܆A1� �㔥��)3��C�ıĴ�C%�������][炻�>����k-�Y��EGah���L���r�:����nY����ǵ������kG谆���rT�H�J�:�s*�RB�	�mr �@�*9��W�����׻��ho>ߘr�U��Z�ԑS*-HU�9is�<��U�e\��*�8[��F��+s1S(䭐�h8̵��ʤ�l��ƨ���sT�֞*G��V�ۦ΢c���R�Z��3e��}�@�R�b�o�4������B�۬?�C�U� x�r�k�jqݾ��<a�+����7�u���BKz�e���/���wOu;M�I
�U��6b��@N&
=M�G� mFZ$?f�\++u�9�(������<��:���#1)�L��q0��'�����e��aɎi�d�Jv��3��ӻ�۫��?>�%=��R	�f��ԉI!�g���j�����-�B�1u�O+ꋫ��l%Ok��ˁ6JtGi��Jf��v�'"?���S)X-���&ު�nB#6�
�B&\4H�f���w�o?wR�A1�|6������ͣ���
�z�����0ǻ/ ��)��t�,$M����8�7+�W�J�RA�5��b��r��^�2ٖڒK���w�;;�Lr�&X�'�q��!!o�h����yz���lޑ��L��JR`x:�#r&9h5L}�%��U�D�=�%��j���y����D��ML,i�)D��rEe���O�OVA���셩�qr �Q���񤨯��iY�Ϸ�OW�ޒ�?���ͭh�����P�0@�!KIñ�H�fCO_��6�3<��q[ڶ�}��p6@ �8/NE��{:�k/����m1�j Q�[!*8%������?��1�3C����@&��(���c����?^����x�#�s�.{�( �F�U�{�᣽y�q�N���?$a���@,$)�k2�OW���O��m�O�9���dV�Q����?O��n�������'�=Y���iw#�����'BK"k�r�p�Jb�5�bL!���n kI
�J��1�~��牓�Ԩ�7���f"���a嫻�:Xcd�T�N5%����t����������� ��D2�B�)��-ӅS6���{H����u${��9a*t��+8:d��� ���,ϟ���Xf'��E�q���������S�)d1�X�KA@0AlLD/��d��p��q�ʠ�O0QǱ����� �@{��w�|8��}1A5���:��I�ߵ��	�8� k@My�9d���9QxD5䪄#d�,�Y������t���Q�	�y�h��h�e-���O��L ٝ&����5�a�t@�R��+��9?ͤ���u�k�P�TK���Yy89�E��ڑC5�B���B#�e$}�=v�TF�T4G!��"$�
�C�X�0�?ݽ��"Z��>��'����ڈ]��G"�?D����D�3�p_k7�,���0���1@^�B6@��qC��}*�ޞ昘��U� &ZN.u�%K#E�d{�!�b��ٍ�[x�@&]F"��Q�p/I���Y�}�J�f��U�h��d;�tϴ�.U.�"��y�B&]�*ب�)Y��Y؈��/�'�2���LX�y�6�"��*��L��)��XhkTްЦ7��y{m�s�xY?D|���s�����N螚�����
�^ϣ��"�兔�L����R�z��Z�j�Ag��1��Nk{/0���k]z�B�i��<�����>�d����q���<��m�|�,������,�6��5>q
�|Q��P������]#�QWr���=1���F��������Ą��h$���s{�FTDp�%I0�F-p�b#B������K�gN��zx����W2��
ﴜ F�K ?���]�Z�|Zq�}�m.��g&�D>w�Puh�K��|��s!�j���s3J�"��k�� �^��osg[&Q(���GU�j����3�co,�{��[&N�+�����7�X�.'A\c�.S�I�r+J�5�3Y�$�p��J$����| V�����
9I�YU����Ҵr��t^&A\%�K�kO���?����ϸl�����+���x���Mʵ��+�g��h,����%Rs8d�KB����h������C?��r�e��򨐓�/f��R�������KG�I���OY�sP�6Q��WnR��s����o�8=x�5Pb)Z� ��6KdF��ݥsU��>�N�� 4v��)t�{Q�m������T2X_�CN�u�����%�PjcY�%b�K������i.$�c0��6�%���"��h0���D��#ǔc����,hؔ��>��z�lZkF8��Q�c�I�.kY��".^��4 @��B�D���)����VӁ&��3��l��B�y2�R��w���D�;��}OFo��� '����YէPjAQ��cq�If|����)�HDӛ����9���L��� �:S(�H�}�U'+"��0t�B���q� ��"$�n��共�J$2\�x����w$xn��I"H̺���̠ Py�f�G8�'S�t.<�PS=��"�+�Sw���e�BN JM�W\	K
^يd��j����U�\z9��;h.ݞ�$�B\!�.:w���6�칌X�qlTu��A�4!g�~�y�V��>B�p���Bi5{w��KѦ�g��$�מ*����ij�B��Eh�uc����:�'`$�  S�P�}$�<���
��lvB*=
�CuQ�gxi;�g]�ӷ��A$4�~	~��$b��'cѠk���.��kd�!멈K)U#�m;��~���*l;.��#�3)1ˣX���.��w�x��tAF�R�R�?_�yzG�4��l�r�J^�$k�4��z%��2?������x��!�\�x
�H��PL�D%�=�bӟ��² ���!g�p�M�D#*��,�v�-����������={����2�X/t�Jh�����)�/c����
!�K��wq!�B��B���*��׻��<>�1>������ǻ���'{������)�4f?IA�u�3���[�38u��CH�s�۲"�ȩ�ų�B��=��3f$�&��J���@�pMΝ�A�ϑ\R�fSȧvx��Ixj=�yg()<Q�n�5�Ika.�B�[ҡ�k�̵��'O]�N�΃C��Y�����Y�â��$ ,����k�����|{J"��y⥷z�!�.�/�t��1�eS�B���q4�a:Ό��>�@�cR�V�0xN��2��8r�!ȍK�oo��q������'�W{-Q��ι�S��]� ��O�v��K�I�6�����@�E���m��x$f�t�/�_>�>#�֒U<5�"!���Z5�UU�6ѣ�.ZO䫗�d���p%���k�<�-r�6��X-����,H�
��AlD��}ZSE���,��=��&��Ϗ��[�VA�
Tl�����X.^Zc�~�\e�y��YdU���yήDI�j@�C޲���c�e�w�>� /'f�����*d�|%��������p��8��?��П�0-fL�?�c)h9Z$QԵ�v����bc�ͼkf��e���H������=%�qJ�K�/C��)M _�~�vJNr,@��D^�qc�XGh\jB�H�J��)�����_YT*��ID5 }�B�$�s9�,v��!��
.1��d~�|�#6�%���M$DK�@Q9`g�I��5��f�c���#�-2�6r����Jc"*�'V�5�e%^�����_n?gXl�X�\$ݹ�>#��WO�>ͥ���    ���5ӔHҼ@
45�r
Qw"Q_��j��j������#��kJ���/fu�4ξ|'s��{2Te�J�
y_Et=����#��ow��������+�,�d�lz�'��z��Y�^� J]�C(��r׆C������s�?[�}Q�t[qt�!_"j�{MmTy���r�⵴P�f{I,
���QtF�f'�=�K��5F�:��BN ��ܜ�~��I��9G�W~vb��M�4�d)��j�%�Pq*�<'~�+�HD�����71^0���QUL-T(��(�����,'wW_�ɑ�v>�)��e���z�RcD���v�o��p�t����ǻ���A��d@Vؼ9��M����?lq��/K�r��� ��	b��I�l7�W|�:/�J"�
A���ʝ�!�J,���qgNKI��$�t(r���dE�Sc��k�Nr�$�pF1�[?v����Jh��颤�X��s{���[#�m
9�(��u��-���O�01�������T?�|En>&VJ����_�����%�2}��f�'��R���"���ϒ^,Ʈz��j=B� �?:���/!d49��b9�^ׂ�%���oϼ#�W�	*��'��l$�I*d#��~N�Tzl�w<V��k��aYBD�[(�t�%
i��x���#,m�1�ߨ3t����Er�]���z+��L��?�{\-�Yy�_^�{l&d5�D�-{���oQ�	E��̷TY�/�Yjb�!v����&P�:����L��嘫��e#�G��(Ȗ�<ı��*$�#ji����_�D"�9+�8�ZI�׺&���2�`�����7��sV�qi�h�:�����>�9*�$�6�է��;��q��
��s*g�7]|�&�sE��D��y5ݐ�6�V�g
���dV��쭔�P����Z?"qw�-���k�`���VY�a�E~]J&�7��m����?�>�7TõR{,_�@iL���R�E�2L,Q�����NL�	�ͨ�Ps�΄� �&`�W�Jͨ�ߒ,�Uj�Qc[ބ�P"��i-�io��Ϣ&�:ԒtP"�;1�b1�p����_M3�����.B�ƺH��_�R7f҄tԎ�l�ά��
��k�]��6�[�+	P�mM*�����>�����o��$�ayI��3��gV��(FEVV|qBd
����b��j_��~m�i\K�	=�����D�Թ��&�C�ݦ�H��m��UFѵBV��e���5���$���x%���J<B�K�]�`�.�|s,��	�Ý�%SXT8IW(IןL�_�&�I���'ꑜ@��Dq�o��I�M�~��-H���O!l�����<g=x��Y<��ew!o�D�Ռ��k�QH"�,Q�9$�c�|T//o�[�9�S֔p�:���@�	��&�d�w�Q2�,.���D,��U#�8D�#D���g��z1',tD~v,�XF(�ȇ�+a�YM��%Y�ѓ#�^Y��D#'9M�p�,vq�sHg'�
ٴ��}��L�����l�|<���W��\~�\�h�XjJy�A��W�I��l:�����R3_��p2{X�%�*7�W@I%D�Ղ�w#/��<}y����������cT_a�1q`���9��H2�|�%�)�]��In�!w�TUKL���/��c���(������UNB�<��x
��o �ơ2]�IT�J7�-l&��>�÷#aC���A6����s�("�WN�qU�r����S�K������^��!f+���<��j�����6��o���>����K��PYo�R>�u��z�&ENLs���ѤńӤ���q�Gk-M����dm����0K�U���ӽ�^T+�Z*M��tQ��f��fܡ�g%���`�ɗ�;+���>_�/��I�Yz�!g�n�O�I�g7[�m;k{�L�T�(w}QbX�+��ʸ;6z�C�
Y���׆�a��%�,��#����zI���''�s��7�rh��}�.wcͰ�����>G(u��w�cyt)�qb��u���6�J_fI��z�&O��B�Ho�*��?���E�v;#�E�j�Z���Ά�f�`{C���Y��M��'�������'y ��u��h�,�#�b,~�RO c�;X�-B��%	�(� �$j/����k�Y�w�/H�Q@��V�V7���I�pq�|Xԇ�@'��`U�u�K~��uV��p&��p^�t�"ȇ�*ks��J{fOY��TI�d�J1�\z]<j��8�,�	�7?t-���74!��,%�f!¤W����a�@J�%H_�g��������vNv�-pA�3�Iu ��t@N �9zn2ȟH���N�$Ё�[S��d.�|����vP�ل:�r��@��1�#�A��6��e��
9�N����ȩ��l��"�	�C��q�����~���	��dۢI](K���(b���
�!����+Ꝇ�q
%��g�d���/�_X,�~���6�}췵G�Z,|
��sKL���{���}�,|��c���?<S(KQ햆7Ś�_�_|���G9�3���V�#�Sȕ$"�ԩy�da������)�z�L�4��On�Z�]¼C�ݑ0����k��S�\Md��6�eM[`o�XP��\&�2�����^��[�y���Up(�qq�D%����3?kZ>�����Sa�I9�;���X��W�i�VYv�)�]��x1�7���.����r��3�|�$�A�bTf�"�?�aS(�S�_�'5f��Ӽ��aO�ڋ����)�M���bJ���E�=�l>�M~����r�����#�����ح�l���yE������Ā�fCZ%X���A!kE�)�3r'�h�3$K(�A��]r��B!�Џ�a�����EX
9�h���*��US��24̮꛺�5ª�X+f��I�BB�
Ӡ�����/�۾V�zt�9�hgo.!��6���M�MK�I�I��i͡q4� O�ƭ^k;�H{~�R@�6�C����!�uRHiQ�H�
9���%����$�>+�p���ϐ�Q2�j�S���ΒdXԿ�F��Q�����;ܧ\d�8\!}�K��*��\l����3�L��.swƽk�>�Q!���s��+$��/C�}=�6*�H�3��%阏*\���P"��M���OQ]d�a�c�
s�J4��7��d���6Ixu/����W�?5'[lAĜ����_�!ʷ���7k�L��H���T%Q�c	�a�F��ֈ�K���OI��[���^k
A >�E˧F�q
'9\�,��(0Y�F(�a���y�v�K�XXQE�a�*d�Яn0^�gJ&�R��c]&Z�HF�l�#d�1�H2PDNaS�;��_��RD�˞_�D"��M�?�l9���⣡�6�'=\�����2yY���(�X���ݖS���p�q(,�����$^/>A,����
��G*2�8t~�?���r��m.$���sTf*lvcƦ��l��Jl�A�m������+i�϶lu+xõC�$��rU���`��[�-Y�����(�CT^F&2��r,���+�v�����fD����l\��ay���)��3�B���6�|��_�S�5���B���&F�8 n��ʦ>�X�(�T���Б��Wv��4���w�
�xT��I�P�؁����>VSR�q���u��
9AU�Jǹ�L���Kg��=m:3���j:��]xL$��/,F`s�p��[�J�/�@���c�� �Q�q�}�����B����<A|��+A�S�1�F*�H�#k�ӥ�Y���Wk��B6�e�(Ǚ��x���YX9^Ш�<B.]�����3�2%��S���r\��'$1Y1aQ�h�)�$�����E���Y	[�Ht��vӀ�(G̈���*��^)nO��j^B]!o�~�EW������T+��B���/W�9Va�<�멅
y3D��	���e�zbۭ�2�!'��l2i���2�BN m�{gR �
^��c1=d�E����'I����g�8��/
�+��8.�35�'�����;��,�خoj�W�"#�    ���l�A!o�(��C���7i8��'��@;�ckh64[�:�q☚@�����it"I�H^�]&Q(��F_�o�t���=5��ݷ���D���P��#����OuLyÒ[��������A���/�2�@NA*�R�B�ifI}����T�a���P&pOa=���Dl�����٨v���O	K�9B�D[,����fD3��ؑ���2��B�K��_f�$_7=]O4ц�⮛@��ۇ!n�'g��",��P���[!�s��%ؒ����8��6"N z-�tƛ��`���DR�N�D�P�&�릆b�?�z�$�X�jv�HT��(�HD5�_*bn�D�x�ZB�v�Pb��m��������?~;ݽ��<�� �d��Z'�/�D#j��aފ�~��Z`���xl0da�c��*]�Xq�򲿽lMO�܅xM�I�>�(�HD����ŷ`Ƕ�=�mK ��G(��O.��Z��Ex���V����D��%���c�����S(5C��V����fcJ�4���5R��y+D�/Is�S]�8*X>����Vԉצ�����A����YK��x�Zo1(��7e 㑻w�﫳2��A�р�)���@���h��rټ��ei�^�����5�˛�Cn�l���B�s��-[ޘ�a�,
�K#�����H�����Ǉ��b�!i�R-[�)� �9����L9O���װ��y�����,��;,ņe�N�DS�~�}�Hb:c+$���Tof��H\X;4�#�Q(�SSU��ER3�5�=(3�B�d��r��P6�N����*~�e-���t�C�?�I2��UY�BVW}��w9�]���]i����ju>���[U�/'IV$�A�6�"RN�C�DԾQ�3j��=3�1AE����/�wF�~۟�����֊����Q '�������fx�tqd~��F"���>�_���l�����e�
����+�b`:�̄,�V"�gM��@�=�J�������4%6�a�O��� ��Z�5�J$��J"����e%������	aa���0{ф�	
%���K�O�c���l�J�"���l_��b�5�!)�r��C�-�Ģ�}9"0��	��qC:yȖ/�����R!w>�6W�]7$p
��3G��B��ȓPho�������E!_�%ꭖ�,�thI�eG{l5��U�	���V�B����Dw�r�mU܌�D�BB��^R�GC½��3�9��S�Z��ɭ����J$�A�K6uȇ����^��j^���Ppim��`�ג�eO	_��?Q(���R;t)�4u�U��ֱ%`V&�9�h��u��V�<�����+�:J��q�/<+}�vp��Ð���(�XD��pp��Y)_O)�ԏ*�/fU&�Z�:3TS��V�Xд���<C��Ȣu
9����
EH��[˾��@�e�2�Q��:A��6R�"
�R%������7Dֲ&���%O޷���#d���7���>���Q$Yiuk��S2�'e6�>�w�v���@2���%>�>�Ę��7B�ݤX�x~w1f� �%D�C9���4�{�ë[��AT�C��M��X୴�u�Š��rQ�p����07U|?I��;/.��̭�H�[S?�ܑ�I��j���WG"i ;RO-�(�&K"���Յ:�|0$�>�N�Ӈ��q 8K�j���D��u�%�f�H�ɹpސ�(
U*���G���R�Y��x����X)3q�\�|Aȷ��������~�A�}[��r��bLS�2J	0jz!'���}jK���F�����섯��ƩaS�i& �ly�N�i��i��=��%g���}U��-@��� �.=�;u%٤�E�`ل�bL��#�K��ixȷ]y��r��W$ώ��,1F����F)����@�@jW.*Z�B����0BN ����I��"�.�D�J��r��EfA��c����+�D���\tHͰ:JV�jϡP"eh�qF!
��CSuC<2��X�Jө~[-w&�=�[n�r���@�	Ӭ��FdA�X�{^��/tz��b���b8}y�t[��0� [�����d9A��&iX|����^�-���#k?�E����3CS(�Vў�hq�
I4g�NZ�k�$���-��B+�8_RC���S(�|Ǵ�����O_����y|x����ӧr�@n�{�;H�(n�q�B�aE��'z�Y*�VDq^�'��bO�԰���,af���TE1X��n6�2��PjGQ��aIgB��!���Yc
�vȇԘ:)��HB��S���%\'�E~+d1�ɖ�Z#��o�!��C�#UX�3�sm�U�+X�\�zCA������@�!	h�c�	k�{�Ͷ��z��&��o�C���<�σ����w�j#�ⶕ���Y�c��B�%��b:��[�l�!�(d��9���X���O�{�<;�壮��~���#�Վddk #%�t�0����<%X�P%�|<dZ��I����N�x��A�;�8�Sn4��-x��{�rݎ@���*R�B@b}�x
�D��1'�"/��bϱ�X����B�Dt����X/X��fM!맸���5�B�G�0k9��k�R(�2�w9jl��G��5�jP��lzr�!'��&!��Ð�`D��l!g���H��5#II�a,q)��)�kFx�'u�XT���KBEU��&h#�`pF�$�c>��7:��J o�<���`$g�װ�G_)�tB[�*
E6R���w�)d��@1~��%i.����xy��5�b
�|���Lv:c��^־)��Ua$g�-�ΘT� ���np�2.�i�wr�����TM��D�|�#4��G�atABK$ZFT6�(�HfZ�{}Q���G�@Ϩ#�}%;���.ųF+���뵪\�P�)D��jơך-��/���Ġ�+u���>\��I��R�>�'�r�u��Lh��0R,~��@���!&>���AN��6�7~��Vk�aU�BN :}(��3Kk�_M%���6B>
z�&,�����z����81(���A ��8�w��$Ǟ��{f�`W�)����Ԛ��\#�x��=��B�����^���J��2$R���}#�����T����v�Xf@t����t��xf���殥:��$[_�´m��H���a|�醕�+������pI���>�LV |:3�t��ta]��KFw�I6mlE]��9B����߱�$9���J�/=���mD�(C<�����%>`�e�{��0�R�rDά���К��L���խ=t�T��0S,�pI�!#���M����ѫ�Z�5�S8���G(��(𷓰�NP	!�P"=�v��ȐI�����(��l��n�������!�V��#���)
C��!���5�m���X�|ʕ�� �bD�3��&�4�jb0�pl;2�G��A/���e4	v�<OP��FR�eA�x�n��^f{��Vꂨ$1(䃠m|1�$��I�c�)�������34�=�ύFP�g�Z�4#��Z�w�DH��ܷ���J�PUZ+[���R"-�.�����َ&Ǒ������j���˞��4$Z=3�A�$�Yd-BK����1����H����N�b����AN���%I�tg��`+r�,�}����=�H��*��3�.�h�`��s$�A�pqbO��h�5g[w`c�Y��፹q��PI�󙵁E#20qk3��Aߠ����9��>��M�(���^�i�}���RK��B��-���1�.\f�4nH�-Jo�vҰ���h��[�ixG_��`�kਸ਼a?�ذIcҙ��!�E+6{�s����2��N=�&�!1؀u�v�?ؓA���΀ۋ�u��$������	�Q�=�Y`�-pH����w��t4��Y_(��]��3D�].Z�}W��ث�4��9�7�$�ؖ���\28������Ⱬ���sU����UP�@�{���'�P��7즰E�S��|~��!��lJTP ��:�x	�96���"+�/���    y��;�w��P6�F�^�����-�m����������uCj�i�5O��+�u�#/�qH��4$���g�wߓA��]��jI�qcI�ӥ�%�Ǧ�u��Ǆ�B�G�PqH�Q���²�-
g>4���Ůss,!�>�w.���-�'�L?yAm�.���x	%��w���(���x�&�'*̼=w��%�)��m{��/?�{���0?L�v���
Jӟ�����[5�Cޟ0l���� �t�1kv:k�������u�;�!����6�ȵ��!8ݐ��%3�Ͱ�6V���[~i�g������,���r��`Hbݠ)/8�جI�RmϵD�'�����t�x*��3�(����N彎y0��Ẓ��(wC"��ӌ�s�Q����I��`f��!)��9�U>��E�!=��C��P���ƨ���*�BxL��=
�'̐L�wK�����h����Hr8���"�\vz6��g�p���JkS}�D`��(�7�[��,����u�K�����z ����g�[<mm�!x#�zM���������z��e���3$�Ի�ԛ�h�Wr�tx���j
��l�;�'!�t͏� 1]I��J�]�Z������?���/���X�xPbȯ�3����2��O�)�F�� ���I������t�o����c�D`�Kqr橾�ĆC�v���\�n�e/���z�?���û����톀/���ؼ��`
~M��jFT�����LaHΧ�pOq�~��.r|)�`��9CI�Z��6BR�$�$o�-e���S��ތ��w��ׯ��<t�Hx���l%��z�֭x�M��Mױ������|���込.KK5C��7����OC4m�)����E>zJY�#����G� eCZ�!���|~�����'.��ښ��Z&�2Ht��{�--!M/;d��p$����>"�1��n�X@�9�6��6^"xû�7��d����{b��d�x�c|�N���pe'�����cID���&gn����`p(L�_V
����{{��++��?mv��n����V���o�x@���9��@�k���{�.E�K��o5d��̶�IP�1k||���:���5X��e׌pHM��ez�ͶI����ߞ�����'s�� n�U]��C�1}_Z��}����-D�>��g�� �/g�C�_ޥ��p[�ɜ�7c�����a2s+f�'����%GS��c_�����АA�>w�+3�- �7��%9}�DX�y[�b���foE��fˊBf�xg0��A�Aj�i�UYY�J�B�_�q��ϐ6,�.� �L9���LE�|,�Ө)�����P�7�1�?춵AWθ�kI%kiHca��n�i5]����G<��^�|0���m`//�'�|��v<��O�r���*�+�){�\{���]�VK��� q�C����#ndU8@b3��l�hJ>8E��x��>n�XH�M��V�oY�,}Q���������P���*7��7�7�gQ?�&�CIbs�̕�9`hI&6&�;��<�xw�P���/����ڲd�5���fZ�R�����\�����_�@�u�E�N@�L~�CZZ��c�t1���-�y^�<e�ԃ�!����D������|��K�&���9v"�gHC�Y{"������#�m&�O�	Q#Lۯ3������_�P�����P���5+�T�s�y��sl�Cj�M�"h��鎰�E�A5��> ����5!	xB�}��>�*$S�"�EwR�d�R�!ӆc9$�m��Z��?����σ���`�a�z�#�n�	��{jX'�E�Ұc�E*T��	
s:��g�d�x�����<Cb���&w	��'7J����+\�S
Wf�W��h���tze`?�uH<I�:��I��L��)H/݅��Ɔw��5b��h���Ꮏ=����Y�-!IᐚaJ�l���I
���XZv���VXg��C�INq�
K"�o}-'�ݦ<C�b�S��>������Qn��_+�m��x[?�Y��<��lԮ�UѾ���%����nh�Ά���8~(�"��!���i��YY��'Nd�1��n���P�e�-y���S(/G&�H��"&H-15�L$}28u�l`�W�q2��*��ΐxLۭ��Vn��q�8�`�%�����bvH����ǇCZ~�������E~�$�t�:���5G�\q�7��l�E��.hx
�<�hl����$��5f���E���Q֍�3��2��������*^� �v�$q(	T��r�c���{g�NI�^&�Cbh�t*��p%Ee91���\8$���e���PdV�m}�
R]����JC-:��td.A�����oH3���v^ff��o���H;�
�V8�Vx;��S_Po|��j�CيV��+DI���fyZ@q[�5_���f�5D���ι�:-���:����DJL�m�M�wi�����b�az��������������F[���8�ΐ�͖�A��L�w/����Y1�y����=SgH�Ȝ�x
)_�ӑH1ʚ����9�Cj�i���e�ݽn�,bG���d�l4�֌��M��!J�,^H=RleG�NW;.l�(�񬁹��T��C�,��ݐ��D��VF�(�n�_�8���l�owY�N���ga��C�%��~�l����"��my��dL,����01�T���ړ��Z������ͨ��,S�d+��
��f���yƭ�u*H����?R}萦o�@��qb<0
�ݑ���ۖ�ڱ��� 뾊+ٯ�	+��Ʊ�4�u�f�m�&?��[������ԊM���%	B$�d�>�F�
�O�g�j�����Q����.!1l��7��8��y#'�x�.C�ö���K��#��a���^g���`�x�$���� xs�.�$̐&T��y3��O�"�T�c� G�e���+v���du7ؚ�� �fCوm5�F�����BY�H[җ�%�v�r���8s�$t��ʺ�j�}�?i�(ϳ��+bi�D)'Ƀp_�%��enQg�4%H��)�XG��VxC���mR"-3�nHu�_Bb0�~6Ia��߅��e�XB"�y��pv�6A��*�ʁ��= g��z�/ռ�`2߀hE��i:=8ЬL�,7e�-^�D��|��=�]�JzI�}����m�y�L�/l?�#;����XbTW�%�j���Da�}U�FI�R��w�j��>��L�dɯ�&9�������G$;w/CCI�?�r2�(Nǰ`����W��Wd-�!zE
G��k�����U� &�;�l{�/!��z�I�W�l	GKNR����i5�KU|ǕC������������4
��:s{����KJ$��1��*����L�W��;s�F�CLD��C���x�iH��MPgZ7Жx����K�0؁V��Z
�xk��0(�O�M'Ȗd��0Cb�o�����G�A�u��n�;H��#��y������s�+���vHs�'�wɳ(�ba�!z��C��^B"1ݮ��p����ys�+��B�5����R{������7�~�z����-ѓ	�xg\~ʨ���c������㧧/?��M)���L�d���`�4�V��sW����e���Y�!���ᤒ$m�vy/,��35u-\�cB�!#{U�z{��(�׀$�~��:=��3��r5���_fH���؊�lq��6�HIܘ2���e?�*=4U��A�3.!1���GA���>�Y���T���xYOFE�P����jI]���&�5��*]m��7$���k[���ûyW�ɛ�(�����}~r��)|?�N���t�11<n?�����"�<�Fś��B7E�!њ����f���)}C��`(����k.P)���ZS�Y�
3$ke��qj8UG�T��Re�}pfH�����~����0m�XG��^SfH��ʮta�ڤ`л'�&τHA��m��)o���)qb틑�q������ķ�#~�%:��!#���@h����;�h�\��o_W    qXP���� ���[/�z6��2h2Q�ÿR���jOq6��"���i������u��<�Ui���D�s���� )�2>cp4gz�,��DɒR�$�żp|���g���0k�ńH~+u�ܡ���Xg�1���n3$�V�f����F���3���گ�H��7��͕�لG�)[X���>,lb��]r�"e�A�C�|��e��?���E�E�[�w�N%����Ԗ��r)��LxBat�Uc��Si/#p�ķ*>�����C���H$��W�\ɰ�-<�G�c�J[G��ѴB���:�b��/
S��)���2�h#�a6��N�����3$���������R28$S�3�.P��NA5��+ޠ��ΐ8L�������r#`e�R*l��8��;H�	O�U$\�F�!����C���lg�mJE�>���0v5<�������!�/rp�l���He����n�3"
�{�{��,a�`O��L��ҕ3����?iϊӥ*���	���ę� (�2' +�鞷���4/�0�!1��_c�]~���H��c��9$��9S�,�zZ�0��Is�V4$��׏96#�˭S�e�H�)�*�����}G3����#o�JHY���4C"3E_\\���������zJ_ΐHL˛�
I<������w7���#�8;���s-N&��ds��n��]����ے0�?�(fFx�iqR8$
���sar��	�r8�������Żb��4�m�ƳO<^Ȃϫ�8,�1�N�>�C�(/3�ڪ�^�zȤ�Sc���ѯ3U~b���m��������1���ǒg-n��?#�2���ڞR*
I�I˷�$7D+��wsچ�ԔM7d��E}C"1�_���BMJ�R�D�4W��vH��gz7(���Sy�aE�F��M��pH6��r���r��e�����C��X%�X�$b�l�2L�j1A"iM�.��[���păo���z<�HZۛ�ܣmHa��������_@A`�fL���t�&�9f���ŒX��Co��pٚ0$�M�}Bۏ$��Zͳ\�D�"N��P�]=8$���Q����yX20���렂��Q=<pq��̐��CE�<[��r�F��d�"��֊�_�
� j����{$�,������ ��'���?nq,�#�R�C7a��c����|!��U	�[lQ�ֺ-3$S�<:�����ՃW:׎-�hC����s���x����_ȹ�e���ByR�e�����s�j���׸҅7Np��>if(a��� S��r�ݒR�*���ݤ�k���<�$.��xڊ-!e�^r��?Ƈ�D`*~�?��P�D/c�v�Kv�Da�mm8���@��������s��Q������}�X=?XE�H���ҖPN+��g_M7f*~��K�7�Ƙ����l��C��S������:�D`����O�nl�@���h6�$�p�C��ZYGrI�ZQ��א
�l��]>��C�С��Xg^XBo��7t����e�ޤa;­����;HD��E�pn\(1���`o�H���/���Mr^�l��wH
a�=�}xm���<Xr���5�V��_y?��\�$x"�n�5!�0��g},=�P?V^(�+�p��R�u�e�W\�88�Hp��c�����<�5�F`1�u:J�z��y�qV����G&�(�_ٟ�)��=Cj�M�bx椳ݘ�dp�y[iB�^ܡjDk�'���Z�Sk�&��2������!Q�t��¤{��
_�{��z��+U�������v�]br�Jk���	�s;H$=C��*4�x'���AC"he_EN��!��s��K2�[���ЌN���3
�|�F`������|9ǗޒB05�/휾���Z�B���>3_��UV,<�ls<��;�+�\2�I���~��嶋ߡ 1g��c<K�2(�fMB��;$�mR�Y��ئt�8�a�	Q�4 ��8r`�Abؔ\���#c����Q�-ȑ_'�%t���~oťeqŹ��E<r��.!5d�n~qM�r~FF�� ���Q�v�%�-�4<~ү\'Ē���&��a	��n���p�_T�5)*h�fn&�G�SA"�T\ϗ�-����utR���9G��N����G2j[�5y	��r���R���$��;la��/!������_��;!��?��1k�����Q/�P��q
�Qw�p��6�SG��??U�Gc`#!��)[[7������жj���Od�y��aQ�H�KFVR��vl��H*v��2~4�	Q�t���-!5æ��"s_��E��vZ]B���E(χ��Xw%�LH�#��S�sH�0�_'���ϣ��E�%"x|7P�4��0�ߕC��--�苊ǳ� ���M�0������pFD��z����n�͐zΖ�=W��w)h�&�u�:8��u��P��l���E��aw)g�%$�!�$,AqO~86Zu�C�r����U�]ʞ쵉�&�p�x ���_%��Å�fr}kJ\Ixȉ��v̐��>a�q�O��4w�e�}f	���}���=H!2R�#��v͟��!�vӍ�[����T}���ˈ�������%G�3�cu(��J������8�c��E;���$ߔ��!O�!�1m�%�������N��"H�^�#oQ,���3���G�M�^�����d��S���P�؊��_�����Q�3��ޑ`�<#��:�}�ri=I�∺�:~��A���î|�]Y�[��(���c���w3���)A���2��}'�C�
�y+��:?t��֯.�D/��t��=���p����Ϳv�'G���5E �w����mY�叵������?U����a��O��*�CvP��iW��ދa��d���ޢ�P��������@r(8�����6���M��'9��K�L�JG/!5�T�z����͗;�?��uc�Ab�V^��$�Ҩ��>-E�(l�]=�Q���_T���z���}�K��4[��$�cr����T}ec>I7)�q�w�	�xS�u�Ƹ�V��V����S���<�k����ށ+�!�������WWDEm�H��x:�񝪂 5�U�J�mE����>�p�c�­�NQ((�1.>������X��G�c��a@�r��d���8�ǫ�1���~n�CjGO�5���_2�:U��XO���h�ޓl���b0�`��p���P2�f{Qo�]p�Z��.԰�ׁ%�^j�n�L�e�F�'\��8���w�5�ߐey�$|�T*�!Q�|��0���#�~"~ś1C9�N������r��??�����{ߵd���$��lVK(�v����x<�G$���a6�7���Q~q�66[���xT��:2�p�)@�8�cC��	�KWa(!g�{3��.; xC�u�c������ͽ�8t�;xi�+�8Lϻ�<�|��*�|T��o��<��~�q�G"E ��z���:ϐ�WY��e��� ���ʉeJ�{R�eqڧR[B�1��~��ľ���Y_����^x����8[E�Z�Ƶ��!��i��17��?aQ( G1-�C��m�̱(�:`�MLHJ6�!�Wy��^��o�b�&z�����P��*Ug1����d��p���Pt�U�����f|g:+r&0C������լ���Ϸ7$����<�}4fH,��K�埲�a�j����7/9d̦8�ʱ0U���OrIB���ff(IL�-�5��N�s.�t��c��!u�麙G�(5i����_����D`Jn�k�4p����I�㘍���+S�j��o�i�jC�]n�J$�Cъr��o���R�r𥏼1x���������6��oI�O�0Ӯ��!�v��P�}+	v%~�!Q���M�K�t�c���S��M�z�Dc�i�VN�؆�4±o�b�iF�/qM����EJElF��/�$1�3ꍖ���w|�诿|����^���"呦�~��3�t��;+��B    ��Yۣ�����F�n����P��.z*���AE"*,�^�����~l8t_�or������:��I�-(��m�]]/>J�rT���ֽo�3��j���yͺ����:��f��e3z���Ϸ��ͺ�p��?����n^���'ྚ��8��%S�e���Cن�|/��O/A�l9�Q{�zz�;����*��O�-����XPL��:�5��qZ�RI��?a3�ʆ��{=�V�Q�R5�X��s��b�%I��?J�Y<�ٙ�HIy��w�����8��S�S�w���P��y�y ���C2�q)Y�Uܯb����Xl!���]x���Y�^��$��i��ۚ9-'��;i�"c��P�����^��6<$E^Z��kݑ�%��e'>x��.L\]5�^�!u�){G���/�CP�F"u�+@r8$S�]���7%�f��&��KF��ʞ�9~�ezBp�b��R;L՛bgp�iI�(�I��;�
�o�:{�#`
�~��޼z�I9C�(���.�KeY����~��e�RQ��j�+��uPR���-[U���v�Rx�a=!������N��YiC�;\�9l7������w�(���fr�1�����Da�{�?W�M��0��q�8ʡ�t�X��A|����>��9�pe�p���/!5dS���v����3��o����!�Ґ:���	
�w�Z�
R�=��l*�Q>f�05<��q���QCv�%�v��ٞ��.`���^�k�JS@{��(��1��u��pi�����U����O�c��[.�ZLE�M�Ŷ��a��m\�I�ĳaK�Y����Z�=Pd��֧2�T���[n�KH�h-�Mf8ILN�e�T��%$��g����-��,�Ae���ʎ�}�INO�I�lk��D���ZXBI�;mw�˨e&���2n��p\8��"���,ic��bU�g�R�O���7���C���[a��m�o<%�Ic��ݪ#�"��(�-�M͏��Q�qt W�=/��.��e-��Z%I�K"q���R36��$�k���Q�%�#$
_О�H����JBպ�-!���iuvw.9*�1R���&�!�9#�B��3�#���@+WV*%�dJ�_OP�m����JDׁ:�ѴJk��_�#	⚇
s���C��E'�Y|Eǚ=K�_2ut�ڭ<%5$�M�Eq�8P
 �h�a|��&8�n*�&oë2�����z"���H�ߧ�-�������O��|�H��;�nJ�Co���@��Ƽ�m/��
%�k1C�U�rX���&���G��u?ΐZc+���0�RN�E�a�N��¦uQ�G��Q��P6:"��";6�!I7���r	7H�1�Ep�#d��,��K,s�Ѯd�_���+H~�Cє�$�?���6��R���d8��Sm8$ӝ+�	F�-��w]j	�����p����Z���L�x��5��V8t�*8L��y�O���F�C�|�L��|�;_�Ex�1`���݃��!��)���7�>~x��׏?���V�lPԨ����8��$:S�����L"+�d����-���0Ss����*���M6O�]e	�6lW��c
���K�C��sO�s�YI���M��$C���,���i[�y��G^�.��P-�)q@b0�:S�-Sp�)�ZB%�P҂�z�V�O̯��B�H�1� z�y�/�3�V�����[*R��hF݃2��wN���/�FbgBK�Yb�~ẍ́��:	I���U]�e�����F�t�NH%���v���+v�:̔���"�@���3CB �^1C� SpK�s���8T��_R��!���(W�Co�G�~")v�Da*n��p�E8���վ0AAQ�c�n�>���!7�p����i4ʌ|$Y�>��#_���Ћ;H��vK�)t��2�먳�)�8fH}e�^����p8�kBx)���V��ΐ�����=B�/��5�ᄏ'�z=�҉3��a���n�~�=����.OA�E�����8R[�/���'�69nf��R��4ܪ�\�o$��#��egә!Q��{��sJ.��~��}9$Ќ����ޜ=S
��H�G���A���'\g�MAt�3b�Ҕ�n�K�R3R��6��4c�����0힭)��[l6a��i�0��G����(IÁ�zf���9���X��~��}�����͝�~�5��GU�z�_Bٚ��s�Yc|s���y��V��#�?���&�禊c��8W�^,�$i��\0�I�<��e�[�P��O���d��1���8���4��Dd�R��.� ��L���Ϻ�^l��RC�'-���E7��?������֘��)�ݒo��[_o䅈�U�J.�eEYlr��!�M9�	3$
k�0��H7ǫ
7��qʹc���0�/#��jH��D1�/�,�JS��͟A $�Mx���x��TsvG$Oå�35�@�8�S�|V9��h	!-��4ۙr��&��=����b6f����&ʄ��t�z���u�rDH���j"�1-� (�3����M�pQ!�*���k	��?!-�ה��xi�^\���������l@���3%U�L�fH�]�����<��������}XN���*:����ր��/�m#K�ɧ�]�r��=�0u
����;�����,���B�[D�L_T�k��T�(N�9�QJ���^F��@�M��2Վ�(�Bl.?��ir�/x8T ����H�˖��� ���bA�U��		�r,c��!���&҇HH�����M���"�)ˣF�$&�p׽2��(�C����jH�m/�����m�zZ������O��J'6C	� EDg��[f(�l^���b3J�g�K*�X��P���_g���F���}��N�%��ݳ�5tH2���������,\��&�mRȂ�i-��H͐(�����;��S���)����T�7$
�~���.b��mU��Kқ�)r�Da�~����B��F~<���gHCml�)n�-({=1��%�$v��8�M�ȶh3w��%�xQ)"���>���?}��-�QIilEQ�WR��3$"�ԅ�e�Z2���F�(�?Ab0E����C�s�w�Ƕ���H���2K�Y3T'����.�In%I��E���f�nw	�C��(�S�!}��!uTϿ&xskXJr���]��[8$sU5?���lV)g�{����o��Ժ�M���)G		���l�C�0wU��|�9�C��I_�A�Փ����o�#��l���x��y����[W���ܢ �Su�W�Q�C/�s���ʸ�ԖV���:��r����k'@�D��ϫ[��yQ�͉$���9(E��U�`x g�����"�,W�	ʱ�����?wFIq��<L"m���`ΐ�a�^g�4b�������q��4�l��m��R�lx�-����N2�{��g�!��v�,�[��- ���b����y��}�_ɣ�p��ѩ�#[ʢ\��c^m?E=�3�K1��� ����	�ƘU�+\m�ծF	�m�U[�H�n�I��w_�`r<M=NR�]��8L���LeM���q�Fl fH�:�nI�rU��{����R���1qI�5CaZ`������2%A�����kV��3�V�zwŦ�����!a�eR��RJ��p�D`9|,.x�|y?pT��E�Pꃵq_4ͦ�PyE������Y����2�H}'c�rBz�.rH�2�$��л�}�ױ7�D��gR�Ó�{�q2W��P��c�ϟ-�3��qֈ7�H5�:�T%몧���K��^B��y�[��-�u����[I���?���Д3�s֭�co Tų��JS��M�|�K��6M&
Ҏ��	JS�]}��|�p�D��o���ے��#����	������a�G.,S)G�8.�QC'����!Q��^�%�ҥ�'dN:��PP��ݶ
����������͐�w�k���M��d�z:K(Ilg�� g��!��se�za�&�RW�x]w���S*    (���*r_@�
Su��_�U�X��;�9�}Cj���˜������U�^߽�gH\��sս�ΐ�[�����)�ɶs7�����F����B��W~�!��[Q���R���=�wo�����+��ސ����z�?oB�����e��b�%�Dč�4Wvc]@��{�Ipb�}?�j�C�r�"�9#�QmsH
a�+/1v�C��^�eL���3m�GR�w���_�M�u:
ț�*'x�wW�P6Ţ9���_��&薔���8�#�Cj����Ł��r�����ʦ�ܾ.Jq���W .	�v8�v�z7�Yb�j��?r+���KH��x8�l�D���Ɓ'Π�o�����6?��xJR\�yp�+D�i&��ls�!&'����P�J�m�9���~�	��n��z~����ⷽ����y���n�yM���8m5�T����WD�ů�b�`H,�S6�3��?Nq���Xw��bP,>Ǆ~|XBb�t\uj��bPӀ�r�d�.cBq8�=��辧Μ�J�f.^�/�g	����(�؏+Ƿ�T�'��dE&�h
�@���$��$3.v�H��>zN*(��~r�;���V,������i���)�2��L�Jl�wTr;�F��Ğ�U��<yS����9��Q�%�i{�I��`����,|��!>d�,��Y��np[�@�d�0�%$k�������w�����;�Ľ{�]6�Ȭ�B�Df1�lu���3���$�5t$�"��q�P��ƛCɅ�$��d1�<"�2�w3�`x
���OQb|Z���`o���%/h���l����@*:%)(�c6U=�Ut	�5��;��ޞ���BH��z"+�Ԍ�E��t���%��DP�o������K(ZQ�!���qJϞl����IS��b0$�`����S7��a?1a���w��S�+0�H/:9V��m����}������%�Fy��̏pH\���2��Ϗ��[d�z��K��1E�yݜ}�S1�s�a�/;E�8�$��+3���e~��K@t<��mѤ�!u����\t�(i�<�r��h9$"��g�Kd�Y8�q�o]>CAP�j��W\܊�]<J����Ѐ�~`�1��U~�RW���ޗ��!��T}W"kas@H:r�s�
��겄$��ܢ�v�>}��-VI��������i�5��[UF[%f����p(��T�[b�������rvYBIbS�P��iW��$,:6ġ�0%��^i<֑�gbȜ�\����jħ�B��rRQ����ۚp~��"ًvS��)�_"!�\��ϽuX9x���V�����Czյ?�O������0-�["Z�c��W������ZZ*��B	�R0�c�]�fH-0�-`;ߍR�*�c����e#L����vr���|H�j_fH�0��r[�F��'��%�|�P��TzU�� q��h�#�W���;a���zgU'���6g��
�IVW����!��)�jؤ�=������8Cي��b�F��Yy��}ː���X��b�/��\@-����O7����p��qw"�}��(�������$;#��jp�(��rp�jyK(Yz�ޗ(;U��-���Z��9�ƅ$�wi_e�.��Yf��["������ ��m=�椟�~����Ñs4#L|�%X�{~. Ѵ�C3�_�<�T3�ڇ�W@�H��C��J��~�'n�p%�Bm�''f�	�x��=C��w%?2��bǊ$��+�C���0��L�@g��w5��m�z��9��P�A�����@�$^��lo����Ŭ�g���G\�%�"��K��D`
m)i{W�-����[�H}(�n���zy[B�h�X7�8�
����4���(n�}uV���3��(+��m}���P6��b�`�;��p{�ɖ��6%�����S/�6Xp^���؆8��m0��6�0��{�a��l�}��j�!j���:�y��HB_��<C��J�m�O7{��B���a��l��p{9B�_�¾���ʹ��6���ͬ8�ġ��o� C���{g�����~��������Z≦50��
J�;��_�f�*eR7�s�-��roS?�����%�kbDF��X8$
�r7?v-��q�T�/H�����{C�S���D�$e|GE:g�J�t�<5��vDP^�v��p()L��>?7�<�rP�<�r\�46`�B|i[��r�p%ϣ=�D��L;��Q��@o�����g���|̓x��DK����6�BD�ݸ"X�S���oFu��1� ���gb媛�O>���w��tڝ!�0L�Mz��bj�vhQ!5a��5sn9r0��H�3�. Q�)�KE~�j��:���W�z��iz��/�J�$ĴǪ�Ca���]L��?�����-/����Ki��:��JS�~'��r��5BF������K��͐:˴{�����:c|jJ��i(�m'�_BAR�m�ρ�y*���	A1 <�G�,ӬRG�aҫ�]��)^�!R�ק�������!$�*nz���)�ס�v�=�ګ{:M���R��ߒΏ�3����p�/�??�|y����x�)�2u��Gf6C����� e�H2p�gd4W���1���m+O3±	��8�E�&���vH���F>�\�����Pv���w�����i�w�A�j4CIb�޵U.<�|�(����{Pr8�e�m\D��CR	<U�z���3$
����j���]m.�Uʊ$��J���� јi�N���|�6�ևU��M7�͐䛮/��*o��6�(u2k"O� �ُ��ut�f;r��jA�Q�ܺ�N$�Cj��s5
� ��[^�}w���������o���uKP�2O�\.}��¡��nC���;����(���"ֹ	���ѺŰ@��2�6jBDi4�zt// �o�އ��� l��f���0<�R?�7[[�t����HF�����UbE;�E��9�S�����r��~��J�
F.S��������\���u�1�'Y%s)�8�%c�w(G���k��"�<��g��pHm���3O����~:�pSb�-�^��Z����w_I	O/:�b({ɦ�ʙp��e�@&*�q�_��w���˂��÷O��V;Ĩ�~�m�\@���;�ԩ�bH»�B�՚�n�ļ�<����<eH��fZ@�U攰
Ԟr��	Q"���Z�(L�-�\����+0J������m~I�)�n��~�CJ86�OL����q0�^��.O��^wq��ؕfi�%�)�u��!����lvv�\@Ib
�rL����8��U�U�&�[�iDL�w�8_jS/>�\;�F+�V���=�U����(� v�$%�������&V�H��#(�C�U榆�s�6YC"Xe�bNQ���rB$�:rgB(�8^�C\�8�|�����������ϋ$��&=�i�F�P���[���a
�O|EmRN��ʾ�kό��E�����8@"0�ʭvP(}G�8?Hn5���G�A��.�v��n��{��ۮ�r��ImȐ�1n����$ޔ��O7};�������H���1��Y 3����#I^i�	
sR�� �����]�.�rgOH��Fq:[EF;���4�������],��"���Q����ߊfHJm�j�Q����.��N��g��{��6Zk���qV���va��J�J�(aJw�K��Jǰ�P&�Cj�-MֆN3�)��{��wx/h�eq�X�qP3L���t:��qS~d��I����T{߆�I|��і�M{5c��2�P~�M����JOm���R�/�I�dՈP�͛�!Z���x����D����L7$
����>vz�؝��Q�k*1*~����*2�T+�H텽4���|�wf���V�v���Zf���S�����}�q�D�:���\3���e����w���nj�������a5*�������Ӌ�g/8Ӿ���|zvJ[@"�}�����~ �  p��ڈG��{��YC"
���fU���zoU/��5t'���F�1pw�-AQ �wb$�r��vh��a�E�K�)Q%gL�5����0�'m�y}H�I�:N闚�DӰp�j�=��!���h����Y'f.z���	�u�;3����U-�#B��Fސ�UI|;����us(�)�T��Daf�8�^[�r �hN��e;�����z������9֐(�7�p�t�o1���KNL�V8$���QU͡�~Qk;x��TS����ْT���dkH$���a8��F�\Ddx��{�&�RPt�v|¿������u�Q9�>?��	��-�9T��"�kH��+���HrdY#x�W�mW�5$
�n�ܰJ�Rd�#]y�f�!�=\�x>�B♍�_x��T��"����K�yZ U���x����wP��n?�#�HzI��M����ce��t�
��ī`�ܒ��:;��v�z�	���I���&l½Nl�"I�k���3gH6d�8�[����*$f���Z��Ϊ:�(��=�Al�����d���[	;������˻Où���N�"U*�C2>���15���<6CD
Ee�X��!��_7�� U+┰]��ݐl�ͼu^��I$)���kT'��c%�m�=w;_��ޕp}%t{�i�Daj��T.�KCgKR���am�eCL��Yg����mK'A���(ILӯ�O�-�g6y����$1U�ڵ��.+8���H�^��h�CA�����������z����Cj��v`�PO���!#NT��C�p()Z�w�k;Xq`���q�Uv3�!Q��[��c��~y��ŤG3/&��4��tݳl�ã�x��x����_�+��m�jC��ʾ[}NrG%� �[۪F3�a1��O�.�z>2��[�P��_Q,�%E���p_m��5�$��W����,�����iF8�$��K_���7�FF�~R��H6��D�	���p�GYy	=L�$�n��ƪ��V1��7o* j��6�n���	5��mQx]rz�)˧��nH,����4�5ZQ��Yz4s,"�� ��_x��g���v{[]C9޶�[��g���=l�d���h�C�0߻�mj����(2v�b8��h���gIsyY$O�q��!Q��{�׵�h2��a����=[�H6!��Wй8n��������q�w(�o�k���}�6�S.r���X��wH�؎d���pK�A��
��P��N^u��p$æ��'?����ճ�M��Ef<b�����'�UV��*�5줼���v[xE�ms��w��g�|yw��LD%�!�����(� P��Htr�Su{��!�Z���<a�K����Q?�m������ܚE�L̾{��{X;H��fi;$��?�� ���Rdǲ�8!�͇M�w�e���wߎǿnH�޿v�A��%��P���5;����q��2Ab0���>=|l������ӳ�������Ǜ�|�-(����`�;$Ӻgkh�R��%�X�h&D�͢�Em3�ܢW<��ؠ��"�غ#��Q7�֬�G4f�.��iGC�)��ϳ�ҽ�����w?��d���b,l�q���i@,��ϥ"�fD�k�+�6醨�6/3��J	���e�J�YZ!"�1�o>?k(	L������?I�N��$X�8�$��F�v��?>�|����ǿ��r�F�1Q��O�%�ͼ��;�L߫��\��u��ǽ$�`��],���D��T�/D����ꋂ����p���fwH���0����+)��o�qƦ���4��ON	)�S~��'�H�)�9_^8��q�]#<Hy��(��fH��Fq�i��Ѽ"M�ok3���>�r\s%)�M�=2)�M!�A���]5�`��u[��Ml�����_�}�b�Z��x��hz��e�'��y�8X�6AD��icw0�!Q�2���|��q�o�6�K-��u/�f��!�7=�`��L1�b�rq�c�����NR$u�_1ʔ]��2	�i�sΊN��"�5��Dླྀ�;?�x<"��=C"0=�.:ׄù)l�LV��3t6�����>�2��-�A�D0Co��͢S�PJ�>��1�������2x5<k��Wy��=1�����#gH,֏k[�V���_�><�bޤ8\�I�I,��g(��= ��ۡ���I!�s���׃��$0�ޙL�gA�ؗ�[R`��Y9CIb�m���(Ť�k�m��$��"�+O�ü��H����o�$�4��t�1�J�H�)|_�8�5$���1}8����J�@$ߣP�KY��X�C��L}�~wBB��I"��$Q�z�5/MA� c�D���{pA"�������x������җ���\�[��7��j�.5�B�$	IrSĩ�	�g�MP��^w�����8�Z�TԲ�7$���t��V���te�,Ne<��wNH��u��M/yCCd��Jg���D���-y{�ӭ���1C���V����m����(͠�7rT�5$
��8qFv)�2���^b

�&�x�܄�a���1��T�
�fI�8J.���j���x'/#r�M勬���4;�. Q����v�X?ކ�4�Kl#�dJ<~�re���ieG"�2I΅Y��#"���;g�h$�-(	Lɯ1>�޿p��ǽ5c�hH�߻8�Ȗ����>��i$(�^R����c7}[��֐L�6�C�o�Q25�ZU�c���{g���{ݼ�����*��ݢ���޷S~6u�X�[ϱ{�_���y�bnEuW6tS�dE���
,�a�4���m�z���=��An_�s�]{�,�D��P���(�>��+�w���XL��e���5�����GL�#8Ɨ�k4>�\\�>��$���R%�B��'
���j�6$
�$�⤒y�����e����ӐL�ׅ���k|iVk����Ճ�P�'S�jg�3O�!G�����f�[@b0E_yv�4�w �HT��l�Cb��6�t/SF�(��5ΰd�2���2�6����d��?C~ow��!��_�Ee���6����Q��ȫ�I�s[@"��\Y�ۿ�)��E�R�Gl4��!�j/�����ʃ[������u@�o�s�k�h@�,�׈��&K6�!�bۀ3�����V�Q!�� �Gb��ʡn��]Z�mA���'JAw<��]��PR��?_|�9Pq��0��:���&�*њ�h�,��;�uS�7D��mb[[�Gɇ���^>R�Co
��׳�?�����_>?��w��$�1�^'�8�q02&������N�t.���̶^�!Q�n?"��v���EC�0�6+�������B�;�eW���gԳ��I�_p��s(��'��[�<�@�/Z�ge%���u.�C��Ja��]4�J�����MG*��;_g7����y[)�P2�\��$-�V6�p��?W�i���]�B'��-0w�C�0m_Y���+���3z���Xo���\9"!��ɸ5?�
Jg���L�|�D�h%��t7-�tsE�@C\_Z@�j=\�n�ӏd����!D�ĢR���H�{��ݖ�]&�����	��Z��*Y�4q>��5%�B���Q蚘pb�ސ�~����Z��aA��<��i6�$�M�_Z$5��Ӻ��/n�Esk�R�$w-;���MA]�I9��&%<�I�R���D��P�v^Rb�C$.븾%��7������7�x��      b      x^����� � �      d   �   x^U��u1н�ɑO/鿎0;q��� !��9t1���\	ݳT��&B�4>(`޴8UY����R���ϞU-v�A)m�9U4?5��̾�8A��&q��w�Y�OP�Vws�}��\���%�
��f�����-�o|8��G��|lZ��1�O      e   g   x^3�t*���I-*�4202�50�5�T00�25�2��33776��#�e��X���������B������E;��1�sF~IbQ��*C+K=c�fx��b���� �)      g   y   x^}�=
�@@�z��@�����T쬴lR
B ���	*X�q�.��q]�"$2R�閦H]��MJ�TOkعE8H9l����c�I�����{��@!��@��6?�e���Q{���\ ^(X      i   �  x^}�Ks�@F��+\d�7�A�`P|���lE@T���~�<S�IUW��lN}��JQ��]e��E&8���E�)a�KH<@�@:y�:]�e$/
K���)l.�c���v}~��yΡV����Ϥ� B��=܂D@GPA*X���d$���yp�8���@Ǧv�^��d�����Ǝ���qa!ՉW��kv�B�=_y!c��s�������n#���������EX��k���2K�vN��2���7Lő��]vꛂ�KZ��[4x���"�N��U��>"�H��۔�ʡ�{|�3D�9���id���7ʻ^���8��50���kAUGX�L�Hc�K��T��E�^�Mq�\)���£��1zcd�L����W�&O�"ۭ�^m3#�*�\�$X>�	��tr��� ΰ��J�"�Iɵ�!-gS3^[ˈ��$/M�b�>?O)�b`��`�6.�V����|�C5�_�F�'��HV� �kͣ_�n�@�R�&�gҼ���f�*��Z\�p�]��28fa���W��&nڽ��>�صL�-W)��V��d.� �Dzk��f�kZ��4{�����^UN��Y�}:V챖��j�(=�.?ǝ�#�����a�����������Uw��K���3�L���#ʹ���C粆���;B��o�Dg�vs��#�- ���V(c�wH���]�e��pe�     