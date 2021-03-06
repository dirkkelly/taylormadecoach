PGDMP         !        	        s            d5h6ratgb0vpcu    9.1.15    9.1.14 h    c	           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false            d	           0    0 
   STDSTRINGS 
   STDSTRINGS     )   SET standard_conforming_strings = 'off';
                       false            e	           1262    158472    d5h6ratgb0vpcu    DATABASE     �   CREATE DATABASE d5h6ratgb0vpcu WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'en_US.UTF-8' LC_CTYPE = 'en_US.UTF-8';
    DROP DATABASE d5h6ratgb0vpcu;
             jiilajabikozwv    false                        2615    158509    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
             jiilajabikozwv    false            f	           0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                  jiilajabikozwv    false    6            �            3079    12027    plpgsql 	   EXTENSION     ?   CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;
    DROP EXTENSION plpgsql;
                  false            g	           0    0    EXTENSION plpgsql    COMMENT     @   COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';
                       false    186            �            1259    158510    assets    TABLE     �  CREATE TABLE assets (
    id integer NOT NULL,
    caption character varying(255),
    title character varying(255),
    asset_file_name character varying(255),
    asset_content_type character varying(255),
    asset_file_size integer,
    created_by_id integer,
    updated_by_id integer,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    original_width integer,
    original_height integer,
    original_extension character varying(255)
);
    DROP TABLE public.assets;
       public         jiilajabikozwv    false    6            �            1259    158516    assets_id_seq    SEQUENCE     o   CREATE SEQUENCE assets_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.assets_id_seq;
       public       jiilajabikozwv    false    161    6            h	           0    0    assets_id_seq    SEQUENCE OWNED BY     1   ALTER SEQUENCE assets_id_seq OWNED BY assets.id;
            public       jiilajabikozwv    false    162            �            1259    158518    config    TABLE     �   CREATE TABLE config (
    id integer NOT NULL,
    key character varying(40) DEFAULT ''::character varying NOT NULL,
    value character varying(255) DEFAULT ''::character varying,
    description text
);
    DROP TABLE public.config;
       public         jiilajabikozwv    false    2214    2215    6            �            1259    158526    config_id_seq    SEQUENCE     p   CREATE SEQUENCE config_id_seq
    START WITH 26
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.config_id_seq;
       public       jiilajabikozwv    false    6    163            i	           0    0    config_id_seq    SEQUENCE OWNED BY     1   ALTER SEQUENCE config_id_seq OWNED BY config.id;
            public       jiilajabikozwv    false    164            �            1259    158528    extension_meta    TABLE     �   CREATE TABLE extension_meta (
    id integer NOT NULL,
    name character varying(255),
    schema_version integer DEFAULT 0,
    enabled boolean DEFAULT true
);
 "   DROP TABLE public.extension_meta;
       public         jiilajabikozwv    false    2217    2218    6            �            1259    158533    extension_meta_id_seq    SEQUENCE     w   CREATE SEQUENCE extension_meta_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.extension_meta_id_seq;
       public       jiilajabikozwv    false    165    6            j	           0    0    extension_meta_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE extension_meta_id_seq OWNED BY extension_meta.id;
            public       jiilajabikozwv    false    166            �            1259    158535    forms    TABLE     W  CREATE TABLE forms (
    id integer NOT NULL,
    title character varying(255),
    action character varying(255),
    redirect_to character varying(255),
    body text,
    content text,
    config text,
    created_by integer,
    updated_by integer,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);
    DROP TABLE public.forms;
       public         jiilajabikozwv    false    6            �            1259    158541    forms_id_seq    SEQUENCE     n   CREATE SEQUENCE forms_id_seq
    START WITH 3
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.forms_id_seq;
       public       jiilajabikozwv    false    167    6            k	           0    0    forms_id_seq    SEQUENCE OWNED BY     /   ALTER SEQUENCE forms_id_seq OWNED BY forms.id;
            public       jiilajabikozwv    false    168            �            1259    158543    layouts    TABLE     ?  CREATE TABLE layouts (
    id integer NOT NULL,
    name character varying(100),
    content text,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    created_by_id integer,
    updated_by_id integer,
    content_type character varying(40),
    lock_version integer DEFAULT 0
);
    DROP TABLE public.layouts;
       public         jiilajabikozwv    false    2221    6            �            1259    158550    layouts_id_seq    SEQUENCE     p   CREATE SEQUENCE layouts_id_seq
    START WITH 5
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.layouts_id_seq;
       public       jiilajabikozwv    false    6    169            l	           0    0    layouts_id_seq    SEQUENCE OWNED BY     3   ALTER SEQUENCE layouts_id_seq OWNED BY layouts.id;
            public       jiilajabikozwv    false    170            �            1259    158552    page_attachments    TABLE     ~   CREATE TABLE page_attachments (
    id integer NOT NULL,
    asset_id integer,
    page_id integer,
    "position" integer
);
 $   DROP TABLE public.page_attachments;
       public         jiilajabikozwv    false    6            �            1259    158555    page_attachments_id_seq    SEQUENCE     y   CREATE SEQUENCE page_attachments_id_seq
    START WITH 2
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.page_attachments_id_seq;
       public       jiilajabikozwv    false    171    6            m	           0    0    page_attachments_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE page_attachments_id_seq OWNED BY page_attachments.id;
            public       jiilajabikozwv    false    172            �            1259    158557 
   page_parts    TABLE     �   CREATE TABLE page_parts (
    id integer NOT NULL,
    name character varying(100),
    filter_id character varying(25),
    content text,
    page_id integer
);
    DROP TABLE public.page_parts;
       public         jiilajabikozwv    false    6            �            1259    158563    page_parts_id_seq    SEQUENCE     s   CREATE SEQUENCE page_parts_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.page_parts_id_seq;
       public       jiilajabikozwv    false    173    6            n	           0    0    page_parts_id_seq    SEQUENCE OWNED BY     9   ALTER SEQUENCE page_parts_id_seq OWNED BY page_parts.id;
            public       jiilajabikozwv    false    174            �            1259    158565    pages    TABLE     �  CREATE TABLE pages (
    id integer NOT NULL,
    title character varying(255),
    slug character varying(100),
    breadcrumb character varying(160),
    class_name character varying(25),
    status_id integer DEFAULT 1 NOT NULL,
    parent_id integer,
    layout_id integer,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    published_at timestamp without time zone,
    created_by_id integer,
    updated_by_id integer,
    virtual boolean DEFAULT false NOT NULL,
    lock_version integer DEFAULT 0,
    description character varying(255),
    keywords character varying(255),
    "position" integer DEFAULT 0
);
    DROP TABLE public.pages;
       public         jiilajabikozwv    false    2225    2226    2227    2228    6            �            1259    158575    pages_id_seq    SEQUENCE     n   CREATE SEQUENCE pages_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.pages_id_seq;
       public       jiilajabikozwv    false    175    6            o	           0    0    pages_id_seq    SEQUENCE OWNED BY     /   ALTER SEQUENCE pages_id_seq OWNED BY pages.id;
            public       jiilajabikozwv    false    176            �            1259    158577 	   responses    TABLE     �   CREATE TABLE responses (
    id integer NOT NULL,
    result_json text,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);
    DROP TABLE public.responses;
       public         jiilajabikozwv    false    6            �            1259    158583    responses_id_seq    SEQUENCE     r   CREATE SEQUENCE responses_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.responses_id_seq;
       public       jiilajabikozwv    false    6    177            p	           0    0    responses_id_seq    SEQUENCE OWNED BY     7   ALTER SEQUENCE responses_id_seq OWNED BY responses.id;
            public       jiilajabikozwv    false    178            �            1259    158585    schema_migrations    TABLE     P   CREATE TABLE schema_migrations (
    version character varying(255) NOT NULL
);
 %   DROP TABLE public.schema_migrations;
       public         jiilajabikozwv    false    6            �            1259    158588    sessions    TABLE     �   CREATE TABLE sessions (
    id integer NOT NULL,
    session_id character varying(255),
    data text,
    updated_at timestamp without time zone
);
    DROP TABLE public.sessions;
       public         jiilajabikozwv    false    6            �            1259    158594    sessions_id_seq    SEQUENCE     q   CREATE SEQUENCE sessions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.sessions_id_seq;
       public       jiilajabikozwv    false    6    180            q	           0    0    sessions_id_seq    SEQUENCE OWNED BY     5   ALTER SEQUENCE sessions_id_seq OWNED BY sessions.id;
            public       jiilajabikozwv    false    181            �            1259    158596    snippets    TABLE     d  CREATE TABLE snippets (
    id integer NOT NULL,
    name character varying(100) DEFAULT ''::character varying NOT NULL,
    filter_id character varying(25),
    content text,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    created_by_id integer,
    updated_by_id integer,
    lock_version integer DEFAULT 0
);
    DROP TABLE public.snippets;
       public         jiilajabikozwv    false    2232    2233    6            �            1259    158604    snippets_id_seq    SEQUENCE     q   CREATE SEQUENCE snippets_id_seq
    START WITH 9
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.snippets_id_seq;
       public       jiilajabikozwv    false    182    6            r	           0    0    snippets_id_seq    SEQUENCE OWNED BY     5   ALTER SEQUENCE snippets_id_seq OWNED BY snippets.id;
            public       jiilajabikozwv    false    183            �            1259    158606    users    TABLE     f  CREATE TABLE users (
    id integer NOT NULL,
    name character varying(100),
    email character varying(255),
    login character varying(40) DEFAULT ''::character varying NOT NULL,
    password character varying(40),
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    created_by_id integer,
    updated_by_id integer,
    admin boolean DEFAULT false NOT NULL,
    designer boolean DEFAULT false NOT NULL,
    notes text,
    lock_version integer DEFAULT 0,
    salt character varying(255),
    session_token character varying(255),
    locale character varying(255)
);
    DROP TABLE public.users;
       public         jiilajabikozwv    false    2235    2236    2237    2238    6            �            1259    158616    users_id_seq    SEQUENCE     n   CREATE SEQUENCE users_id_seq
    START WITH 4
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.users_id_seq;
       public       jiilajabikozwv    false    6    184            s	           0    0    users_id_seq    SEQUENCE OWNED BY     /   ALTER SEQUENCE users_id_seq OWNED BY users.id;
            public       jiilajabikozwv    false    185            �           2604    158618    id    DEFAULT     X   ALTER TABLE ONLY assets ALTER COLUMN id SET DEFAULT nextval('assets_id_seq'::regclass);
 8   ALTER TABLE public.assets ALTER COLUMN id DROP DEFAULT;
       public       jiilajabikozwv    false    162    161            �           2604    158619    id    DEFAULT     X   ALTER TABLE ONLY config ALTER COLUMN id SET DEFAULT nextval('config_id_seq'::regclass);
 8   ALTER TABLE public.config ALTER COLUMN id DROP DEFAULT;
       public       jiilajabikozwv    false    164    163            �           2604    158620    id    DEFAULT     h   ALTER TABLE ONLY extension_meta ALTER COLUMN id SET DEFAULT nextval('extension_meta_id_seq'::regclass);
 @   ALTER TABLE public.extension_meta ALTER COLUMN id DROP DEFAULT;
       public       jiilajabikozwv    false    166    165            �           2604    158621    id    DEFAULT     V   ALTER TABLE ONLY forms ALTER COLUMN id SET DEFAULT nextval('forms_id_seq'::regclass);
 7   ALTER TABLE public.forms ALTER COLUMN id DROP DEFAULT;
       public       jiilajabikozwv    false    168    167            �           2604    158622    id    DEFAULT     Z   ALTER TABLE ONLY layouts ALTER COLUMN id SET DEFAULT nextval('layouts_id_seq'::regclass);
 9   ALTER TABLE public.layouts ALTER COLUMN id DROP DEFAULT;
       public       jiilajabikozwv    false    170    169            �           2604    158623    id    DEFAULT     l   ALTER TABLE ONLY page_attachments ALTER COLUMN id SET DEFAULT nextval('page_attachments_id_seq'::regclass);
 B   ALTER TABLE public.page_attachments ALTER COLUMN id DROP DEFAULT;
       public       jiilajabikozwv    false    172    171            �           2604    158624    id    DEFAULT     `   ALTER TABLE ONLY page_parts ALTER COLUMN id SET DEFAULT nextval('page_parts_id_seq'::regclass);
 <   ALTER TABLE public.page_parts ALTER COLUMN id DROP DEFAULT;
       public       jiilajabikozwv    false    174    173            �           2604    158625    id    DEFAULT     V   ALTER TABLE ONLY pages ALTER COLUMN id SET DEFAULT nextval('pages_id_seq'::regclass);
 7   ALTER TABLE public.pages ALTER COLUMN id DROP DEFAULT;
       public       jiilajabikozwv    false    176    175            �           2604    158626    id    DEFAULT     ^   ALTER TABLE ONLY responses ALTER COLUMN id SET DEFAULT nextval('responses_id_seq'::regclass);
 ;   ALTER TABLE public.responses ALTER COLUMN id DROP DEFAULT;
       public       jiilajabikozwv    false    178    177            �           2604    158627    id    DEFAULT     \   ALTER TABLE ONLY sessions ALTER COLUMN id SET DEFAULT nextval('sessions_id_seq'::regclass);
 :   ALTER TABLE public.sessions ALTER COLUMN id DROP DEFAULT;
       public       jiilajabikozwv    false    181    180            �           2604    158628    id    DEFAULT     \   ALTER TABLE ONLY snippets ALTER COLUMN id SET DEFAULT nextval('snippets_id_seq'::regclass);
 :   ALTER TABLE public.snippets ALTER COLUMN id DROP DEFAULT;
       public       jiilajabikozwv    false    183    182            �           2604    158629    id    DEFAULT     V   ALTER TABLE ONLY users ALTER COLUMN id SET DEFAULT nextval('users_id_seq'::regclass);
 7   ALTER TABLE public.users ALTER COLUMN id DROP DEFAULT;
       public       jiilajabikozwv    false    185    184            H	          0    158510    assets 
   TABLE DATA               �   COPY assets (id, caption, title, asset_file_name, asset_content_type, asset_file_size, created_by_id, updated_by_id, created_at, updated_at, original_width, original_height, original_extension) FROM stdin;
    public       jiilajabikozwv    false    161    2401            t	           0    0    assets_id_seq    SEQUENCE SET     5   SELECT pg_catalog.setval('assets_id_seq', 28, true);
            public       jiilajabikozwv    false    162            J	          0    158518    config 
   TABLE DATA               6   COPY config (id, key, value, description) FROM stdin;
    public       jiilajabikozwv    false    163    2401            u	           0    0    config_id_seq    SEQUENCE SET     6   SELECT pg_catalog.setval('config_id_seq', 26, false);
            public       jiilajabikozwv    false    164            L	          0    158528    extension_meta 
   TABLE DATA               D   COPY extension_meta (id, name, schema_version, enabled) FROM stdin;
    public       jiilajabikozwv    false    165    2401            v	           0    0    extension_meta_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('extension_meta_id_seq', 1, false);
            public       jiilajabikozwv    false    166            N	          0    158535    forms 
   TABLE DATA                  COPY forms (id, title, action, redirect_to, body, content, config, created_by, updated_by, created_at, updated_at) FROM stdin;
    public       jiilajabikozwv    false    167    2401            w	           0    0    forms_id_seq    SEQUENCE SET     4   SELECT pg_catalog.setval('forms_id_seq', 3, false);
            public       jiilajabikozwv    false    168            P	          0    158543    layouts 
   TABLE DATA                  COPY layouts (id, name, content, created_at, updated_at, created_by_id, updated_by_id, content_type, lock_version) FROM stdin;
    public       jiilajabikozwv    false    169    2401            x	           0    0    layouts_id_seq    SEQUENCE SET     6   SELECT pg_catalog.setval('layouts_id_seq', 5, false);
            public       jiilajabikozwv    false    170            R	          0    158552    page_attachments 
   TABLE DATA               F   COPY page_attachments (id, asset_id, page_id, "position") FROM stdin;
    public       jiilajabikozwv    false    171    2401            y	           0    0    page_attachments_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('page_attachments_id_seq', 2, false);
            public       jiilajabikozwv    false    172            T	          0    158557 
   page_parts 
   TABLE DATA               D   COPY page_parts (id, name, filter_id, content, page_id) FROM stdin;
    public       jiilajabikozwv    false    173    2401            z	           0    0    page_parts_id_seq    SEQUENCE SET     9   SELECT pg_catalog.setval('page_parts_id_seq', 60, true);
            public       jiilajabikozwv    false    174            V	          0    158565    pages 
   TABLE DATA               �   COPY pages (id, title, slug, breadcrumb, class_name, status_id, parent_id, layout_id, created_at, updated_at, published_at, created_by_id, updated_by_id, virtual, lock_version, description, keywords, "position") FROM stdin;
    public       jiilajabikozwv    false    175    2401            {	           0    0    pages_id_seq    SEQUENCE SET     4   SELECT pg_catalog.setval('pages_id_seq', 30, true);
            public       jiilajabikozwv    false    176            X	          0    158577 	   responses 
   TABLE DATA               E   COPY responses (id, result_json, created_at, updated_at) FROM stdin;
    public       jiilajabikozwv    false    177    2401            |	           0    0    responses_id_seq    SEQUENCE SET     8   SELECT pg_catalog.setval('responses_id_seq', 1, false);
            public       jiilajabikozwv    false    178            Z	          0    158585    schema_migrations 
   TABLE DATA               -   COPY schema_migrations (version) FROM stdin;
    public       jiilajabikozwv    false    179    2401            [	          0    158588    sessions 
   TABLE DATA               =   COPY sessions (id, session_id, data, updated_at) FROM stdin;
    public       jiilajabikozwv    false    180    2401            }	           0    0    sessions_id_seq    SEQUENCE SET     7   SELECT pg_catalog.setval('sessions_id_seq', 1, false);
            public       jiilajabikozwv    false    181            ]	          0    158596    snippets 
   TABLE DATA               }   COPY snippets (id, name, filter_id, content, created_at, updated_at, created_by_id, updated_by_id, lock_version) FROM stdin;
    public       jiilajabikozwv    false    182    2401            ~	           0    0    snippets_id_seq    SEQUENCE SET     7   SELECT pg_catalog.setval('snippets_id_seq', 9, false);
            public       jiilajabikozwv    false    183            _	          0    158606    users 
   TABLE DATA               �   COPY users (id, name, email, login, password, created_at, updated_at, created_by_id, updated_by_id, admin, designer, notes, lock_version, salt, session_token, locale) FROM stdin;
    public       jiilajabikozwv    false    184    2401            	           0    0    users_id_seq    SEQUENCE SET     4   SELECT pg_catalog.setval('users_id_seq', 4, false);
            public       jiilajabikozwv    false    185            �           2606    158637    assets_pkey 
   CONSTRAINT     I   ALTER TABLE ONLY assets
    ADD CONSTRAINT assets_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.assets DROP CONSTRAINT assets_pkey;
       public         jiilajabikozwv    false    161    161    2402            �           2606    158639    config_pkey 
   CONSTRAINT     I   ALTER TABLE ONLY config
    ADD CONSTRAINT config_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.config DROP CONSTRAINT config_pkey;
       public         jiilajabikozwv    false    163    163    2402            �           2606    158641    extension_meta_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY extension_meta
    ADD CONSTRAINT extension_meta_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.extension_meta DROP CONSTRAINT extension_meta_pkey;
       public         jiilajabikozwv    false    165    165    2402            �           2606    158643 
   forms_pkey 
   CONSTRAINT     G   ALTER TABLE ONLY forms
    ADD CONSTRAINT forms_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.forms DROP CONSTRAINT forms_pkey;
       public         jiilajabikozwv    false    167    167    2402            �           2606    158645    layouts_pkey 
   CONSTRAINT     K   ALTER TABLE ONLY layouts
    ADD CONSTRAINT layouts_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.layouts DROP CONSTRAINT layouts_pkey;
       public         jiilajabikozwv    false    169    169    2402            �           2606    158647    page_attachments_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY page_attachments
    ADD CONSTRAINT page_attachments_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.page_attachments DROP CONSTRAINT page_attachments_pkey;
       public         jiilajabikozwv    false    171    171    2402            �           2606    158649    page_parts_pkey 
   CONSTRAINT     Q   ALTER TABLE ONLY page_parts
    ADD CONSTRAINT page_parts_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.page_parts DROP CONSTRAINT page_parts_pkey;
       public         jiilajabikozwv    false    173    173    2402            �           2606    158651 
   pages_pkey 
   CONSTRAINT     G   ALTER TABLE ONLY pages
    ADD CONSTRAINT pages_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.pages DROP CONSTRAINT pages_pkey;
       public         jiilajabikozwv    false    175    175    2402            �           2606    158653    responses_pkey 
   CONSTRAINT     O   ALTER TABLE ONLY responses
    ADD CONSTRAINT responses_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.responses DROP CONSTRAINT responses_pkey;
       public         jiilajabikozwv    false    177    177    2402            �           2606    158655    sessions_pkey 
   CONSTRAINT     M   ALTER TABLE ONLY sessions
    ADD CONSTRAINT sessions_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.sessions DROP CONSTRAINT sessions_pkey;
       public         jiilajabikozwv    false    180    180    2402            �           2606    158657    snippets_pkey 
   CONSTRAINT     M   ALTER TABLE ONLY snippets
    ADD CONSTRAINT snippets_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.snippets DROP CONSTRAINT snippets_pkey;
       public         jiilajabikozwv    false    182    182    2402            �           2606    158660 
   users_pkey 
   CONSTRAINT     G   ALTER TABLE ONLY users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
       public         jiilajabikozwv    false    184    184    2402            �           1259    158667    altered_pages_child_slug    INDEX     N   CREATE INDEX altered_pages_child_slug ON pages USING btree (slug, parent_id);
 ,   DROP INDEX public.altered_pages_child_slug;
       public         jiilajabikozwv    false    175    175    2402            �           1259    158670    altered_pages_class_name    INDEX     I   CREATE INDEX altered_pages_class_name ON pages USING btree (class_name);
 ,   DROP INDEX public.altered_pages_class_name;
       public         jiilajabikozwv    false    175    2402            �           1259    158671    altered_pages_parent_id    INDEX     G   CREATE INDEX altered_pages_parent_id ON pages USING btree (parent_id);
 +   DROP INDEX public.altered_pages_parent_id;
       public         jiilajabikozwv    false    175    2402            �           1259    158678    altered_pages_published    INDEX     P   CREATE INDEX altered_pages_published ON pages USING btree (virtual, status_id);
 +   DROP INDEX public.altered_pages_published;
       public         jiilajabikozwv    false    175    175    2402            �           1259    158681    index_sessions_on_session_id    INDEX     P   CREATE INDEX index_sessions_on_session_id ON sessions USING btree (session_id);
 0   DROP INDEX public.index_sessions_on_session_id;
       public         jiilajabikozwv    false    180    2402            �           1259    158688    index_sessions_on_updated_at    INDEX     P   CREATE INDEX index_sessions_on_updated_at ON sessions USING btree (updated_at);
 0   DROP INDEX public.index_sessions_on_updated_at;
       public         jiilajabikozwv    false    180    2402            �           1259    158691    key    INDEX     5   CREATE UNIQUE INDEX key ON config USING btree (key);
    DROP INDEX public.key;
       public         jiilajabikozwv    false    163    2402            �           1259    158692    login    INDEX     8   CREATE UNIQUE INDEX login ON users USING btree (login);
    DROP INDEX public.login;
       public         jiilajabikozwv    false    184    2402            �           1259    158711    name    INDEX     9   CREATE UNIQUE INDEX name ON snippets USING btree (name);
    DROP INDEX public.name;
       public         jiilajabikozwv    false    182    2402            �           1259    158728    parts_by_page    INDEX     F   CREATE INDEX parts_by_page ON page_parts USING btree (page_id, name);
 !   DROP INDEX public.parts_by_page;
       public         jiilajabikozwv    false    173    173    2402            �           1259    158735    unique_schema_migrations    INDEX     Y   CREATE UNIQUE INDEX unique_schema_migrations ON schema_migrations USING btree (version);
 ,   DROP INDEX public.unique_schema_migrations;
       public         jiilajabikozwv    false    179    2402            H	   3  x�ݖ�n�6������\r�G�r�m��-ЛE�meeI�����;���e/z,dD����������W�K�ϳ�����?���/��-K�ȳ�˫�C߇`�b�?R�Z*�%$�B;5�J;�}���{ d�[,����;���/���t?�/u�1P4Czγ�W�Ϫ���؋	�Rs%�{"���iL�Cs>(�X�-���Ǣ�U�.���}[K�f��Z�.d�T����i��L!M?!��쏦yP�}���2�����u�f��rG���6<��k���4b��&��8��	؟�ƌ�	����i�4�h ����!AC�0��ǳҷ�j���9�U��)��8�V���lO1��<p������5��2|ų����}h�ݾ�ۼL�4������X�ꉷ$��EnWsc]���]ݾe��B���ۢ:6y�_�=	5?��W��ҧ��=V�?/�nT��z����\K�Vcm:坺�J&��֩��H�YUv����^���2z2�V	8� ��wL^(�&��X���l�搖Y��o��U�k���+4P��D�T�R��|*v��f�ʆ�v�f�����P��.��>׊KG'7Q�8��vi�t
C�I�x�Rlc�gqj������@䗊��j��(+�_Čt�(�2(��#�~q�M�gE�KM J}� h�6鳯у�R/�����43��2���K�y����Fa�3W4B"U����iȟ(�������F>��=`ts���0c��)���ظ��u'�"a^V&��J�`�^Z|_(8*�p��tCO$�ۑv�+�.�����+�]�U��T����o��P寋0�o �/2�E�J�I�쌭c�&R9E�h�fd0�a��P�[�W���C��x�e�/�������۹�E/��aaB�% ��2=݁�8aּ�[l�+T�(
�H���d��K���ട<���$�;�d���7Y�S�3,G��Y��+,�D{��E�&J�FR=�zt�r<�<�nl^Re�J1<-(;ݱ��{���T)����վ���I}k"hFi�S��"�9��U      J	   �  x�uU[O�8~v�ž�JhK˥Ү`{�˲���TM�Ic��!vچ_�3NR
�Vje����7ӱ��P&��k�@��x��ǽx`����2U���`*�K��Ԗ�f���\9_�W�H�T��E�I���q�����r�2K��J�l��P8��.a����X�I�2>1P�s��yp,R̠��E%,�~*�D�`5�mڈ+�ȷ~XE�R= nZ�r��O�7�瑔7^���:�1�&���!���!ab�$BG�$��T!n�(5Οͳ�_#y��I�*KɏJ1������Jp|�D�b���
ޑl��}��?�\	\���@�Y��W�V�y>�<�µ�M{�U�"�f�Rʔ�X��_Q;�ѷ�����X����%�/h�J[r��Pr3���d�;e� &U�]���Fk0+�a辰��.�5@�J�&X�*�ܑK��.g*�D8t�2XxU���OF�'��x�98�+^h� Ո��g���p�О0w-��w�_;*<h�|*��,1`ӛ�cn���s.���� M#z��(턱��o'�і��`A�So$�R�:�]�;�sdBtZD������|t(~9`|��F�ݷj$aRc�2��P�<�N��	�o�ý�k��08*),���%h� Ӊ,�u���ƣ�n�K�J-aҲm��$g�[�ն�S54�����dNG�#1��O�σ=C�>L�B�,�,�3����1����<�$9����@�����hf��ż��v���_��D'Bأ���6��r��T�Nnv����奤㚶�%y1]���Z%+&�PBYj��-I:N��� f�yN�u��Q¶�|���.i�f��64���Z[��*#�Q����Zzڗ_�v�mSga���.!n|?=��v�o[��	Ɯ�%Ǯ�]�V�\�b@�|��p��14�\П��^:N�@�Q�`+/fg�A6ne����h����}�-NX]|T8Ny��J���r~t��l"���N1���.�L[��_�!��rKQ~�4��uX����=�:Y�e�s�AL��LV؈�o7��O_�x�����_'^^>]�鞢CZ%^T�\�]g O��v����47�����L��ۛ��[�:�㝽�QW��P㬭h�'/�'gg����p�*��`0�h1��      L	      x������ � �      N	   �  x��SM��0=�_�[N��je��Ҫר�^#U8��1�=.Ϳ���|6AH�f޳�#Ee����-5SG�r+��^���^pY�E�U[�q.��X�=�ݓk*َK�o��" ��j�͜��%�?�1�ˉ_��	9/7B��`?����U_\p���~�+�k\I�ˤu4��
����rbe��:-6��o�.'�@��w$�Э:N������'�C�O_���sE�3���g�+3����g��ȕ�/�����2́I�`Y��� �ռ�p����1��>.�\�ӏi��붡��q}�����4��,�R�~�IB��F�:N�/��K�B��Fr �Q�QBn)5g�}?=;��!uU[t^��t�xe;-��꺞M���v���,`8u�~\cW�&�?F������۝)���/B�4�-r��2)r���u�]FQ��2��      P	   N  x�uTێ�0}��p��O`n�� `�f�j�mU��J+E�	d;���H�$Q��3��9�����&ׂ'�G;�EV!�M#V$e���ş�G�����Iم�Z��'d�ߛ"�lC+a�|ED��A� ��)�j��'e!Y!Qp���4ǲ-�r�F��{S�u��z��-͆�dIT���}��<K�������Y�g������>�~�!l�˝�?��_�o�������:�������[���²Uq�h�^���G��3� "׌��c�XYU�iݰo���V�X�c�Ě1)NY� �e�Q�S�CqN��V��τi�CYb^��4���Z�!Ь`�K����Y��U�)�;���	�~�� ηc�䋳�!(�@UJ�B�E�ԝ�T��F��.�	^#W��;*�U͘��5��2��66��w'j��gX6�&����Wo���6�+�Y4e'�ަ�(^3�J�Z������bIp�KP�܉�Jf2g zv�n����r�7�nG��v�z_��m����[�b��v�[R~��7 #��˯�紱�aC���(���lK7u]�����      R	      x������ � �      T	      x��\�nG��-=EE�r@��8q|Yvbq"D�x�Š�.�m7���n�L0����Z`���Q�I�;�TUW7[��E �Q,��u9��\��w�&]���,�;��zk���T�T��jb�<-�Tj��Z͓J�M�V��*7�}V��Ԕ|���.�C���Hu���Vc�~�Ϋ;V��OJͣ��YdVi��o�zez��h�x�D���|ȫ�e�����ӟ
�����f�c&��f��VW��^?�c�J1�==�H�Pb��I��4�4m~�TO�n�������tO�7�=T>̦�:�.*�LJ��̓b����y��������<u<vO�,V���#\i�>_o�۞c�A�efʬZcV���!� >B3n� �G�C���r�+U$-LY$˿|X0_~*�q��ӝ�ݣ/w�IQ�2����VI����dE��ݘR���:+�;G��G��g^~X�R��u���0A��mf�m��W�D��ʟ����G���6��+���Q�N �v�-���s�L�~�'�cR�U]��G��i.��*՘��6`�l���=s|�{�E[	?۟�&���\ۇ����*��l�	?������P����25�T����#��fe5�gP㵚�ل��������$r(���d�O@�e2�ʺ9ϧl�	Ε�T$�9M�s�-���"������%i?�+:G#�1�wnV�M��1�5����L)'$|��wp��ֹ��k����E���Y�窶�0M�C�dR��ƻ?�5/���޼����hT�����pb#�m����a'O�ܘ���s�:�Ue�=��X� ����L��j�y��~��'�L�#�g(XM���_��O������e<�-���M�bB4�Ov��w�JJ�����t8���\�����7��;,�o����=ʦ�������}Lp�W~[�}t��G��0K�d)�b�ɓ���\3�1�VY�I���{�MaA0�w&�ì�P����}���G��~j&5-3ؓS�uW����#w\h���'h�V��+��O�����L��V��Ԭ����l$�%$<�2�A�u�d�dw�ߊ�L3�@�Li��(���E�GF�֯�}<��~����t��qk��5��O1ѷ��昕��Ɓn?W�co>�s���)ܱo}NϾ���Q�To57j��$'������8C6]cD�W~�2���d|XjH���Dd2g`�Ac
��¢,�%R����<eX�.I���0�66�I�S�%��m�p��`�frH��`0��?���b���-�(pd�^�<�b�r���q�?�''&OC1ٕ�K��6��������|�i��M�$-o����s���\�_�Ŝd1����Π92<oC%>yBr*K�D�ܶ��]�1�m	}�_�50A�hrA#�R)E0��@�|EUf���"L9K�̲��l=�@�myKFv���z�c[��gs2V����A�X�θ��s�� {`�&]`�ygƃ�7A'>��I�b����ftͫ+�Z�N>�g�O�?oП��U �+�[��E�����{�Em�Șg�"���(+ y��d
�@L�*[��X*��ҕb�̮T��27k���<O����uT]#��fNkl�W���G�yu�A�#�`и�?�.���>���(�EPH�S��pb�&�{m�2��d�eƐ�`�l��X���E�f��k<�&5�avӪxKе*���P�}�{����V�F��`�AN���<\b㕞�1�������J�)T� 1�d���6�1q��!���ׄmU-c�pDu�L�c\AVy�����ra,�&�o��¬��>�`n8صt<��!̩y�^9�,����T��CY'�$���-��4��3�������}g����!s�٭������F�	�����QLK�o7�T��Q%6���`�t������;�ډ��v��� �e�Y���2v=�o@2�,bi�C�d]
�PG� ���vx�HB9�;�<�Jx$�>(�QB���&�¹":t^g���H�\L�bp�Y�iiAІ�{@ ��&�5|��-��	�b�I���O3��Q���,\�&u�	�"�t�`��k�&[)v_�f�c�;��~8n6%�4Ǧ�05t�cRE3�'�w��F�FG�Gp��9�5E��Zh�ZR)������D/��,��D��!��5�� ���_�Q���R?r���oKN`V͛��Ɵ`j0�s�?��~T��a��"wH�c�Xe�т�c�Ի5Cҙx�H��kL��Y6!en��y!�Ԡmo�;�������|�*Y[o��B.�V7��1�����Ym69����6$2'�_tRN�Bx�N1jŇ��?��R9�<#�3�d���}(�c�/l�����b`}`���m%oP�RS�L��hM[�Tz㞯��J�c'#z�V7��GD�1��Z[#O�H�lZ�`�-Ῡ����U�&��3U��#1�&X�7h�(~���Fv?B~�yS���^o&Ǣ�X�!�kg�w����,���^�L��[�[���$��di��XK�&����V�z�3����s�t3C��X,t�q��vhϙ$[�taش��0�lGd9B�_�l Rr>
�.��9>�=��F(���< �q>X��+:���Z�)f�,��	�GV����ue)-p.%�4���*Q��S�O6ZZ���r��CKC� E�чR��'WhA��d����l�W�j��?��NA��������0Q^]c�/3*J��A\���b#�pB�x`}�5ঞ��8Pi@X
�m?A��oI�J��ŹT7�+�.�8f3�U�+�]Z�(H��`��t�H�/z$��
>(�b�1��kt�gbS�A��@!���$��\̸ �A6Ғ�-��hf(4M����۴� ����+)Mز?������Vbi�����b�z������ml����� t#XO{ ?JU�f���jk��7*NO������>��E<�9]�nh�?��K:G���qf� ������1pZ)}�Ԭ�^_7T�P�E��6D�[@_�����%@* �0�����k��OH�|�vf�Bz���)'M�A�Yb/Jx_>�I�^�4��s"2��8�c�&�ϟp�=鄫D>v��
(`��y3�݈O��v��3�����/e1m�Ϙ�n��Q�`���1�bd<��U���xz�m�>
���\��:��B@���ŷ?^2�(a�|�9F0�|u�>x6q�A3� ��`J�%M�U�m��s^�OkP���MQg��V=GP��K]R���8���b�t����_�;q��zvvv�3��~��:�!�Tٔ�,M���l�^N���u�s/��cؾ�N0
�:_B��.�P�cX�.�@J3]`�:�N���}���(8�iG��s��n� ���J����,7l@$#�}�a���������~�������\�l�E�[�Vi���_��B�eI1�e���W�� Xn����ʗʗb��=j�V���c�5q@����]pi��>Q���xp�s�`�x#&��N��>����>N�oD���K������lV@�^iT{b~�>��]��?�X�ާ�J�DM�Y�-�����>���'��y�>So9 �8Pл1$H�q6rA�\�M�������'e0������z�rH�����C�$��L�j��c'���G�Zp$O��6��Dv�+��;ͨო8�a�D&		�J�`�)*���pV�Wu2�8��8��GRf!�&�
O�ob�X.1	i���x�X�Y��D��P���E0�g�,35A0�HZ��>��4�'�6�"	���KGcy�*Z�Ɯ��R5#��9�i��D]#9K����5
,�zUs�����qyD��v�T��ʨ�ɿsS+%+��$�')n�arj$��E�:�fj@i���
���fcɨ}Y�9R/����T˅��^<�D�G������%�`�	!�k4H���Т�(�"��M���r
�4�GU<���s��EY��A���b��9�q��7O7���B/Ƥ'K�n��哭���"uh[�u    |fu ]�"����D�m��jƅ� ��4%�,ڲ`=x@I�V3K�=�����D<�c�:���-��S��}nM�?tG�4 "{�7��T{O��Q�q?jCT�DJ�_9��\?������ڒ(������+"v��t}���]���԰�O�F#W*�&�����H��r�����a:^�O����7�0*�a��Q��#d����B�M�߹53��JAcb��m�R�F��jXq�"�R���r��#��;:><:��NFlr�O9�s �J�|�{Pu�Ve�]ei5�w�øK�Nb���SC�U27�ċe��t1��[`K���JH�	�0�L��Q<��Ν���{�>� M)-~ǡ��z����94�ҹ���h�e���V/̪̤/p�k{����<]�l������~�����|����WP�`��ɇi�%���8*�A�.S1�7/�F���p����R>~�8)Im�"6���u==�ˍ�6w~K�R��AF�,��"�a�E�nr�؆g2JeOtv%9̉!�D[�0�KCd	��P�Y�H�Α!5�����$t�`�T�_C�IȈV�,(��snX(�n�	?K�97&S��y���j�.D��@�K�q��4;�im}���4 +�I���#��@Uε�~��|��#I�S����+*}�-�Q%әD�p�S�{�d2����*¾L���3�4@P�H�]q����\���%�r�?Ġ�e#�4T���"-i/���!�����&f�����7J��pK8�l��sM��ԔI�׎���|����0����0�KV�Xbћ`���,ػQj�(�1�����m���7?f�IF�$�v�6S�C�����g��$QI�Y0L����0��у^P\Ү����_脋,�m� 	D"鶈8O�m��I81.�[[�W�:�i+C4���r6/��N)j,<n�Y�M87v�E���O�<5Uj.��SС����,o6��؈���(>P��sѩ+�5���{��m�����J��+3�XV���" ��}��Xb��c�o��#�����*�y��n���6Q�XϺ���G��dAR��=�>�j�Z@h��6������_#�.Š�+�1;C��.�Ơo'�πd�=JӬ$Nqeg.W��Ƶ^mr��ݾ�f����o͓�@���pN�)�o�Άj��������|ɆL��<�����۩@������(���.�P]fn����a��^�?b�����bt��Łh��! �o��n�^ ,W�㮆����d��N��[-��:%q�����s)��Rg����3���J>�v���8��:h���67g8�7K�1ߓ#q�̨����A��6#�uT�#�:��Z���W�� F�eF0m���@}������g�}��j��;L��$5���I/�,���(��y��ϳ��d�A3ik�h*�E�Br�#�	gj)@����P�oa��)��n���
�^(���j3]�"�1�T<������#���E!���1!��2o����W��|zp�����Qճ�{��su6���f�!ƚb%U��I��/���n���[���s٭;ao٭;膲��M}��w�D��%���z��{��o5	��_d�N*��5����_lԡ^��:�e��۝�iXL��	Io2����0�������t̸͕0߽��ꄣ\k�v�x���J��\I�[�q���A��(IKk�x�����UT��o������J�";�J�l��k~�}kAפSi?��o�rK}е�'��q%�����˧[Z��wtE|��R@j*��Ҵ$����9<���A�2\�`�
�f���Tp�iA�b���=�|�X�.�B.U{��n�	�L.�t�F�
6B@Nei""�y0Nh���e'K5K�ԘS�+��҇��B���u�RS��dQJ��r�Q��� �v��*���LX�k�h��C-��!�j�ru�:����=<E�#��IiLl��Y����G�:s��������}tn�7�������
.өJ��7���b�(�%k�V9�Nxi�͜�1�X�ک{�Jr�)u�����/��K�����l��{�(+uB��s��ܝ�0�k���=�I�I�N'�qgl�ZF��X���XV\j�u+P�������l�!8�H�3e+�B{��=`�Ǉ��x�s*�y\��k��4{�Y��9&�^f�SR�eP�N�����,��5�c�� t;I
2&\������B�(��w��)�����C;�ˍ�@�f9�r)��j�"4�3�rD����0��v`Z���tQw��)(�u�|gJ')��[RO����MѬ>T�Ĥ$��.:R����F��{���!X�T��76h�g��>�#�s!|vo������>"���wQ/E�W0��B	m�up�H�s6��gJ�2��熭�^6D�:~�x;�J�΁31�M/I��Y� Xyo�/y���va*�\��	Nrn��q�)��R[�;V|�]]����������u��x�ԧrmp�-���D��먟A)�\c�f�Hz��˄N[��bro�H �G��p�</���$�`���O�j΀���ہm��� �9.����
�#���"[���3 �oe���Et���6��F/b���4]@��1k�^� D��6���a��Lv��:mWrw��u0�zb.��լ�IH��5Ĭu?)�Mڰ�q�k�+9��~����f�;	�wM�Vxi�;�&%ή�l�ݐJ<��F~�B��A��Hb��޹�{|x��.�D^7�d�^�K��:��ͨ����?��ͽ��<�����o=�ނ���q�"��_w��q.�;	5��[!�P���&-�&kY	NUT��z���#�b�fU�7_��UīR�bϧ��j�M��5�6U�}a��Vn��L,x��$˳�(���Wf�Q�F�l�;�{���	�'��R<�rO�<�33zC�T�s���1|�A*�<Ga	5���8Bb���o�H��ӶY^Xox�S��.�<iB����q.6E-n=1���MJ�^{]em;E�GM]߷�m�M���Ǜto't�&f �("�^�s)��y���.s50�|�W[��^�(��$p66���Տ��z�n�W�\�9ڽw�{x~��`�1���[ݴS�M�
N�v��<��D�^t@}#Z��Y�����J�6��ƅ�{�3���ձ�@JoTK��9K<F�D9k����"��Hň7��B�vAU�Io�Ȇ�j��7��O�֑L��������ۿ<�ߍ��ʠؽp�<|������qƳ�,����;p�n�qi�;�De>.��r8=��I�`0�K�I�6ō���]�2���[�\<i�JhSc����+"Ph�����/l��ҭ����c��2b9�@��M��ʕ%z�	!*�kk@�P��4z0芾/�#��7�J�I+N�� �\<3�y��ґ|"G�4>��5�2��PSSZ��nz��k6�t�͌�#e�6�p�|=$ɍW����b�n����7�w�6��R��YD���?�����Mڋd��4p-��{�aM`w���D��(`�u����>���T�H��١��ڡ>��7�IG��Z��Qh���,Ms`%GEE�zT�	�FqZԅ(��,p���*Ġ�ǑmO�A3+x�2�BR��A�S/���mp{��NN^	�o��N��}�e�^�Ę,s]j4� �C�se�<�TrÎ�<��W[e�:��>����馷+�E��Lp����
Q�i�����A4,J��˺��4��%Ƽ6Nz�̯H�*Dh)�g|�g��GԱ�3�;>�=��I%cƖ�"�M� �Ѻ�����h:4����R2Q��7���>*ڛ���:�vw$�Q��Q�w3��J�+
�������q;�Ŝ�����՗_�W��:�O�m�{,D�o�{Hc*�p۠�#�_�{��Cu�P�p�����(��w����C�	�w�N�*|�[���mC #   �nu�]�Q������ʼngl�v���i�������      V	   F  x��WKo�6>ӿ��[*z�PA��f$�^��ȴM�$
��l�}��[���â-l��pD�|��AF�oZ�.�2=���<:�c�� ��VBU���Q�V[ܪl���c����Y�,�O�F�!J����e���y�O]ߧ�]N���q� �N��/���#��~�0<��bQT�z�S.D�\6~�?g*͎�<y(en#��ݩ��7�_5��a/jݧ���!�C)&qBxB#Ϙ�"�x�G	�\�/�3��o�����=W�����l�O*?5R��cZfF����*O3x�ҀCfO�O���F��ix��"��^Źۣ`\��p��+�;�<y�O脈mC�Y&���Z�T�;���cq�
1*8�z���qF0���	#��!=,�8�Y�SJ�q�_�k�6`���k�)C�kv>���\d�͜H7K�`O��=�~�E��\]_ݳnD�/ީ7-3�j1go��N�l�6n���xLf��?���::��>�\<��:��G�d�h�p�)D3��i@ũ9��=O�'�f�1��c�pTEZ�_���۟.�g	�V��]�1����
��4Bw-���P����E�>w:6�:[�Ev#QBQ �C��^R�zaDBz%��c���ܝ�|�����]�R�B����m����P��Ne��L��8g$6�0^XmHZUՙ8<^к�'��$��SOh�2��j�X�����h����#nd�O�w|�.���ujЭ��X�X�Y =ȉ����$�#z�21�c+S�.^�Ň ���ϊ�?�\ȡ��'P�%l�����,h��O ��Q -v�}��< �e$��a�������|��v�g���� ��^N��Ef�r?�xy�dx?L���3DճH�؆V�a~���
��d�:v9�8�ҏ�b���GY<�ߤ`�C�c�7�����XJ�$�P��?�!_T(�� ۛ0j�� r�1��xI8�j�ӡ��[伦L��:~��r��2��D��w�i��B�^R�W�
K� <([;�*rU�MJې�,6���i8�����R���೗P{�����P�e�D^���Y4��U���F���Ti�N��#����2�~���F�Wx��Nys��u�W
��/q�[[�F$Xx�@@r@`L�nu#�\�(��� �}k����D9�B���dC/����מbS���,����I-ju����v2�����:ѐ���4��kR{��Ƿu�Sؼ�3��܆,$ �7����A�C��;Hb��>	��
4�<��/�v����[\i����Yꩁ��n2�_|��5�$�C�˃�N���E���a���l6�WFK      X	      x������ � �      Z	   �   x�]�M
�@��;�P��Lg/�����E
�����TE��@�������:�&�3*�IC��K��E5R�Y3�G�)b�Cr�G@DB����^����9�_�}��J������C;t���Cw)ku�9�1Ҕa�:'T������j.�5c̈́c7M��:�p� x�m]=      [	      x������ � �      ]	   `  x��W{o�6���W���z�N�����6`@������ȢJRv� �}G=l��h��0L���݋�;�)� ���"�tF"��,M�"J���c��"K��W1���D���q���0*DZ.p��x���l�f��J�l�t=6�*YMp5����7��D�O�iB�)�������YbVj.�����tϼxN��
�ٜ���ڴ㌥�6��<�(;��c
W�ަ���2&�;��Sk��,��0�.l��M�P��X�SY�*<u&h9�cvj�n�t��l/�C�~Կ�|o�6��A�;>~�ݠI�oL�Q��S�ݖ�n���5xMZ>�Y(���q��aα� ��x�w^t�΂*�h(�Rz�xJ�*�s	������D�eM�۞�0ul�Z���H�F_�*��K0�:Gh�Sn,�	�0��cAif��)n6�L�:�nK��u���1�CÂpǰ0
ϣ~X6�ܐ%A	,/�VmӶ�&H�͹Ry享�ʙq>K��{#Iΰn܊W�uRV��~�Ib�7�*��K0}��f��#,��.�dj�,C���e�-��&��=��W8ۢH�`�\��΍�u����g���M�7�����ڎ�\�\dT�}�_�^W�s+�q��Z�9��dmM�,V�gV��}n�?ed	)b��J�u�i� H�
A^µ8 �.�$�=<�t�Z朲�\�p���9��7l�}��f	�~��pS����f�^�a�?lYvG�]�,�+�g:E�[<�e�lAf����z8���p��xI�ȟ�w.����Ҕ�	�14��ʉ����W<�i~���u�L"hWu����7j�1�ѫ��u��FԀ[3^�QU�M2���e�fD#��;g��Y���WY��Z�ԉ������ķT��W3���U5�2N��A��M��$:WJ/�"e��ʪX ��k��n[m8l�Z=a?�V��ag�5WNb]^,�IK�&�,N��^	�q�*Q�ԡw1�q�X�B�??7��a�״s���~yA\�
��	�&U���_:�Y$K�*y!b*G.}�s����2H�jlNʙ>�T|Ҍw����;���Mp�A��H��jL���r���j�׭o��O�C��(|	�`PB��w��>�W$U_���/s��0�<_��F��'�~�P�*��{�N���HB�������u��n�@���s�I��6��	�l��dc��f_���s-lCiy���+�+��Rl�y��Ͳ����K�5h�[i�1�ݷ�<�3��:�����;�n,xK��î�T���' ����x7��+�aN�H�5�U-u������8l? ���)�pB?��	N����~t����n�;�      _	   �  x�e�1�1Ek���IQ�T��*@�m(�
�m�;�`o�#HHP�<���~.���v�\�����/z_>&{����p�}ɩj�bO< rk�S�YJq* �x�x�x�0'���Z:%8��,3��IjH��N�!F��\Kfa������c�L9�Qx�~\�~o��]����=��K�2�����}�^�V�@��D3Um��'��kp�tz�y"�Twb�x�$x!�5*�`d)u55j��%y�@�+�mٵ�[��K�eoc`��������~y_��>��_������y~���O_u٪z�{/+P��z�#Zp �ذ5�"9�`��߶P��g����VN����D3剋�������a ���l�����aj��`��Ll�mS
����v�E+�:������ ަ���=H��     