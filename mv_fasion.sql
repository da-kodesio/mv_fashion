PGDMP     7    4                z            mv    14.2    14.2 ?    ?           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            ?           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            ?           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            ?           1262    19826    mv    DATABASE     M   CREATE DATABASE mv WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'C';
    DROP DATABASE mv;
                postgres    false            ?            1259    19853 
   auth_group    TABLE     f   CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);
    DROP TABLE public.auth_group;
       public         heap    postgres    false            ?            1259    19852    auth_group_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.auth_group_id_seq;
       public          postgres    false    216            ?           0    0    auth_group_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;
          public          postgres    false    215            ?            1259    19862    auth_group_permissions    TABLE     ?   CREATE TABLE public.auth_group_permissions (
    id bigint NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);
 *   DROP TABLE public.auth_group_permissions;
       public         heap    postgres    false            ?            1259    19861    auth_group_permissions_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.auth_group_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.auth_group_permissions_id_seq;
       public          postgres    false    218            ?           0    0    auth_group_permissions_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;
          public          postgres    false    217            ?            1259    19846    auth_permission    TABLE     ?   CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);
 #   DROP TABLE public.auth_permission;
       public         heap    postgres    false            ?            1259    19845    auth_permission_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.auth_permission_id_seq;
       public          postgres    false    214            ?           0    0    auth_permission_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;
          public          postgres    false    213            ?            1259    19947    django_admin_log    TABLE     ?  CREATE TABLE public.django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id uuid NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);
 $   DROP TABLE public.django_admin_log;
       public         heap    postgres    false            ?            1259    19946    django_admin_log_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.django_admin_log_id_seq;
       public          postgres    false    225            ?           0    0    django_admin_log_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;
          public          postgres    false    224            ?            1259    19837    django_content_type    TABLE     ?   CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);
 '   DROP TABLE public.django_content_type;
       public         heap    postgres    false            ?            1259    19836    django_content_type_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.django_content_type_id_seq;
       public          postgres    false    212            ?           0    0    django_content_type_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;
          public          postgres    false    211            ?            1259    19828    django_migrations    TABLE     ?   CREATE TABLE public.django_migrations (
    id bigint NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);
 %   DROP TABLE public.django_migrations;
       public         heap    postgres    false            ?            1259    19827    django_migrations_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.django_migrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.django_migrations_id_seq;
       public          postgres    false    210            ?           0    0    django_migrations_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;
          public          postgres    false    209            ?            1259    19968    django_session    TABLE     ?   CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);
 "   DROP TABLE public.django_session;
       public         heap    postgres    false            ?            1259    19978    store_collection    TABLE     ?   CREATE TABLE public.store_collection (
    id bigint NOT NULL,
    title character varying(155) NOT NULL,
    description character varying(155) NOT NULL
);
 $   DROP TABLE public.store_collection;
       public         heap    postgres    false            ?            1259    19977    store_collection_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.store_collection_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.store_collection_id_seq;
       public          postgres    false    228            ?           0    0    store_collection_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.store_collection_id_seq OWNED BY public.store_collection.id;
          public          postgres    false    227            ?            1259    19985    store_product    TABLE     w  CREATE TABLE public.store_product (
    id bigint NOT NULL,
    name character varying(155),
    description character varying(255),
    size character varying(2)[] NOT NULL,
    price numeric(10,2) NOT NULL,
    collection_id bigint NOT NULL,
    style character varying(50) NOT NULL,
    genre character varying(25) NOT NULL,
    material character varying(50) NOT NULL
);
 !   DROP TABLE public.store_product;
       public         heap    postgres    false            ?            1259    19984    store_product_id_seq    SEQUENCE     }   CREATE SEQUENCE public.store_product_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.store_product_id_seq;
       public          postgres    false    230            ?           0    0    store_product_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.store_product_id_seq OWNED BY public.store_product.id;
          public          postgres    false    229            ?            1259    19992    store_productimage    TABLE     ?   CREATE TABLE public.store_productimage (
    id bigint NOT NULL,
    image character varying(100) NOT NULL,
    variant_id bigint NOT NULL
);
 &   DROP TABLE public.store_productimage;
       public         heap    postgres    false            ?            1259    19991    store_productimage_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.store_productimage_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.store_productimage_id_seq;
       public          postgres    false    232            ?           0    0    store_productimage_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.store_productimage_id_seq OWNED BY public.store_productimage.id;
          public          postgres    false    231            ?            1259    20017    store_variant    TABLE     ?   CREATE TABLE public.store_variant (
    id bigint NOT NULL,
    color character varying(50) NOT NULL,
    quantity integer NOT NULL,
    product_id bigint NOT NULL
);
 !   DROP TABLE public.store_variant;
       public         heap    postgres    false            ?            1259    20016    store_variant_id_seq    SEQUENCE     }   CREATE SEQUENCE public.store_variant_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.store_variant_id_seq;
       public          postgres    false    234            ?           0    0    store_variant_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.store_variant_id_seq OWNED BY public.store_variant.id;
          public          postgres    false    233            ?            1259    19894 
   users_user    TABLE     ?  CREATE TABLE public.users_user (
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    first_name character varying(150) NOT NULL,
    last_name character varying(150) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL,
    id uuid NOT NULL,
    phone character varying(128)
);
    DROP TABLE public.users_user;
       public         heap    postgres    false            ?            1259    19904    users_user_groups    TABLE     |   CREATE TABLE public.users_user_groups (
    id bigint NOT NULL,
    user_id uuid NOT NULL,
    group_id integer NOT NULL
);
 %   DROP TABLE public.users_user_groups;
       public         heap    postgres    false            ?            1259    19903    users_user_groups_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.users_user_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.users_user_groups_id_seq;
       public          postgres    false    221            ?           0    0    users_user_groups_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.users_user_groups_id_seq OWNED BY public.users_user_groups.id;
          public          postgres    false    220            ?            1259    19911    users_user_user_permissions    TABLE     ?   CREATE TABLE public.users_user_user_permissions (
    id bigint NOT NULL,
    user_id uuid NOT NULL,
    permission_id integer NOT NULL
);
 /   DROP TABLE public.users_user_user_permissions;
       public         heap    postgres    false            ?            1259    19910 "   users_user_user_permissions_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.users_user_user_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 9   DROP SEQUENCE public.users_user_user_permissions_id_seq;
       public          postgres    false    223            ?           0    0 "   users_user_user_permissions_id_seq    SEQUENCE OWNED BY     i   ALTER SEQUENCE public.users_user_user_permissions_id_seq OWNED BY public.users_user_user_permissions.id;
          public          postgres    false    222            ?           2604    19856    auth_group id    DEFAULT     n   ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);
 <   ALTER TABLE public.auth_group ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    216    215    216            ?           2604    19865    auth_group_permissions id    DEFAULT     ?   ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);
 H   ALTER TABLE public.auth_group_permissions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    218    217    218            ?           2604    19849    auth_permission id    DEFAULT     x   ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);
 A   ALTER TABLE public.auth_permission ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    214    213    214            ?           2604    19950    django_admin_log id    DEFAULT     z   ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);
 B   ALTER TABLE public.django_admin_log ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    225    224    225            ?           2604    19840    django_content_type id    DEFAULT     ?   ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);
 E   ALTER TABLE public.django_content_type ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    212    211    212            ?           2604    19831    django_migrations id    DEFAULT     |   ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);
 C   ALTER TABLE public.django_migrations ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    209    210    210            ?           2604    19981    store_collection id    DEFAULT     z   ALTER TABLE ONLY public.store_collection ALTER COLUMN id SET DEFAULT nextval('public.store_collection_id_seq'::regclass);
 B   ALTER TABLE public.store_collection ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    227    228    228            ?           2604    19988    store_product id    DEFAULT     t   ALTER TABLE ONLY public.store_product ALTER COLUMN id SET DEFAULT nextval('public.store_product_id_seq'::regclass);
 ?   ALTER TABLE public.store_product ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    229    230    230            ?           2604    19995    store_productimage id    DEFAULT     ~   ALTER TABLE ONLY public.store_productimage ALTER COLUMN id SET DEFAULT nextval('public.store_productimage_id_seq'::regclass);
 D   ALTER TABLE public.store_productimage ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    232    231    232            ?           2604    20020    store_variant id    DEFAULT     t   ALTER TABLE ONLY public.store_variant ALTER COLUMN id SET DEFAULT nextval('public.store_variant_id_seq'::regclass);
 ?   ALTER TABLE public.store_variant ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    233    234    234            ?           2604    19907    users_user_groups id    DEFAULT     |   ALTER TABLE ONLY public.users_user_groups ALTER COLUMN id SET DEFAULT nextval('public.users_user_groups_id_seq'::regclass);
 C   ALTER TABLE public.users_user_groups ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    220    221    221            ?           2604    19914    users_user_user_permissions id    DEFAULT     ?   ALTER TABLE ONLY public.users_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.users_user_user_permissions_id_seq'::regclass);
 M   ALTER TABLE public.users_user_user_permissions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    223    222    223            ?          0    19853 
   auth_group 
   TABLE DATA           .   COPY public.auth_group (id, name) FROM stdin;
    public          postgres    false    216   ?       ?          0    19862    auth_group_permissions 
   TABLE DATA           M   COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
    public          postgres    false    218   *?       ?          0    19846    auth_permission 
   TABLE DATA           N   COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
    public          postgres    false    214   G?       ?          0    19947    django_admin_log 
   TABLE DATA           ?   COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
    public          postgres    false    225   ??       ?          0    19837    django_content_type 
   TABLE DATA           C   COPY public.django_content_type (id, app_label, model) FROM stdin;
    public          postgres    false    212   ??       ?          0    19828    django_migrations 
   TABLE DATA           C   COPY public.django_migrations (id, app, name, applied) FROM stdin;
    public          postgres    false    210   H?       ?          0    19968    django_session 
   TABLE DATA           P   COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
    public          postgres    false    226   ??       ?          0    19978    store_collection 
   TABLE DATA           B   COPY public.store_collection (id, title, description) FROM stdin;
    public          postgres    false    228   ?       ?          0    19985    store_product 
   TABLE DATA           r   COPY public.store_product (id, name, description, size, price, collection_id, style, genre, material) FROM stdin;
    public          postgres    false    230   =?       ?          0    19992    store_productimage 
   TABLE DATA           C   COPY public.store_productimage (id, image, variant_id) FROM stdin;
    public          postgres    false    232   ??       ?          0    20017    store_variant 
   TABLE DATA           H   COPY public.store_variant (id, color, quantity, product_id) FROM stdin;
    public          postgres    false    234   l?       ?          0    19894 
   users_user 
   TABLE DATA           ?   COPY public.users_user (password, last_login, is_superuser, first_name, last_name, email, is_staff, is_active, date_joined, id, phone) FROM stdin;
    public          postgres    false    219   ǹ       ?          0    19904    users_user_groups 
   TABLE DATA           B   COPY public.users_user_groups (id, user_id, group_id) FROM stdin;
    public          postgres    false    221   ??       ?          0    19911    users_user_user_permissions 
   TABLE DATA           Q   COPY public.users_user_user_permissions (id, user_id, permission_id) FROM stdin;
    public          postgres    false    223   ??       ?           0    0    auth_group_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);
          public          postgres    false    215            ?           0    0    auth_group_permissions_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);
          public          postgres    false    217            ?           0    0    auth_permission_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.auth_permission_id_seq', 40, true);
          public          postgres    false    213            ?           0    0    django_admin_log_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.django_admin_log_id_seq', 77, true);
          public          postgres    false    224            ?           0    0    django_content_type_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.django_content_type_id_seq', 10, true);
          public          postgres    false    211            ?           0    0    django_migrations_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.django_migrations_id_seq', 25, true);
          public          postgres    false    209            ?           0    0    store_collection_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.store_collection_id_seq', 1, true);
          public          postgres    false    227            ?           0    0    store_product_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.store_product_id_seq', 4, true);
          public          postgres    false    229            ?           0    0    store_productimage_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.store_productimage_id_seq', 37, true);
          public          postgres    false    231            ?           0    0    store_variant_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.store_variant_id_seq', 4, true);
          public          postgres    false    233            ?           0    0    users_user_groups_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.users_user_groups_id_seq', 1, false);
          public          postgres    false    220            ?           0    0 "   users_user_user_permissions_id_seq    SEQUENCE SET     Q   SELECT pg_catalog.setval('public.users_user_user_permissions_id_seq', 1, false);
          public          postgres    false    222            ?           2606    19892    auth_group auth_group_name_key 
   CONSTRAINT     Y   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);
 H   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_name_key;
       public            postgres    false    216            ?           2606    19878 R   auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq 
   CONSTRAINT     ?   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);
 |   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq;
       public            postgres    false    218    218            ?           2606    19867 2   auth_group_permissions auth_group_permissions_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_pkey;
       public            postgres    false    218            ?           2606    19858    auth_group auth_group_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_pkey;
       public            postgres    false    216            ?           2606    19869 F   auth_permission auth_permission_content_type_id_codename_01ab375a_uniq 
   CONSTRAINT     ?   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);
 p   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq;
       public            postgres    false    214    214            ?           2606    19851 $   auth_permission auth_permission_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_pkey;
       public            postgres    false    214            ?           2606    19955 &   django_admin_log django_admin_log_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_pkey;
       public            postgres    false    225            ?           2606    19844 E   django_content_type django_content_type_app_label_model_76bd3d3b_uniq 
   CONSTRAINT     ?   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);
 o   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq;
       public            postgres    false    212    212            ?           2606    19842 ,   django_content_type django_content_type_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_pkey;
       public            postgres    false    212            ?           2606    19835 (   django_migrations django_migrations_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.django_migrations DROP CONSTRAINT django_migrations_pkey;
       public            postgres    false    210            ?           2606    19974 "   django_session django_session_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);
 L   ALTER TABLE ONLY public.django_session DROP CONSTRAINT django_session_pkey;
       public            postgres    false    226            ?           2606    19983 &   store_collection store_collection_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.store_collection
    ADD CONSTRAINT store_collection_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.store_collection DROP CONSTRAINT store_collection_pkey;
       public            postgres    false    228            ?           2606    19990     store_product store_product_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.store_product
    ADD CONSTRAINT store_product_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.store_product DROP CONSTRAINT store_product_pkey;
       public            postgres    false    230            ?           2606    19997 *   store_productimage store_productimage_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.store_productimage
    ADD CONSTRAINT store_productimage_pkey PRIMARY KEY (id);
 T   ALTER TABLE ONLY public.store_productimage DROP CONSTRAINT store_productimage_pkey;
       public            postgres    false    232            ?           2606    20022     store_variant store_variant_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.store_variant
    ADD CONSTRAINT store_variant_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.store_variant DROP CONSTRAINT store_variant_pkey;
       public            postgres    false    234            ?           2606    20037 )   users_user users_user_email_243f6e77_uniq 
   CONSTRAINT     e   ALTER TABLE ONLY public.users_user
    ADD CONSTRAINT users_user_email_243f6e77_uniq UNIQUE (email);
 S   ALTER TABLE ONLY public.users_user DROP CONSTRAINT users_user_email_243f6e77_uniq;
       public            postgres    false    219            ?           2606    19909 (   users_user_groups users_user_groups_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.users_user_groups
    ADD CONSTRAINT users_user_groups_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.users_user_groups DROP CONSTRAINT users_user_groups_pkey;
       public            postgres    false    221            ?           2606    19919 B   users_user_groups users_user_groups_user_id_group_id_b88eab82_uniq 
   CONSTRAINT     ?   ALTER TABLE ONLY public.users_user_groups
    ADD CONSTRAINT users_user_groups_user_id_group_id_b88eab82_uniq UNIQUE (user_id, group_id);
 l   ALTER TABLE ONLY public.users_user_groups DROP CONSTRAINT users_user_groups_user_id_group_id_b88eab82_uniq;
       public            postgres    false    221    221            ?           2606    19900    users_user users_user_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.users_user
    ADD CONSTRAINT users_user_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.users_user DROP CONSTRAINT users_user_pkey;
       public            postgres    false    219            ?           2606    19916 <   users_user_user_permissions users_user_user_permissions_pkey 
   CONSTRAINT     z   ALTER TABLE ONLY public.users_user_user_permissions
    ADD CONSTRAINT users_user_user_permissions_pkey PRIMARY KEY (id);
 f   ALTER TABLE ONLY public.users_user_user_permissions DROP CONSTRAINT users_user_user_permissions_pkey;
       public            postgres    false    223            ?           2606    19933 [   users_user_user_permissions users_user_user_permissions_user_id_permission_id_43338c45_uniq 
   CONSTRAINT     ?   ALTER TABLE ONLY public.users_user_user_permissions
    ADD CONSTRAINT users_user_user_permissions_user_id_permission_id_43338c45_uniq UNIQUE (user_id, permission_id);
 ?   ALTER TABLE ONLY public.users_user_user_permissions DROP CONSTRAINT users_user_user_permissions_user_id_permission_id_43338c45_uniq;
       public            postgres    false    223    223            ?           1259    19893    auth_group_name_a6ea08ec_like    INDEX     h   CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);
 1   DROP INDEX public.auth_group_name_a6ea08ec_like;
       public            postgres    false    216            ?           1259    19889 (   auth_group_permissions_group_id_b120cbf9    INDEX     o   CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);
 <   DROP INDEX public.auth_group_permissions_group_id_b120cbf9;
       public            postgres    false    218            ?           1259    19890 -   auth_group_permissions_permission_id_84c5c92e    INDEX     y   CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);
 A   DROP INDEX public.auth_group_permissions_permission_id_84c5c92e;
       public            postgres    false    218            ?           1259    19875 (   auth_permission_content_type_id_2f476e4b    INDEX     o   CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);
 <   DROP INDEX public.auth_permission_content_type_id_2f476e4b;
       public            postgres    false    214            ?           1259    19966 )   django_admin_log_content_type_id_c4bce8eb    INDEX     q   CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);
 =   DROP INDEX public.django_admin_log_content_type_id_c4bce8eb;
       public            postgres    false    225            ?           1259    19967 !   django_admin_log_user_id_c564eba6    INDEX     a   CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);
 5   DROP INDEX public.django_admin_log_user_id_c564eba6;
       public            postgres    false    225            ?           1259    19976 #   django_session_expire_date_a5c62663    INDEX     e   CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);
 7   DROP INDEX public.django_session_expire_date_a5c62663;
       public            postgres    false    226            ?           1259    19975 (   django_session_session_key_c0390e0f_like    INDEX     ~   CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);
 <   DROP INDEX public.django_session_session_key_c0390e0f_like;
       public            postgres    false    226            ?           1259    20003 $   store_product_collection_id_2914d2ba    INDEX     g   CREATE INDEX store_product_collection_id_2914d2ba ON public.store_product USING btree (collection_id);
 8   DROP INDEX public.store_product_collection_id_2914d2ba;
       public            postgres    false    230            ?           1259    20035 &   store_productimage_variant_id_f53c6fe1    INDEX     k   CREATE INDEX store_productimage_variant_id_f53c6fe1 ON public.store_productimage USING btree (variant_id);
 :   DROP INDEX public.store_productimage_variant_id_f53c6fe1;
       public            postgres    false    232            ?           1259    20034 !   store_variant_product_id_3c4bd418    INDEX     a   CREATE INDEX store_variant_product_id_3c4bd418 ON public.store_variant USING btree (product_id);
 5   DROP INDEX public.store_variant_product_id_3c4bd418;
       public            postgres    false    234            ?           1259    20038    users_user_email_243f6e77_like    INDEX     j   CREATE INDEX users_user_email_243f6e77_like ON public.users_user USING btree (email varchar_pattern_ops);
 2   DROP INDEX public.users_user_email_243f6e77_like;
       public            postgres    false    219            ?           1259    19931 #   users_user_groups_group_id_9afc8d0e    INDEX     e   CREATE INDEX users_user_groups_group_id_9afc8d0e ON public.users_user_groups USING btree (group_id);
 7   DROP INDEX public.users_user_groups_group_id_9afc8d0e;
       public            postgres    false    221            ?           1259    19930 "   users_user_groups_user_id_5f6f5a90    INDEX     c   CREATE INDEX users_user_groups_user_id_5f6f5a90 ON public.users_user_groups USING btree (user_id);
 6   DROP INDEX public.users_user_groups_user_id_5f6f5a90;
       public            postgres    false    221            ?           1259    19945 2   users_user_user_permissions_permission_id_0b93982e    INDEX     ?   CREATE INDEX users_user_user_permissions_permission_id_0b93982e ON public.users_user_user_permissions USING btree (permission_id);
 F   DROP INDEX public.users_user_user_permissions_permission_id_0b93982e;
       public            postgres    false    223            ?           1259    19944 ,   users_user_user_permissions_user_id_20aca447    INDEX     w   CREATE INDEX users_user_user_permissions_user_id_20aca447 ON public.users_user_user_permissions USING btree (user_id);
 @   DROP INDEX public.users_user_user_permissions_user_id_20aca447;
       public            postgres    false    223            ?           2606    19884 O   auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm    FK CONSTRAINT     ?   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm;
       public          postgres    false    218    214    3516            ?           2606    19879 P   auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id;
       public          postgres    false    216    218    3521            ?           2606    19870 E   auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co    FK CONSTRAINT     ?   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co;
       public          postgres    false    3511    212    214            ?           2606    19956 G   django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co    FK CONSTRAINT     ?   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co;
       public          postgres    false    3511    225    212            ?           2606    19961 C   django_admin_log django_admin_log_user_id_c564eba6_fk_users_user_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_users_user_id FOREIGN KEY (user_id) REFERENCES public.users_user(id) DEFERRABLE INITIALLY DEFERRED;
 m   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_user_id_c564eba6_fk_users_user_id;
       public          postgres    false    3532    219    225            ?           2606    19998 I   store_product store_product_collection_id_2914d2ba_fk_store_collection_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.store_product
    ADD CONSTRAINT store_product_collection_id_2914d2ba_fk_store_collection_id FOREIGN KEY (collection_id) REFERENCES public.store_collection(id) DEFERRABLE INITIALLY DEFERRED;
 s   ALTER TABLE ONLY public.store_product DROP CONSTRAINT store_product_collection_id_2914d2ba_fk_store_collection_id;
       public          postgres    false    230    228    3554            ?           2606    20024 M   store_productimage store_productimage_variant_id_f53c6fe1_fk_store_variant_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.store_productimage
    ADD CONSTRAINT store_productimage_variant_id_f53c6fe1_fk_store_variant_id FOREIGN KEY (variant_id) REFERENCES public.store_variant(id) DEFERRABLE INITIALLY DEFERRED;
 w   ALTER TABLE ONLY public.store_productimage DROP CONSTRAINT store_productimage_variant_id_f53c6fe1_fk_store_variant_id;
       public          postgres    false    232    234    3562            ?           2606    20029 C   store_variant store_variant_product_id_3c4bd418_fk_store_product_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.store_variant
    ADD CONSTRAINT store_variant_product_id_3c4bd418_fk_store_product_id FOREIGN KEY (product_id) REFERENCES public.store_product(id) DEFERRABLE INITIALLY DEFERRED;
 m   ALTER TABLE ONLY public.store_variant DROP CONSTRAINT store_variant_product_id_3c4bd418_fk_store_product_id;
       public          postgres    false    3557    234    230            ?           2606    19925 F   users_user_groups users_user_groups_group_id_9afc8d0e_fk_auth_group_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.users_user_groups
    ADD CONSTRAINT users_user_groups_group_id_9afc8d0e_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 p   ALTER TABLE ONLY public.users_user_groups DROP CONSTRAINT users_user_groups_group_id_9afc8d0e_fk_auth_group_id;
       public          postgres    false    3521    216    221            ?           2606    19920 E   users_user_groups users_user_groups_user_id_5f6f5a90_fk_users_user_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.users_user_groups
    ADD CONSTRAINT users_user_groups_user_id_5f6f5a90_fk_users_user_id FOREIGN KEY (user_id) REFERENCES public.users_user(id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY public.users_user_groups DROP CONSTRAINT users_user_groups_user_id_5f6f5a90_fk_users_user_id;
       public          postgres    false    219    221    3532            ?           2606    19939 T   users_user_user_permissions users_user_user_perm_permission_id_0b93982e_fk_auth_perm    FK CONSTRAINT     ?   ALTER TABLE ONLY public.users_user_user_permissions
    ADD CONSTRAINT users_user_user_perm_permission_id_0b93982e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 ~   ALTER TABLE ONLY public.users_user_user_permissions DROP CONSTRAINT users_user_user_perm_permission_id_0b93982e_fk_auth_perm;
       public          postgres    false    214    223    3516            ?           2606    19934 Y   users_user_user_permissions users_user_user_permissions_user_id_20aca447_fk_users_user_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.users_user_user_permissions
    ADD CONSTRAINT users_user_user_permissions_user_id_20aca447_fk_users_user_id FOREIGN KEY (user_id) REFERENCES public.users_user(id) DEFERRABLE INITIALLY DEFERRED;
 ?   ALTER TABLE ONLY public.users_user_user_permissions DROP CONSTRAINT users_user_user_permissions_user_id_20aca447_fk_users_user_id;
       public          postgres    false    219    223    3532            ?      x?????? ? ?      ?      x?????? ? ?      ?   ?  x?m?Kn?0???}
NPņ<X??*E"?I????<hv??!?i??g5dU?d??fa???8????3?R?TC?گ? ?Ї??~Ű ??¯b??3?=?t????!?/?E?)?u?^e??(????F?J?l?qy???u'?ޱ??M?`?)	@>?TP?C\g???#?B?j????9?Uʟe??c??=h?U?J?s?g{?`<Yw??l??X)?a^b??i????s??P?]p???z??($??q?'(0͏q!?'(??،il?:?????z?d?F$???XZ???*?? ??X?u???&?????7q?u"~??t????????pԼA?j??!???ds?8l0???fXHL?	#?"?۱?a2??ֳ???Z???)?P;?V?(?:?w?ׯk??z7      ?   ?  x??????6?ϻO!??Ek?3CrH??MQ?@.I^[??ص?h?}??F_?C?@v%Q????	#???
.P#?4??+?\m@?a???p/?j???A>??p??n??U]}???ͅ?p?R?	?????????M?٬ni??xc???G??8e؇pb???4#?????zߏ?F?,hJ??r}ح?Ǫ????????Z?G3}??1??&د?v??9?x?~?L?<?}Ft?5?
,?gȧ4??ͻ??m?]???||u?K{?mu?}??9??w?>?????????M8????C??4Wo??Y?\???S?t?4?:R???>%ԠU c|? 8N??????h?"?ƑT?C$y????4?HS??c?QҠ? ?L;δ%L2Q+?v~?9?b6乃?<U?Q?<??[ ?????Y?0??s{?f ???>? n?t@?#??!?d?񐉤?ʅ??q&?0?3?}?]???L_?C&9????a?
??{L?؆9x?}ڙ????n??=????v?T?wͣ4?
???#????????:i??;a6???]s?{?5??????
?}???????[:?k
m
?}?ז?t?{??|?6????a?C?kE8??,????㾩??????Ks+?ˊ$?􏠍?U??]{?'?u{?R?[V_oR?,y??l??o???3]>&q?I?Lgt?Kt?מPI??Q?Y ?DJ?2??'TC?Q@??5??$R_}B?ث?9?ȴ~(ɇ?7??.??E\!???$"R_zB???i ?D)(	????Pe?p?M?? %q???*???mJ???P?/4?????? %???????I<?E?d(	4pFy????3n?7??M7X??5/̸	K?DO??+????\???=H?s????>???O]&???Q~ɼnt???X??|Z????E*?aE?l??.X???/R????O!X?YI??EO?+?UVK??P??P??w	??3R?W!j??K?{??????8????b~=??\V?'?b?g,v??=g??s??q?O?'S
]????;|??,???z????|???s?u??`?؝?-0??xL?}*?-?P#	???0&?q??6??`?8??9??Qa&c snZ??X??O[`b?[??X???O_,-?d@$???1?q?t[??
\ ɜ2??i?w? ???jmk ۝??	?̼n ?5)y20)9fN)?̼n???*l-???3
??T??UL?>ݶe??%3????wN????
gv?̼n ??{k?Έ???%3?x??V+6Ґ?
g?<?̼n ?'2???dt?%3/?jtJ?G????d?偉B\`?=???3m?JF^~?&е?QM??O??2j?51? ??M?{Wb&6C(?)?SFLT"&?}h????+e?D%bb7???j'fJϚ???yH%?b'M[)?%*??kuyy??C0      ?   |   x?U?K
?@D?]??߻?&?80??{??>1F?MQ?x5?s,?j?b2?@?ۓK????$H?'??آ??XΤ?>?[p!?*?h)??7?n?I?7??w?.0?|9???=ue?5????&??      ?   4  x????n?0???S????glc?gYɲ??Z???T?>?چ???Mn? ??̜3?s?y?y?XB@??z??	??/ ~????(?????3m?a??@?'?ӭ?I&????????OW@??X?r*?x??`\k???]??j??jLw	om?d)ˈ?E?4??i?mR?J."??vO??$?????J`!2??#=z??????P???!ep?}?.ۑ|Rqd;AX?????Ѝ???ݨt]+?\?Tk?Q_?N[Ir
H????<1+%?I?IՏ=?? yxCYP?O?s??p?L?\ 5aBF???ޥqg<%?|???x?իu϶%??|?E?}b??J"?kBr??v?j??Y?XK0F3??]o???cJ???2;?B?
???g????u~??y3cFC`gEU1?e܏???@Ҁ?C??5<??R????/?^Og??'?y?????6?I~Iw?j#a?C!A\??K??lb?HJi?????kuT?_?????&??ù?om.???h?? V?X
.،?+???N????u{*9?0?o?N??????`??      ?   x  x????r?@  ?s???SX??"pEe?@?TY???446|}f???𚸧K??i????v??,('U?eSS?????]uy???&??PS??	׶?01?[;>???@???u]:	??>???>?#J.?"Ǽ?fy??'#f8Ү?f??,?H?e9?;j?kxCb.??37??S???r?Ӌ?{2ٳ?]??1w.S???M?{?n????e????H?=??h*l??.??[???A?1?????????qce?sr?܈???8?s<|?P??
???,? W?h&?.]?K??&,?PO??A?T׭??o}a-m?;??S???冶??Q
Qtחe⾈T??`e־9?_??A?U?? ?@???~?W??ͨ?{      ?      x?3????/?/?,?3?b???? n??      ?   >  x???M?1?םS?(??p???f?`;?Sj??=.;!$???e?k?&??g'!v?Zn?????|?==t??z???Q?h?Գ???Rլ?W,?뜜?C??(????x?8?4;?qm??wJ??qN/YhWK7??!????2?2m???X????D???ʴ+{?#???X????>???ݼ^.??岻??K? 
V??c??s$???U#??V??: ??^h??& 2h??(?)??h{?"?&Vn{rb???C-uX?IɳɎi?9?? ??I??&???????P*e_;?]?a?4???8?????????>??:?%3E??K5?ЗiN???>6???Ra???Xc??7ere?ƶ??+HB=)?Ys?S]o??????҂X&M???я?,t??CW?`???????-2f???4D?W?G׮Ϯ?????m3???^]??`$"?4g?? t??:t?????fί??IҞ?zA?R?>?ɦL0ꐘt;?N??????H^??X?7???5???(?>???K5oC4?????v?0????.??:˾0???=-f??/?)??      ?   ?   x????
?P????]2?/?4?<??H	?`?2?Fb??/?y?Yη?-???U7????z??????0??,?m?8??,qT?G?5?)t?[S??c?.0?Vz?	x*?͹l?v?tT݂?̾ԕ%(.	.???????O??k8?$pI?#b?F c6??	??U???J?l?$?5.="?w;??-qI[?????v??E???      ?   K   x?3??-??L???/?4?4?2?t?I-UH?L?򍸌9?2?sRK?c.N??ҼT???ҒĢ?T??	W? ??w      ?   ?   x?=?͊?0E??S??NR?|I?? ?V?ΌX$M?X?R?????????=???<?^G???9BG<_4?j=??I??\??|R??ĭ4u:?
XN?롔[7?=?nV??r|5?TYVC??H?S?=????????B?q?S3?lbo?΅???c9?9?5 S?J???{?Q?P??:?-????0?;m?6???q,:A      ?      x?????? ? ?      ?      x?????? ? ?     