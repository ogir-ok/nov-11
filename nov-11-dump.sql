--
-- PostgreSQL database dump
--

-- Dumped from database version 15.1 (Debian 15.1-1.pgdg110+1)
-- Dumped by pg_dump version 15.1 (Debian 15.1-1.pgdg110+1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: auth_group; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);


ALTER TABLE public.auth_group OWNER TO postgres;

--
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_id_seq OWNER TO postgres;

--
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;


--
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_group_permissions (
    id bigint NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_group_permissions OWNER TO postgres;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_group_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_permissions_id_seq OWNER TO postgres;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;


--
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


ALTER TABLE public.auth_permission OWNER TO postgres;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_permission_id_seq OWNER TO postgres;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;


--
-- Name: authentication_user; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.authentication_user (
    id bigint NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    first_name character varying(150) NOT NULL,
    last_name character varying(150) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL,
    email character varying(254) NOT NULL
);


ALTER TABLE public.authentication_user OWNER TO postgres;

--
-- Name: authentication_user_groups; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.authentication_user_groups (
    id bigint NOT NULL,
    user_id bigint NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE public.authentication_user_groups OWNER TO postgres;

--
-- Name: authentication_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.authentication_user_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.authentication_user_groups_id_seq OWNER TO postgres;

--
-- Name: authentication_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.authentication_user_groups_id_seq OWNED BY public.authentication_user_groups.id;


--
-- Name: authentication_user_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.authentication_user_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.authentication_user_id_seq OWNER TO postgres;

--
-- Name: authentication_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.authentication_user_id_seq OWNED BY public.authentication_user.id;


--
-- Name: authentication_user_user_permissions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.authentication_user_user_permissions (
    id bigint NOT NULL,
    user_id bigint NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.authentication_user_user_permissions OWNER TO postgres;

--
-- Name: authentication_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.authentication_user_user_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.authentication_user_user_permissions_id_seq OWNER TO postgres;

--
-- Name: authentication_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.authentication_user_user_permissions_id_seq OWNED BY public.authentication_user_user_permissions.id;


--
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id bigint NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);


ALTER TABLE public.django_admin_log OWNER TO postgres;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_admin_log_id_seq OWNER TO postgres;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;


--
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE public.django_content_type OWNER TO postgres;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_content_type_id_seq OWNER TO postgres;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;


--
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_migrations (
    id bigint NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


ALTER TABLE public.django_migrations OWNER TO postgres;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.django_migrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_migrations_id_seq OWNER TO postgres;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;


--
-- Name: django_session; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE public.django_session OWNER TO postgres;

--
-- Name: imdb_movie; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.imdb_movie (
    id bigint NOT NULL,
    imdb_id character varying(80) NOT NULL,
    title_type character varying(80) NOT NULL,
    name character varying(255) NOT NULL,
    is_adult boolean NOT NULL,
    year date,
    genres character varying(80)[] NOT NULL
);


ALTER TABLE public.imdb_movie OWNER TO postgres;

--
-- Name: imdb_movie_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.imdb_movie_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.imdb_movie_id_seq OWNER TO postgres;

--
-- Name: imdb_movie_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.imdb_movie_id_seq OWNED BY public.imdb_movie.id;


--
-- Name: imdb_person; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.imdb_person (
    id bigint NOT NULL,
    imdb_id character varying(80) NOT NULL,
    name character varying(255) NOT NULL,
    birth_year date NOT NULL,
    death_year date NOT NULL
);


ALTER TABLE public.imdb_person OWNER TO postgres;

--
-- Name: imdb_person_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.imdb_person_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.imdb_person_id_seq OWNER TO postgres;

--
-- Name: imdb_person_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.imdb_person_id_seq OWNED BY public.imdb_person.id;


--
-- Name: imdb_personmovie; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.imdb_personmovie (
    id bigint NOT NULL,
    "order" integer NOT NULL,
    category character varying(80) NOT NULL,
    job character varying(80) NOT NULL,
    characters character varying(255)[] NOT NULL,
    movie_id_id bigint NOT NULL,
    person_id_id bigint NOT NULL
);


ALTER TABLE public.imdb_personmovie OWNER TO postgres;

--
-- Name: imdb_personmovie_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.imdb_personmovie_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.imdb_personmovie_id_seq OWNER TO postgres;

--
-- Name: imdb_personmovie_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.imdb_personmovie_id_seq OWNED BY public.imdb_personmovie.id;


--
-- Name: lms_group; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.lms_group (
    id bigint NOT NULL,
    name character varying(255) NOT NULL,
    teacher_id bigint NOT NULL
);


ALTER TABLE public.lms_group OWNER TO postgres;

--
-- Name: lms_group_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.lms_group_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.lms_group_id_seq OWNER TO postgres;

--
-- Name: lms_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.lms_group_id_seq OWNED BY public.lms_group.id;


--
-- Name: lms_group_students; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.lms_group_students (
    id bigint NOT NULL,
    group_id bigint NOT NULL,
    student_id bigint NOT NULL
);


ALTER TABLE public.lms_group_students OWNER TO postgres;

--
-- Name: lms_group_students_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.lms_group_students_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.lms_group_students_id_seq OWNER TO postgres;

--
-- Name: lms_group_students_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.lms_group_students_id_seq OWNED BY public.lms_group_students.id;


--
-- Name: lms_student; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.lms_student (
    id bigint NOT NULL,
    name character varying(255) NOT NULL,
    birth_date date NOT NULL
);


ALTER TABLE public.lms_student OWNER TO postgres;

--
-- Name: lms_student_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.lms_student_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.lms_student_id_seq OWNER TO postgres;

--
-- Name: lms_student_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.lms_student_id_seq OWNED BY public.lms_student.id;


--
-- Name: lms_teacher; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.lms_teacher (
    id bigint NOT NULL,
    name character varying(255) NOT NULL,
    birth_date date NOT NULL
);


ALTER TABLE public.lms_teacher OWNER TO postgres;

--
-- Name: lms_teacher_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.lms_teacher_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.lms_teacher_id_seq OWNER TO postgres;

--
-- Name: lms_teacher_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.lms_teacher_id_seq OWNED BY public.lms_teacher.id;


--
-- Name: auth_group id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);


--
-- Name: auth_group_permissions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);


--
-- Name: auth_permission id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);


--
-- Name: authentication_user id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.authentication_user ALTER COLUMN id SET DEFAULT nextval('public.authentication_user_id_seq'::regclass);


--
-- Name: authentication_user_groups id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.authentication_user_groups ALTER COLUMN id SET DEFAULT nextval('public.authentication_user_groups_id_seq'::regclass);


--
-- Name: authentication_user_user_permissions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.authentication_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.authentication_user_user_permissions_id_seq'::regclass);


--
-- Name: django_admin_log id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);


--
-- Name: django_content_type id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);


--
-- Name: django_migrations id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);


--
-- Name: imdb_movie id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.imdb_movie ALTER COLUMN id SET DEFAULT nextval('public.imdb_movie_id_seq'::regclass);


--
-- Name: imdb_person id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.imdb_person ALTER COLUMN id SET DEFAULT nextval('public.imdb_person_id_seq'::regclass);


--
-- Name: imdb_personmovie id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.imdb_personmovie ALTER COLUMN id SET DEFAULT nextval('public.imdb_personmovie_id_seq'::regclass);


--
-- Name: lms_group id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.lms_group ALTER COLUMN id SET DEFAULT nextval('public.lms_group_id_seq'::regclass);


--
-- Name: lms_group_students id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.lms_group_students ALTER COLUMN id SET DEFAULT nextval('public.lms_group_students_id_seq'::regclass);


--
-- Name: lms_student id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.lms_student ALTER COLUMN id SET DEFAULT nextval('public.lms_student_id_seq'::regclass);


--
-- Name: lms_teacher id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.lms_teacher ALTER COLUMN id SET DEFAULT nextval('public.lms_teacher_id_seq'::regclass);


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_group (id, name) FROM stdin;
\.


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add log entry	1	add_logentry
2	Can change log entry	1	change_logentry
3	Can delete log entry	1	delete_logentry
4	Can view log entry	1	view_logentry
5	Can add permission	2	add_permission
6	Can change permission	2	change_permission
7	Can delete permission	2	delete_permission
8	Can view permission	2	view_permission
9	Can add group	3	add_group
10	Can change group	3	change_group
11	Can delete group	3	delete_group
12	Can view group	3	view_group
13	Can add content type	4	add_contenttype
14	Can change content type	4	change_contenttype
15	Can delete content type	4	delete_contenttype
16	Can view content type	4	view_contenttype
17	Can add session	5	add_session
18	Can change session	5	change_session
19	Can delete session	5	delete_session
20	Can view session	5	view_session
21	Can add student	6	add_student
22	Can change student	6	change_student
23	Can delete student	6	delete_student
24	Can view student	6	view_student
25	Can add teacher	7	add_teacher
26	Can change teacher	7	change_teacher
27	Can delete teacher	7	delete_teacher
28	Can view teacher	7	view_teacher
29	Can add group	8	add_group
30	Can change group	8	change_group
31	Can delete group	8	delete_group
32	Can view group	8	view_group
33	Can add user	9	add_user
34	Can change user	9	change_user
35	Can delete user	9	delete_user
36	Can view user	9	view_user
37	Can add movie	10	add_movie
38	Can change movie	10	change_movie
39	Can delete movie	10	delete_movie
40	Can view movie	10	view_movie
41	Can add person	11	add_person
42	Can change person	11	change_person
43	Can delete person	11	delete_person
44	Can view person	11	view_person
45	Can add person movie	12	add_personmovie
46	Can change person movie	12	change_personmovie
47	Can delete person movie	12	delete_personmovie
48	Can view person movie	12	view_personmovie
\.


--
-- Data for Name: authentication_user; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.authentication_user (id, password, last_login, is_superuser, first_name, last_name, is_staff, is_active, date_joined, email) FROM stdin;
5	pbkdf2_sha256$320000$ZD6mp8r0KG1SJnjXY1Ooy0$oy+QhpK+HGgkpclZCRiT1Z7s66Zk8L779xa9UxB01yk=	2022-12-06 18:58:45.367955+00	f	test	test	f	t	2022-12-06 18:58:39.502421+00	test@test.test
1	pbkdf2_sha256$320000$SOwSPzaI22XdpH6f0czv32$v7zZFux8+AOJOKOsI564i/+2A1sYPHfjIT6sFyc8r+s=	2022-12-09 19:07:53.683218+00	t	Admin	Adminovich	t	t	2022-11-25 18:09:53.942228+00	admin@admin.com
\.


--
-- Data for Name: authentication_user_groups; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.authentication_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Data for Name: authentication_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.authentication_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
1	2022-11-25 18:13:51.946544+00	2	test@test.com	1	[{"added": {}}]	9	1
\.


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_content_type (id, app_label, model) FROM stdin;
1	admin	logentry
2	auth	permission
3	auth	group
4	contenttypes	contenttype
5	sessions	session
6	lms	student
7	lms	teacher
8	lms	group
9	authentication	user
10	imdb	movie
11	imdb	person
12	imdb	personmovie
\.


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2022-11-25 17:58:04.336451+00
2	contenttypes	0002_remove_content_type_name	2022-11-25 17:58:04.344821+00
3	auth	0001_initial	2022-11-25 17:58:04.407451+00
4	auth	0002_alter_permission_name_max_length	2022-11-25 17:58:04.412507+00
5	auth	0003_alter_user_email_max_length	2022-11-25 17:58:04.420201+00
6	auth	0004_alter_user_username_opts	2022-11-25 17:58:04.431978+00
7	auth	0005_alter_user_last_login_null	2022-11-25 17:58:04.438795+00
8	auth	0006_require_contenttypes_0002	2022-11-25 17:58:04.441311+00
9	auth	0007_alter_validators_add_error_messages	2022-11-25 17:58:04.451632+00
10	auth	0008_alter_user_username_max_length	2022-11-25 17:58:04.460658+00
11	auth	0009_alter_user_last_name_max_length	2022-11-25 17:58:04.467086+00
12	auth	0010_alter_group_name_max_length	2022-11-25 17:58:04.473707+00
13	auth	0011_update_proxy_permissions	2022-11-25 17:58:04.480331+00
14	auth	0012_alter_user_first_name_max_length	2022-11-25 17:58:04.486579+00
15	authentication	0001_initial	2022-11-25 17:58:04.557477+00
16	admin	0001_initial	2022-11-25 17:58:04.58937+00
17	admin	0002_logentry_remove_auto_add	2022-11-25 17:58:04.59774+00
18	admin	0003_logentry_add_action_flag_choices	2022-11-25 17:58:04.605495+00
19	lms	0001_initial	2022-11-25 17:58:04.666279+00
20	sessions	0001_initial	2022-11-25 17:58:04.688508+00
21	authentication	0002_remove_user_username	2022-11-25 18:01:57.435574+00
22	authentication	0003_alter_user_managers	2023-01-06 17:55:06.870218+00
23	imdb	0001_initial	2023-01-06 17:55:06.914783+00
24	lms	0002_alter_student_birth_date_alter_student_name_and_more	2023-01-06 17:55:06.924116+00
25	imdb	0002_alter_movie_year	2023-01-06 18:15:00.578642+00
\.


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
4syi9zul2vtc92jjevssbjqe6gva2ois	.eJxVjMsOwiAQRf-FtSEM77p07zcQmAGpGkhKuzL-uzbpQrf3nHNfLMRtrWEbeQkzsTMDdvrdUsRHbjuge2y3zrG3dZkT3xV-0MGvnfLzcrh_BzWO-q2jctkBOevRovDeWgRjdPKKDAFJhSUpCWXSwqEVRKgVUNHO20nLBOz9AdEdN0g:1p3iiv:Yuo24Aw5oNJuf8b1OlIPYwvFza6lpMkbl-zUF6zUGtE	2022-12-23 19:07:53.689732+00
\.


--
-- Data for Name: imdb_movie; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.imdb_movie (id, imdb_id, title_type, name, is_adult, year, genres) FROM stdin;
2	tt9806258	movie	Shadowtown	f	2020-01-01	{Drama,Mystery,Thriller}
5	tt9806262	movie	Rogue	f	\N	{}
6	tt9806274	movie	People Not Places	f	\N	{}
7	tt9806290	movie	Call Center	f	\N	{Thriller}
8	tt9806300	movie	Waga ai no ki	f	1941-01-01	{Drama}
10	tt9806322	movie	Isi & Ossi	f	2020-01-01	{Comedy,Romance}
11	tt9806336	movie	Rising High	f	2020-01-01	{Comedy,Drama}
12	tt9806338	movie	Freaks	f	\N	{}
13	tt9806360	movie	Untitled William M. Gaines Biopic	f	\N	{}
14	tt9806370	movie	The Owners	f	2020-01-01	{Comedy,Crime,Horror}
16	tt9806816	movie	My Dads, My Moms and Me	f	2019-01-01	{Documentary}
17	tt9806876	movie	Israel 50: The Spy Machine	f	1998-01-01	{Documentary}
18	tt9806928	movie	Shonengun	f	1931-01-01	{Drama}
19	tt9806954	movie	Havenfall	f	\N	{Fantasy}
20	tt9807162	movie	In Another Life	f	2019-01-01	{Documentary}
21	tt9807170	movie	Finding Clara	f	2018-01-01	{Documentary}
22	tt9807208	movie	Sun Dance	f	2017-01-01	{Documentary}
23	tt9807214	movie	Rogue	f	\N	{}
24	tt9807404	movie	Make the Economy Scream	f	2019-01-01	{Documentary}
25	tt9807494	movie	Hollytown NC	f	\N	{Family,Sci-Fi}
27	tt9807856	movie	Kaanadante Maayavadanu	f	2020-01-01	{Fantasy}
28	tt9807870	movie	Masquerade	f	2001-01-01	{Documentary}
29	tt9807876	movie	Good Ol Girl	f	\N	{Documentary,Western}
30	tt9807914	movie	Mosaïque	f	2010-01-01	{Fantasy}
31	tt9808268	movie	Stanleyville	f	2021-01-01	{Comedy}
32	tt9808490	movie	Gladiator Episode 2	f	2018-01-01	{Documentary}
33	tt9808510	movie	Vellam	f	2021-01-01	{Biography,Drama}
34	tt9808564	movie	Happy Sardar	f	2019-01-01	{Comedy,Romance}
35	tt9808642	movie	The Sand Sea	f	\N	{Drama}
36	tt9808686	movie	Bagpat Ka Dulha	f	\N	{Drama}
37	tt9808756	movie	Anbar	f	1948-01-01	{}
39	tt9808838	movie	Ruthless Souls	f	2019-01-01	{Drama}
40	tt9808842	movie	Speak Your Mind	f	2019-01-01	{Comedy,Drama}
41	tt9808874	movie	Back Home	f	2019-01-01	{Drama}
42	tt9808998	movie	The Soul Eater	f	\N	{Action,Mystery,Thriller}
43	tt9809006	movie	A Genie's Tail	f	2022-01-01	{Family}
44	tt9809052	movie	Las Gardenias	f	2020-01-01	{Documentary}
46	tt9809122	movie	Cub	f	\N	{Animation}
47	tt9809140	movie	All the Freckles in the World	f	2019-01-01	{Comedy,Romance,Sport}
48	tt9809154	movie	Enhanced	f	2019-01-01	{Documentary}
49	tt9809180	movie	Rastronaught	f	\N	{Animation}
50	tt9809230	movie	Santa in Training	f	2019-01-01	{Comedy,Family}
51	tt9809254	movie	Room 405	f	1996-01-01	{Horror}
52	tt9809260	movie	Trading 8's	f	\N	{Documentary}
54	tt9809276	movie	Handicapped	f	2020-01-01	{Drama}
55	tt9809302	movie	Everything Hurts	f	\N	{Comedy}
56	tt9809432	movie	Zenigata Heiji torimono hikae: Bijin-gumo	f	1960-01-01	{History,Mystery,Thriller}
57	tt9809516	movie	Zenigata Heiji torimono hikae: Yoru no enma chô	f	1961-01-01	{History,Mystery,Thriller}
58	tt9809558	movie	Fragile Thread	f	\N	{Thriller}
59	tt9809570	movie	The Quest for Everest	f	2017-01-01	{Documentary}
60	tt9809576	movie	Chikan no zetchô	f	1980-01-01	{}
61	tt9809586	movie	Mercy Boys	f	\N	{Drama}
62	tt9809604	movie	Wakazuma: Shibari no tawamure	f	1980-01-01	{}
63	tt9809618	movie	Kôshoku sanfujin-kai	f	1980-01-01	{}
64	tt9809726	movie	Constanza	f	\N	{Drama}
66	tt9809758	movie	Ijô bôkô genba	f	1980-01-01	{}
67	tt9809798	movie	Ain't Fácil	f	\N	{Drama}
68	tt9809820	movie	Arcade Dreams	f	\N	{Documentary}
69	tt9809898	movie	The Beer Jesus from America	f	2019-01-01	{Documentary}
70	tt9809908	movie	Hirakitai toshi goro	f	1980-01-01	{}
71	tt9809952	movie	Nawa de okasu	f	1980-01-01	{}
72	tt9809974	movie	Chikan karimenkyo	f	1980-01-01	{}
73	tt9809994	movie	Jokôsei wakai kemonotachi	f	1980-01-01	{}
74	tt9810014	movie	Fifigrot 2015: le GROrésumé	f	2015-01-01	{Documentary}
75	tt9810018	movie	Original Gangster	f	\N	{Crime,Drama}
76	tt9810022	movie	Barry & Joan	f	2021-01-01	{Documentary}
78	tt9810108	movie	Organ Driver	f	\N	{Action}
79	tt9810110	movie	Prebet Lapok	f	1979-01-01	{Comedy}
80	tt9810202	movie	Quantum Dimensions	f	\N	{Sci-Fi}
82	tt9810230	movie	Sentient Interoception	f	\N	{Sci-Fi}
83	tt9810234	movie	Muchi de nakasu	f	1980-01-01	{}
85	tt9810278	movie	The King, The Swordsman, and the Sorceress	f	2023-01-01	{Drama}
86	tt9810300	movie	Trust/Fall	f	\N	{Thriller}
87	tt9810420	movie	A Second Chance: Rivals!	f	2019-01-01	{Drama,Family,Sport}
88	tt9810436	movie	Gunwali Dulhaniya	f	2019-01-01	{Comedy,Romance}
89	tt9810480	movie	Made for More	f	2018-01-01	{Documentary}
90	tt9810482	movie	Just So Happens	f	\N	{Animation}
92	tt9810516	movie	Días de invierno	f	2020-01-01	{Drama}
93	tt9810932	movie	Century of Smoke	f	2019-01-01	{Documentary}
94	tt9810980	movie	We Are WOW!	f	\N	{Documentary}
95	tt9810984	movie	The Amalgamation of Smut	f	2008-01-01	{Fantasy}
96	tt9810986	movie	In a Land Far Away	f	2019-01-01	{Drama}
97	tt9811010	movie	Lorelei	f	\N	{Fantasy}
98	tt9811138	movie	Another Life	f	2019-01-01	{Biography,Documentary}
99	tt9811300	movie	The Key	f	2022-01-01	{Action}
100	tt9811374	movie	A Very Bad Friend	f	2019-01-01	{Comedy}
101	tt9811424	movie	Kantharam	f	2019-01-01	{Thriller}
103	tt9811480	movie	Born in Jerusalem and Still Alive	f	2019-01-01	{Comedy,Drama,Romance}
104	tt9811528	movie	Lukisan Ratu Kidul	f	2019-01-01	{Horror}
105	tt9811592	movie	Boulevard d'Ypres	f	2010-01-01	{Documentary}
106	tt9811598	movie	Chaos	f	2019-01-01	{Drama,Fantasy}
107	tt9811602	movie	Moriya, mi Ciudad	f	2019-01-01	{Documentary}
108	tt9811610	movie	Dust Breeding	f	2013-01-01	{Documentary}
109	tt9811746	movie	Operation Stahlwurm	f	\N	{Action,Comedy}
111	tt9811844	movie	The Vesper Social	f	\N	{Drama}
112	tt9812236	movie	Love Station	f	2019-01-01	{Drama,Romance}
113	tt9812258	movie	G-Loc	f	2020-01-01	{Sci-Fi}
114	tt9812474	movie	Lamb	f	2021-01-01	{Drama,Fantasy,Horror}
115	tt9812530	movie	Warriors of the Nation	f	2018-01-01	{Action}
116	tt9812614	movie	Hope	f	2019-01-01	{Drama,Romance}
117	tt9812752	movie	Out the Box	f	\N	{Sport}
118	tt9812884	movie	The Second Son	f	1955-01-01	{Drama}
119	tt9813004	movie	Les Fables de Starewitch	f	2011-01-01	{Animation}
121	tt9813372	movie	Pendle	f	\N	{Drama}
122	tt9813968	movie	Lorestan, the ancient land of the Kassite people	f	2018-01-01	{Documentary,History}
123	tt9813970	movie	Family Relations	f	2019-01-01	{Documentary,Family}
124	tt9813976	movie	Iranian Pets Club	f	\N	{Documentary}
125	tt9813978	movie	Exodus	f	2018-01-01	{Documentary}
126	tt9814350	movie	Londonalli Lambodhara	f	2019-01-01	{Family}
127	tt9814394	movie	Shenandoah Treasure Hunt	f	2019-01-01	{Adventure,Comedy,Romance}
128	tt9814482	movie	Maria no kokuhaku: Shônen-gari	f	1980-01-01	{}
129	tt9814486	movie	Dann Fon Mon Ker	f	2018-01-01	{Documentary}
131	tt9814562	movie	The Mephistophiliac	f	\N	{Thriller}
132	tt9814600	movie	The Tree of Ears	f	\N	{Animation}
133	tt9814606	movie	Jimmy Van Gogh	f	\N	{Drama}
134	tt9814616	movie	Over The River Styx	f	\N	{Horror,Thriller}
135	tt9814642	movie	Karma	f	\N	{Comedy}
136	tt9814730	movie	The Flare	f	2017-01-01	{Sport}
137	tt9814770	movie	Akai bôkô-han	f	1980-01-01	{}
138	tt9814828	movie	Le Mafatais	f	2017-01-01	{Drama}
139	tt9814836	movie	The SixTripleEight	f	2019-01-01	{Documentary}
140	tt9814876	movie	Forte	f	2019-01-01	{Documentary}
141	tt9814918	movie	Jafar Jenni and His Beloved	f	1973-01-01	{}
142	tt9814930	movie	Union Time: Fighting for Workers' Rights	f	2018-01-01	{Documentary}
143	tt9814994	movie	Mom's Wedding	f	2006-01-01	{}
144	tt9815010	movie	Ever Fallen	f	2019-01-01	{Drama}
145	tt9815012	movie	Coach B	f	\N	{Drama}
146	tt9815014	movie	Trap City	f	\N	{Drama}
148	tt9815074	movie	Maru hadaka seishun jigoku	f	1980-01-01	{}
149	tt9815084	movie	A Very British Christmas	f	2019-01-01	{Family}
150	tt9815102	movie	Seiran shimai	f	1980-01-01	{}
151	tt9815120	movie	Jokôsei damashi-ma	f	1980-01-01	{}
152	tt9815124	movie	Mami Jarum	f	2002-01-01	{Comedy}
153	tt9815146	movie	Joshi gakusei maruhi yuka undô	f	1980-01-01	{}
154	tt9815150	movie	China Blue	f	\N	{Comedy,Drama}
155	tt9815156	movie	Dr. Gama	f	2021-01-01	{Action,Biography,Drama}
233	tt9817806	movie	Gary	f	2019-01-01	{}
157	tt9815184	movie	She Walked Out the Door	f	\N	{Comedy}
158	tt9815190	movie	Harumi	f	2019-01-01	{Documentary}
159	tt9815198	movie	Man vs. Machine	f	2019-01-01	{Documentary}
161	tt9815272	movie	National Geographic Explorer: The First Jesus?	f	2013-01-01	{Documentary}
162	tt9815278	movie	Sticks and Stones - Arthur Teele Project	f	\N	{}
163	tt9815280	movie	Black Diamond	f	2019-01-01	{Drama}
164	tt9815360	movie	4 Letters	f	2019-01-01	{Comedy,Drama,Romance}
165	tt9815392	movie	The Gift of Love	f	2019-01-01	{History}
166	tt9815410	movie	Organic	f	\N	{Romance}
167	tt9815444	movie	Rohna Classified	f	\N	{Documentary}
168	tt9815476	movie	Bulgasari	f	1962-01-01	{Fantasy}
169	tt9815482	movie	The Witch	f	2002-01-01	{Horror}
170	tt9815554	movie	Not to Forget	f	2021-01-01	{Drama}
172	tt9815714	movie	The Hard Way	f	2019-01-01	{Action}
173	tt9815778	movie	Shrink	f	\N	{Drama,Fantasy}
174	tt9815910	movie	Valetika	f	\N	{Thriller}
175	tt9815970	movie	Thigh Gap	f	\N	{Drama}
176	tt9815978	movie	Tunga	f	\N	{Action,Adventure,Animation}
177	tt9815990	movie	Feng che yu huo che	f	1983-01-01	{Drama,Romance}
179	tt9816014	movie	Paper Children	f	2020-01-01	{Documentary}
180	tt9816046	movie	The Masked Saint 2	f	\N	{Drama}
181	tt9816134	movie	Love's Stoppage Time	f	2019-01-01	{Drama,Mystery,Romance}
182	tt9816178	movie	Tarô no baka	f	2019-01-01	{Adventure,Drama}
183	tt9816184	movie	Captive	f	2018-01-01	{Drama}
184	tt9816188	movie	The Curfew	f	\N	{Drama,Thriller}
186	tt9816230	movie	I Married Black	f	2018-01-01	{Drama}
187	tt9816232	movie	The Black Revenger	f	\N	{Drama}
188	tt9816242	movie	The S Project, Sincerely	f	2019-01-01	{Documentary}
189	tt9816256	movie	Heaven on Seven	f	\N	{Comedy}
190	tt9816258	movie	Joyland	f	2019-01-01	{Action,Comedy,Crime}
191	tt9816262	movie	Float	f	\N	{Drama}
192	tt9816310	movie	Paradigm Grey	f	2018-01-01	{Fantasy,Horror,Sci-Fi}
194	tt9816396	movie	Kaguya-sama: Love Is War	f	2019-01-01	{Comedy,Drama,Romance}
195	tt9816510	movie	Ryôjo kugi shiki	f	1980-01-01	{}
196	tt9816516	movie	Shaper	f	\N	{Crime,Sci-Fi}
197	tt9816550	movie	Hentai seihanzai	f	1980-01-01	{}
198	tt9816574	movie	Joshi daisei gekisatsu: Hagu	f	1980-01-01	{}
199	tt9816608	movie	Brutal! Rape Case	f	1980-01-01	{}
200	tt9816634	movie	Muki-muki fujin	f	1980-01-01	{}
201	tt9816636	movie	Koyver Gitsin	f	2018-01-01	{Comedy}
202	tt9816650	movie	Hiraki hajime	f	1980-01-01	{}
203	tt9816676	movie	Shinshitsu bôkô	f	1980-01-01	{}
204	tt9816748	movie	The Dress That Eats Souls	f	2018-01-01	{Sci-Fi}
205	tt9816816	movie	Shitto	f	1962-01-01	{Mystery,Thriller}
206	tt9816820	movie	Terriers	f	\N	{Drama}
208	tt9816958	movie	Deuka... the wings	f	\N	{Romance}
209	tt9816970	movie	Midday Event: Trace of Blood	f	2019-01-01	{Action,Drama,History}
210	tt9816986	movie	Dgp	f	\N	{Documentary}
211	tt9816988	movie	Gold	f	2019-01-01	{Drama}
213	tt9817040	movie	Silently Controlled	f	2019-01-01	{Drama}
214	tt9817044	movie	The Oath	f	2019-01-01	{Drama}
215	tt9817070	movie	Just 6.5	f	2019-01-01	{Action,Crime,Drama}
216	tt9817104	movie	Pozvonite Myshkinu	f	2018-01-01	{Comedy}
217	tt9817122	movie	Bemol	f	2018-01-01	{Drama}
218	tt9817134	movie	Taiga	f	2017-01-01	{Drama}
219	tt9817190	movie	Sakvithi Dadayama	f	2012-01-01	{Comedy}
220	tt9817210	movie	Untitled Hulk Hogan Biopic	f	\N	{Biography,Drama,Sport}
221	tt9817282	movie	Kurumittek Awilla	f	2012-01-01	{Family,Fantasy}
222	tt9817300	movie	15 August	f	2019-01-01	{Drama}
224	tt9817466	movie	Wassanaye Senehasa	f	2012-01-01	{Drama,Romance}
225	tt9817572	movie	Yoki no seidayô	f	1932-01-01	{Drama}
226	tt9817674	movie	Swarna Malsyangal	f	2019-01-01	{Drama}
227	tt9817680	movie	Stories of the Dead - Die Farm	f	2019-01-01	{Horror,Thriller}
228	tt9817710	movie	Speed Kills Desert	f	2013-01-01	{Documentary}
229	tt9817730	movie	Utanô yononaka	f	1936-01-01	{Drama}
230	tt9817748	movie	Rêves en Chantier	f	2019-01-01	{Documentary}
232	tt9817766	movie	4 Gits and a Guitar, Block Buster, The Movie	f	2019-01-01	{Documentary,Fantasy}
235	tt9817924	movie	The Taverna	f	2019-01-01	{Comedy}
236	tt9817938	movie	Prathiroo	f	2012-01-01	{Drama,War}
238	tt9818000	movie	Girl Dorm	f	2019-01-01	{Thriller}
239	tt9818010	movie	The Last Plantation	f	\N	{Comedy}
240	tt9818048	movie	Decoding Shankar	f	2018-01-01	{Documentary,Music}
241	tt9818074	movie	Beacon	f	\N	{Thriller}
242	tt9818102	movie	Yowis Ben 2	f	2019-01-01	{Comedy,Drama}
243	tt9818118	movie	Her Limit 2: Break Me	t	2018-01-01	{Adult}
244	tt9818124	movie	Untitled Alabama Horror/Thriller	f	\N	{Biography,Horror,Thriller}
246	tt9818148	movie	Dans Madame Rose	t	1980-01-01	{Adult}
247	tt9818154	movie	The Dental Plan	f	2018-01-01	{Drama,Thriller}
248	tt9818168	movie	Camino, een feature-length selfie	f	2019-01-01	{Documentary}
249	tt9818384	movie	Mixtape	f	\N	{Documentary}
250	tt9818628	movie	Relaxxxed 3 (Fucking Fit)	t	2016-01-01	{Adult}
251	tt9818754	movie	Hirate Miki	f	1937-01-01	{Drama}
252	tt9818864	movie	Love Story of Pian Pian	f	1975-01-01	{Comedy,Drama,Romance}
254	tt9819206	movie	Ordinary People	f	2021-01-01	{Drama}
255	tt9819228	movie	Ûso kurabu	f	1937-01-01	{Drama}
256	tt9819258	movie	Texas Red	f	2021-01-01	{Action,History,Western}
257	tt9819508	movie	Slava	f	2014-01-01	{Drama}
258	tt9819538	movie	The Pit	f	\N	{}
259	tt9819562	movie	Projectors	f	\N	{Sci-Fi,Thriller}
260	tt9819594	movie	Kaiketsu Ondo maru	f	1916-01-01	{Horror}
261	tt9819664	movie	Abstractions	f	2019-01-01	{Horror,Thriller}
262	tt9819928	movie	Angele, Virtuoso	f	2019-01-01	{Documentary,Musical}
264	tt9819986	movie	Il cielo è sulla terra	f	2019-01-01	{Biography,Documentary}
265	tt9820352	movie	Villain	f	2020-01-01	{Action,Crime,Drama}
266	tt9820550	movie	Die For a Dollar	f	2019-01-01	{Action}
267	tt9820556	movie	Breach	f	2020-01-01	{Action,Horror,Sci-Fi}
269	tt9820610	movie	Bad Comic	f	2019-01-01	{Comedy}
270	tt9820628	movie	Film Fest	f	2020-01-01	{Comedy,Drama}
271	tt9820664	movie	Hamster	f	\N	{Drama,Romance}
272	tt9820678	movie	Moscow we will lose	f	2019-01-01	{Documentary}
273	tt9820690	movie	Black Swallow: The Eugene Jacques Bullard Story	f	\N	{History}
274	tt9820710	movie	#nippoff	f	2020-01-01	{Adventure,Documentary}
275	tt9820772	movie	Compro Likes	f	2020-01-01	{Comedy}
276	tt9820854	movie	Those We Leave Behind	f	\N	{Drama}
278	tt9820970	movie	Untitled Wall Street Project	f	\N	{Comedy,Crime,Drama}
279	tt9820988	movie	Anavitória: Araguaína - Las Vegas	f	2019-01-01	{Documentary}
280	tt9821006	movie	Found You Righteous	f	\N	{}
281	tt9821016	movie	Danchizuma: Zetchô	f	1980-01-01	{}
282	tt9821034	movie	True Grace	f	2006-01-01	{Documentary}
283	tt9821040	movie	Shôjo monzetsu	f	1980-01-01	{}
284	tt9821076	movie	Girls Will Be Girls	f	\N	{Horror,Thriller}
285	tt9821080	movie	If My Judges Are Ready?	f	2019-01-01	{Documentary}
286	tt9821096	movie	The Lease of Nature	f	\N	{Crime,Drama,Thriller}
287	tt9821108	movie	Abare andon	f	1956-01-01	{}
289	tt9821246	movie	Unrivaled: Earnhardt vs. Gordon	f	2019-01-01	{Documentary,Sport}
290	tt9821280	movie	La vie au Sein de la Pègre	f	\N	{Thriller}
291	tt9821834	movie	Re-Elected	f	2020-01-01	{Comedy,Horror}
292	tt9822270	movie	A Mutt's Tale	f	\N	{Adventure,Animation,Comedy}
293	tt9822470	movie	Reunion	f	\N	{Romance}
294	tt9822474	movie	Into the Canyon	f	2019-01-01	{Documentary}
295	tt9822510	movie	A Good Kid	f	\N	{Drama}
296	tt9822532	movie	The Crick	f	\N	{Documentary}
297	tt9822592	movie	MacBob	f	\N	{Thriller}
299	tt9822728	movie	Yoru no OL: Matagurui	f	1980-01-01	{}
300	tt9822858	movie	American Bully	f	2018-01-01	{Drama}
301	tt9822862	movie	The Happiness of a Mother	f	2019-01-01	{Drama,Family}
302	tt9822864	movie	Saat Zaman	f	2019-01-01	{Action,Adventure,Drama}
303	tt9822880	movie	Qarmat Beyitmarmat	f	2019-01-01	{Comedy}
305	tt9822904	movie	Time Out	f	2019-01-01	{Comedy,Drama,Romance}
306	tt9823016	movie	Untitled Special Ops Project	f	\N	{Drama}
307	tt9823170	movie	Black Mercedes	f	2019-01-01	{Crime,Drama,Mystery}
308	tt9823276	movie	The Island	f	2018-01-01	{Documentary}
309	tt9823344	movie	Bunny Lake Is Missing	f	\N	{Crime,Thriller}
311	tt9823552	movie	The People Under the Stairs	f	\N	{Horror}
312	tt9823554	movie	The Lost Generation	f	2019-01-01	{Drama}
313	tt9823562	movie	Khatre Da Ghuggu	f	2020-01-01	{Comedy}
314	tt9823564	movie	47 Dhansukh Bhawan	f	2019-01-01	{Thriller}
315	tt9823614	movie	Ultras of Egypt	f	2018-01-01	{Documentary}
316	tt9823634	movie	Dhawala Pawura	f	2011-01-01	{Drama}
317	tt9823772	movie	A Small Gold Fish	f	1982-01-01	{Drama}
319	tt9824014	movie	Playing with Plays	f	2019-01-01	{Drama}
320	tt9824016	movie	Roy Kiyoshi: The Untold Story	f	2019-01-01	{Horror}
321	tt9824114	movie	Original Gangster	f	2020-01-01	{Crime}
322	tt9824252	movie	The Radleys	f	\N	{Comedy,Fantasy}
323	tt9824454	movie	Oberabô	f	1936-01-01	{Drama}
324	tt9824512	movie	L'Odyssée du Loup	f	2019-01-01	{Documentary}
325	tt9824856	movie	Avalakki Pavalakki	f	2021-01-01	{Adventure}
326	tt9825006	movie	Avant qu'on explose	f	2019-01-01	{Comedy}
327	tt9825144	movie	Cinéma soleil	f	\N	{Documentary}
328	tt9825348	movie	Shinkon uramote	f	1936-01-01	{Drama}
329	tt9825730	movie	Tokaidou wa nihonbare	f	1937-01-01	{Drama}
330	tt9825916	movie	Cine Marrocos	f	2018-01-01	{Documentary}
332	tt9826126	movie	Scion	f	2018-01-01	{Thriller}
333	tt9826484	movie	Trinity Seven The Movie 2: Heavens Library & Crimson Lord	f	2019-01-01	{Action,Animation,Comedy}
334	tt9826526	movie	She Talks with Angels	f	\N	{Drama}
335	tt9826538	movie	The Bus to Heaven has a Flat	f	\N	{Comedy,Romance}
336	tt9826550	movie	Jôhatsuzuma: Korogasu	f	1980-01-01	{}
337	tt9826554	movie	Corey Duffel: Manimal	f	2019-01-01	{Documentary}
338	tt9826576	movie	Amongst Evil	f	\N	{Horror}
339	tt9826668	movie	The Mysterious Note	f	2019-01-01	{Adventure}
340	tt9826690	movie	Konder	f	2020-01-01	{Documentary}
341	tt9826704	movie	Pushed	f	\N	{Drama}
342	tt9826708	movie	Momentum	f	\N	{Sci-Fi}
343	tt9826730	movie	Into the Dust	f	\N	{Horror}
345	tt9826780	movie	They're Coming	f	\N	{Horror,Thriller}
346	tt9826798	movie	The Blind Painter	f	2018-01-01	{Comedy,Documentary,Drama}
347	tt9826818	movie	Não estavamos ali para fazer amigos	f	2015-01-01	{Documentary}
348	tt9826820	movie	The Connection	f	2021-01-01	{Sci-Fi}
349	tt9826830	movie	The Conspiracy Libel	f	2018-01-01	{Documentary}
350	tt9826848	movie	The Devil's Den	f	\N	{Horror}
351	tt9826958	movie	Beat My Heart	f	\N	{Adventure}
352	tt9826992	movie	Hostal Don Tulio	f	2018-01-01	{Comedy}
353	tt9827044	movie	The Samba Lesson	f	2017-01-01	{Documentary}
355	tt9827314	movie	Eizenkot.	f	2019-01-01	{Documentary}
356	tt9827338	movie	The History of Punk Rock	f	2019-01-01	{Documentary}
357	tt9827344	movie	The Story of The First Super Bowl	f	\N	{Biography}
358	tt9827352	movie	AIDS Diva: The Legend of Connie Norman	f	2021-01-01	{Documentary,History}
359	tt9827388	movie	Band Aid Throat	f	\N	{Drama}
360	tt9827588	movie	El Viejo	f	2019-01-01	{Sport}
361	tt9827650	movie	The Last Carnival	f	\N	{Western}
362	tt9827712	movie	The First Time	f	2018-01-01	{Drama}
363	tt9827760	movie	Stan	f	\N	{Drama,Family,Sport}
365	tt9827784	movie	Farewell Song	f	2019-01-01	{Drama,Music,Romance}
366	tt9827834	movie	Sylvie's Love	f	2020-01-01	{Drama,Music,Romance}
367	tt9827962	movie	I Ain't Gettin Killed	f	\N	{Comedy,Horror}
368	tt9827998	movie	Pearl Part 2	f	2019-01-01	{Thriller}
369	tt9828116	movie	The Bottle	f	2022-01-01	{Drama}
370	tt9828186	movie	A.G.A.P.E.	f	\N	{Comedy}
371	tt9828208	movie	Only Mr Mehdi Can	f	1977-01-01	{}
373	tt9828278	movie	Miss Jenis	f	2020-01-01	{Drama}
374	tt9828344	movie	Prepare Now	f	\N	{Documentary}
375	tt9828428	movie	Anjali CBI	f	2019-01-01	{}
376	tt9828464	movie	Suami Aku Ustaz	f	2015-01-01	{Drama}
377	tt9828682	movie	Spaniens wilder Süden: Eroberer	f	2019-01-01	{}
378	tt9828698	movie	When Heroes Become Legends	f	2018-01-01	{Adventure}
379	tt9828710	movie	Spaniens wilder Süden: Rückkehrer	f	2019-01-01	{}
380	tt9828786	movie	The Intervention	f	\N	{}
381	tt9828802	movie	Vaya luna de miel	f	1980-01-01	{Adventure,Comedy}
383	tt9828814	movie	MatiAnak	f	2019-01-01	{Horror}
384	tt9828864	movie	The Grey	f	2020-01-01	{Drama,Mystery}
387	tt9828918	movie	#Iamhere	f	2019-01-01	{Comedy}
388	tt9828936	movie	Midst	f	1997-01-01	{}
389	tt9829006	movie	Sweet Angel	f	2011-01-01	{Drama,Romance}
390	tt9829090	movie	Winter's Yearning	f	2019-01-01	{Documentary}
391	tt9829092	movie	Inocencia	f	2018-01-01	{Drama}
392	tt9829108	movie	Pha Dam Kam Ai	f	\N	{Comedy}
393	tt9829294	movie	Danhomé and Vodun	f	2018-01-01	{Documentary}
394	tt9829324	movie	Pian hän tulee	f	2019-01-01	{Documentary}
396	tt9829880	movie	Currency War	f	\N	{Thriller}
397	tt9829966	movie	Samhita	f	2013-01-01	{Drama}
398	tt9830052	movie	Mrs.Groom	f	2019-01-01	{Romance}
399	tt9830138	movie	Aquarius Visionarius - Il cinema di Michele Soavi	f	2018-01-01	{Documentary}
400	tt9830296	movie	Kaum De Heere2	f	2014-01-01	{}
401	tt9830832	movie	Dillon	f	\N	{Drama}
402	tt9830862	movie	Suseema	f	2011-01-01	{Drama,Musical,Romance}
404	tt9831626	movie	Echo in Time	f	\N	{}
405	tt9831636	movie	Hide and Seek	f	\N	{Horror}
406	tt9831810	movie	My Unlived Life	f	\N	{Comedy}
407	tt9831814	movie	Sacred Mask	f	\N	{Action,Drama,Family}
408	tt9831828	movie	Paul Sauvé: Désormais, l'avenir	f	2009-01-01	{Documentary}
409	tt9831830	movie	OMG - You're Leaving for College...	f	\N	{Comedy}
410	tt9831836	movie	Sex Documentary: Perverted Discipline	f	1980-01-01	{}
411	tt9831884	movie	Do Ra Mi Ha daigakusei	f	1938-01-01	{Drama,Music}
412	tt9831908	movie	1991	f	2021-01-01	{}
413	tt9832060	movie	Gay Mean Girls	f	2019-01-01	{}
414	tt9832110	movie	Mooncussers	f	1962-01-01	{Adventure,Biography,Drama}
415	tt9832132	movie	Ijô na shibire	f	1980-01-01	{}
416	tt9832182	movie	Singing	f	\N	{Documentary}
417	tt9832192	movie	Nozoki seigi	f	1980-01-01	{}
419	tt9832342	movie	Intô mibôjin	f	1980-01-01	{}
420	tt9832350	movie	She the Creator	f	\N	{Drama,Thriller}
421	tt9832358	movie	Rajo kaikan dai zenshû	f	1980-01-01	{}
422	tt9832386	movie	Kinjirareta sex	f	1980-01-01	{}
423	tt9832396	movie	Sakigake!! Otokojuku Movie	f	1988-01-01	{Action,Animation,Comedy}
424	tt9832402	movie	Chikan densha: Sôgo noriire	f	1980-01-01	{}
425	tt9832428	movie	Wakazuma bôkô: Aegu	f	1980-01-01	{}
426	tt9832448	movie	Hitchhike: Ijô seitaiken	f	1980-01-01	{}
427	tt9832496	movie	Teku no ko joshigakusei: No bra asobi	f	1980-01-01	{}
428	tt9832510	movie	5 Pounds of Pressure	f	\N	{Action}
429	tt9832528	movie	Hentai nisei-sha	f	1980-01-01	{}
430	tt9832608	movie	Nirvana Road	f	\N	{}
432	tt9832672	movie	Uwakizuma o waru	f	1980-01-01	{}
433	tt9832684	movie	Hudson Taylor: Into the Heart of the Dragon	f	2018-01-01	{Documentary}
434	tt9832706	movie	Once More Around the Horn	f	2018-01-01	{Drama}
435	tt9832712	movie	Chijo toire	f	1980-01-01	{}
436	tt9832954	movie	Odoriko monogatari	f	1947-01-01	{Drama}
437	tt9833044	movie	Sed de Venganza	f	2019-01-01	{Action}
438	tt9833068	movie	Nordic Pulse	f	2019-01-01	{Documentary}
439	tt9833226	movie	Hamabe no gêmu	f	2019-01-01	{Drama}
440	tt9833248	movie	Five Swords of Emperors	f	\N	{Action}
441	tt9833308	movie	Saurus City	f	\N	{Animation}
443	tt9833388	movie	Los Hijos de Benkos	f	2000-01-01	{Music}
444	tt9833392	movie	Afrodeutsche	f	\N	{Drama}
445	tt9833412	movie	Stille	f	2020-01-01	{Drama}
446	tt9833766	movie	Mind Niner 2019	f	\N	{Thriller}
447	tt9833860	movie	Asakusa no hi: Odoriko monogatari	f	1964-01-01	{Drama}
448	tt9833870	movie	It Was My Father's Fault	f	1966-01-01	{Adventure,Crime}
449	tt9833886	movie	Intercambiadas	f	2019-01-01	{Comedy}
450	tt9834028	movie	Dohyo matsuri	f	1944-01-01	{}
451	tt9834038	movie	Notes From Underground (Part I)	f	2019-01-01	{Drama}
452	tt9834062	movie	Ahaa Re	f	2019-01-01	{Drama}
453	tt9834112	movie	Yojinbô ichiba	f	1963-01-01	{}
454	tt9834166	movie	Khamaroonisa 14/24/130	f	\N	{Drama}
456	tt9834296	movie	Ossolineum	f	2018-01-01	{Documentary}
457	tt9834318	movie	Ethumai Methumai	f	2011-01-01	{Comedy}
458	tt9834418	movie	Ôhoka seidan-shogun ha yoru odoru	f	1950-01-01	{Drama}
459	tt9834446	movie	Selvam	f	2011-01-01	{Drama,War}
460	tt9834466	movie	Oshidori gasa	f	1948-01-01	{}
461	tt9834480	movie	Between the Two of Us	f	2005-01-01	{Drama}
691	tt9848724	movie	Akra	f	2019-01-01	{Documentary}
463	tt9834492	movie	Yalda, a Night for Forgivness	f	2019-01-01	{Drama}
464	tt9834506	movie	Post Mortem	f	2020-01-01	{Horror,Mystery,Thriller}
465	tt9834560	movie	Utae kawakaze	f	1939-01-01	{Drama}
466	tt9834564	movie	Oshidori kenkagasa	f	1957-01-01	{}
467	tt9834630	movie	Under the Ground	f	\N	{Documentary}
469	tt9834698	movie	La nuit rouge	f	1983-01-01	{}
470	tt9834706	movie	Fräulein Barbier	f	1915-01-01	{Comedy}
471	tt9834732	movie	I really miss you	f	2018-01-01	{Documentary}
472	tt9834736	movie	The Birth of Deceit	f	2019-01-01	{Mystery,Thriller}
473	tt9834798	movie	That's the Way You Love	f	2019-01-01	{Drama}
474	tt9835098	movie	Julia	f	\N	{Romance}
475	tt9835192	movie	Furyû ukiyoyukâ	f	1939-01-01	{Drama}
476	tt9835532	movie	Wasuraruenu hitomi	f	1939-01-01	{Drama}
478	tt9836338	movie	A kommunizmus múmiái	f	1990-01-01	{Documentary}
479	tt9836800	movie	A kollégium végnapjai	f	1996-01-01	{Documentary}
480	tt9837320	movie	The Potato Venture	f	2020-01-01	{Comedy}
481	tt9837456	movie	Gods x Kingz	f	\N	{Drama}
482	tt9837502	movie	Merry Men: The Real Yoruba Demons	f	2018-01-01	{Action,Comedy}
483	tt9837530	movie	Monkey King Reloaded	f	2017-01-01	{Adventure}
484	tt9837540	movie	The Red Cloth	f	2023-01-01	{Adventure}
485	tt9837672	movie	Are You There?	f	2019-01-01	{Documentary}
486	tt9837684	movie	Bill Viola: Retrospectiva	f	2017-01-01	{}
487	tt9837726	movie	9th Ave.	f	\N	{Drama}
488	tt9837752	movie	Furisode kyô enroku	f	1955-01-01	{}
489	tt9837768	movie	American Huckster	f	\N	{Comedy}
491	tt9837822	movie	The Last Cabaret	f	\N	{Documentary}
492	tt9837840	movie	Berbablù	f	2004-01-01	{Drama}
493	tt9837864	movie	BlackTop Sundayz	f	\N	{Comedy}
494	tt9837894	movie	Tizca. Gli Uccelli Dipinti del Caucaso	f	2001-01-01	{Drama}
495	tt9837978	movie	Surface Pressures	f	\N	{Drama}
496	tt9838092	movie	Humbaba	f	\N	{Horror}
498	tt9838252	movie	VHS Massacre Too	f	2020-01-01	{Documentary}
499	tt9838296	movie	Dreams of Fire	f	\N	{Action}
500	tt9838338	movie	Three Midnights	f	\N	{Drama}
501	tt9838346	movie	Future of the Past	f	2019-01-01	{}
502	tt9838356	movie	Sadao	f	2019-01-01	{}
503	tt9838364	movie	Father	f	2017-01-01	{Biography,Documentary}
504	tt9838372	movie	The Lady Improper	f	2019-01-01	{Drama}
505	tt9838374	movie	The Peers	f	2019-01-01	{}
507	tt9838392	movie	Chocolate of Peace	f	2016-01-01	{Documentary}
508	tt9838400	movie	The Death Guru	f	\N	{Comedy}
509	tt9838412	movie	Wild Tour	f	2019-01-01	{}
510	tt9838414	movie	Sisterhood	f	2019-01-01	{Drama}
511	tt9838426	movie	Scared Straight	f	\N	{Action}
512	tt9838428	movie	Shinjuku Tiger	f	2019-01-01	{}
513	tt9838430	movie	Nunchaku and Soul	f	2019-01-01	{}
514	tt9838442	movie	That's All Right, Mama	f	\N	{Biography}
515	tt9838514	movie	That Day in June	f	\N	{Action,Drama,History}
516	tt9838574	movie	Way Out D-Fight	f	2016-01-01	{Documentary}
517	tt9838656	movie	Yeki khosh seda, yeki khosh dast	f	1977-01-01	{Adventure,Crime}
518	tt9838690	movie	The World Ends With Us	f	\N	{Drama}
519	tt9838694	movie	The Tristan Project	f	2005-01-01	{}
520	tt9838752	movie	Minan o koshô: Hitokiri hikosei	f	1955-01-01	{}
522	tt9838794	movie	Red Signal	f	2019-01-01	{Drama}
523	tt9838822	movie	Woori, Us	f	\N	{Drama}
524	tt9838876	movie	Brotherly Love	f	\N	{Drama,Thriller}
525	tt9838908	movie	Prétu Funguli	f	2018-01-01	{Documentary}
526	tt9838916	movie	Nohadan Amme	f	2004-01-01	{Drama}
527	tt9838980	movie	Vampire Clay 2	f	2019-01-01	{Horror}
528	tt9838996	movie	KillaFornia	f	\N	{Action,Thriller}
529	tt9839008	movie	Man in Manchester of Maharashtra	f	2018-01-01	{Documentary}
530	tt9839012	movie	The Vessel	f	\N	{Horror}
532	tt9839038	movie	Jim Button and the Wild 13	f	2020-01-01	{Adventure,Comedy,Family}
533	tt9839040	movie	Murphy's Law: Ghanoone Morfi	f	2019-01-01	{Action,Comedy,Fantasy}
534	tt9839118	movie	Goketsû ningyo	f	1940-01-01	{Drama}
535	tt9839212	movie	Mirbat	f	\N	{Action}
536	tt9839380	movie	Happy Lucky	f	2018-01-01	{Comedy}
537	tt9839510	movie	Retratos de Santa Catarina	f	2018-01-01	{Documentary}
538	tt9839556	movie	Doobious Business	f	2019-01-01	{Documentary}
541	tt9839670	movie	River Tales	f	2020-01-01	{Documentary}
542	tt9839686	movie	Schlussklappe	f	2022-01-01	{}
543	tt9839912	movie	God's Matrix	f	\N	{Sci-Fi}
544	tt9840192	movie	La fumée sans feu	f	2008-01-01	{}
545	tt9840322	movie	Keeping the Flame Alive	f	2018-01-01	{Documentary}
546	tt9840382	movie	Se mi vuoi bene	f	2019-01-01	{Comedy}
547	tt9840432	movie	Road to Glory	f	\N	{Drama}
548	tt9840656	movie	Trillion Trees	f	\N	{Documentary}
549	tt9840732	movie	Two Beats One Soul	f	2018-01-01	{Documentary}
550	tt9840806	movie	Kryonik	f	2016-01-01	{Action,Sci-Fi,Thriller}
551	tt9840872	movie	The River	f	2020-01-01	{Drama}
553	tt9840958	movie	Love Struck Sick	f	2019-01-01	{Romance}
554	tt9841062	movie	Die Nacht in mir	f	2012-01-01	{Drama}
555	tt9841316	movie	Guest House	f	\N	{Documentary,Drama}
556	tt9841456	movie	Die Nacht in mir: Anbeginn	f	2015-01-01	{Drama}
557	tt9841750	movie	The Tale of a Thousand and One Lives	f	2018-01-01	{Comedy,Drama}
558	tt9841836	movie	The Hardest Ride	f	\N	{Western}
559	tt9841876	movie	Bhonga	f	2018-01-01	{Drama}
560	tt9842226	movie	Children of GOD	f	\N	{Horror}
562	tt9842544	movie	Jonás II. aneb Jak je dulezité míti Melicharovou	f	1988-01-01	{Comedy,Musical}
563	tt9842550	movie	Heritage of the Nation	f	\N	{Documentary,Drama}
564	tt9842576	movie	Black Sheep White Cop	f	\N	{Crime}
565	tt9842678	movie	Entierro	f	2019-01-01	{Biography}
566	tt9842704	movie	Star Wars: Literacy Strikes Back	f	2018-01-01	{Fantasy}
567	tt9842740	movie	The Black Tree	f	2018-01-01	{Documentary}
568	tt9842766	movie	Surfing With The Devil	f	\N	{Drama}
569	tt9842774	movie	NaitaFon	f	\N	{History}
570	tt9842792	movie	FUN.	f	2020-01-01	{Horror}
572	tt9842810	movie	Leben um Leben	f	1914-01-01	{Drama}
573	tt9842872	movie	Sher Singh	f	2019-01-01	{Action}
574	tt9842874	movie	Nothing Left - Just That Summer	f	2018-01-01	{Comedy,Drama,History}
575	tt9842900	movie	William Voß. Der Millionendieb	f	1915-01-01	{Crime}
576	tt9842918	movie	The Target	f	\N	{Action}
577	tt9842964	movie	Supremacy	f	\N	{Sci-Fi}
578	tt9842970	movie	Punks	f	2019-01-01	{Drama}
580	tt9843042	movie	Computer Love	f	\N	{Comedy}
581	tt9843064	movie	The Art of Directing: David Lean	f	2019-01-01	{Biography,Documentary}
582	tt9843066	movie	Venice	f	\N	{Thriller}
583	tt9843086	movie	The Dying Room	f	\N	{Comedy,Horror,Thriller}
584	tt9843100	movie	Son of the Dawn	f	2023-01-01	{Horror}
585	tt9843142	movie	When Devils Prey	f	\N	{Thriller}
587	tt9843172	movie	Seytanla 24 saat	f	\N	{}
588	tt9843224	movie	Penance	f	2019-01-01	{Drama}
589	tt9843268	movie	Mujer Descalza	f	2019-01-01	{Drama}
590	tt9843292	movie	Fisch lernt fliegen	f	2019-01-01	{Drama}
591	tt9843310	movie	Calculated	f	\N	{Adventure}
592	tt9843326	movie	Confucius	f	\N	{Drama}
593	tt9843390	movie	VampyrZ on a Boat	f	\N	{Horror}
594	tt9843402	movie	Landless	f	2019-01-01	{Documentary}
595	tt9843450	movie	The Rub	f	\N	{Drama,Romance,Thriller}
597	tt9843470	movie	The Island of Lies	f	2020-01-01	{Drama}
598	tt9843604	movie	Seeing Red	f	\N	{Crime}
599	tt9843632	movie	We Didn't Know Love During First Love	f	1987-01-01	{Drama,Romance}
600	tt9843644	movie	Voices	f	2022-01-01	{Documentary}
601	tt9843648	movie	Canta di Libertà	f	\N	{Documentary}
602	tt9843742	movie	Zenda Swabhimanacha	f	2017-01-01	{Drama}
603	tt9843852	movie	1 Sign	f	\N	{Documentary}
604	tt9843914	movie	10 Vi	f	2019-01-01	{Crime}
605	tt9843942	movie	Unad Masti	f	2019-01-01	{}
606	tt9843956	movie	Premrang	f	2019-01-01	{Romance}
608	tt9844004	movie	Messi	f	2017-01-01	{Sport}
609	tt9844062	movie	Count Orlov: The Musical	f	2019-01-01	{Musical}
610	tt9844086	movie	Ronnie's Quest: The Search for Victoria's Treasure	f	\N	{Adventure,Comedy}
611	tt9844102	movie	Ray	f	2018-01-01	{Crime}
612	tt9844104	movie	Art of the Sketch	f	\N	{Comedy}
613	tt9844170	movie	The Crossroads	f	\N	{Action}
614	tt9844196	movie	Dragon Monster	f	\N	{Fantasy}
615	tt9844254	movie	Art Paul of Playboy: The Man Behind the Bunny	f	\N	{Documentary}
618	tt9844332	movie	Shaada Kalo Aabcha	f	2013-01-01	{Thriller}
619	tt9844358	movie	Satsujinki o kau onna	f	2019-01-01	{Horror}
620	tt9844368	movie	Out of Liberty	f	2019-01-01	{Drama,Western}
621	tt9844420	movie	Star High	f	2011-01-01	{Sci-Fi}
622	tt9844438	movie	Tim	f	\N	{Musical}
623	tt9844448	movie	Q's Barbershop	f	2019-01-01	{Documentary}
624	tt9844452	movie	Songoku 1	f	1940-01-01	{Drama}
625	tt9844522	movie	Escape Room: Tournament of Champions	f	2021-01-01	{Action,Adventure,Horror}
626	tt9844532	movie	Speed Dose	f	\N	{Action}
627	tt9844562	movie	Songoku 2	f	1940-01-01	{Drama}
628	tt9844592	movie	Kometa: Movie	f	2019-01-01	{Documentary}
629	tt9844596	movie	Eresis	f	\N	{Horror}
630	tt9844604	movie	Séduction	f	1984-01-01	{Drama}
632	tt9844710	movie	Hatsukoi Waltz	f	1955-01-01	{}
633	tt9844734	movie	Shinpen bochan	f	1941-01-01	{Drama}
634	tt9844752	movie	The Teeth of Richard Harris	f	\N	{Comedy}
635	tt9844772	movie	Windcatcher Dream	f	2019-01-01	{Biography,Drama}
636	tt9844838	movie	Kahreden darbe	f	1965-01-01	{}
637	tt9844842	movie	99 Luftballons und ein bisschen Frieden - Der tolle Schlagerabend	f	2019-01-01	{Documentary}
638	tt9844856	movie	Perdiendo a AWA23	f	\N	{Sci-Fi}
639	tt9844864	movie	Leading Ladies	f	2021-01-01	{Comedy,Drama}
641	tt9844890	movie	#AbroHilo	f	2019-01-01	{Documentary}
642	tt9844892	movie	Time & Again	f	2019-01-01	{Drama,Romance}
643	tt9844936	movie	Suiko den	f	1942-01-01	{Drama}
644	tt9844938	movie	Onoda: 10,000 Nights in the Jungle	f	2021-01-01	{Adventure,Drama,War}
645	tt9844944	movie	Exit Point	f	2019-01-01	{Action}
646	tt9845012	movie	The Makavejev Case or Trial in a Movie Theater	f	2018-01-01	{Documentary}
647	tt9845036	movie	Carturan	f	2019-01-01	{Drama}
648	tt9845054	movie	Western Culture	f	\N	{Crime}
649	tt9845110	movie	Two of Us	f	2019-01-01	{Drama,Romance}
651	tt9845398	movie	End of the Century	f	2019-01-01	{Drama}
652	tt9845564	movie	Below Zero	f	2021-01-01	{Action,Adventure,Crime}
653	tt9846030	movie	The Little Refugee	f	2020-01-01	{Drama}
654	tt9846154	movie	Sadko	f	2018-01-01	{Comedy,Family}
655	tt9846288	movie	Kevin 1er	f	\N	{}
656	tt9846308	movie	Blush	f	\N	{Drama}
657	tt9846462	movie	Todo	f	2019-01-01	{}
659	tt9846650	movie	Thrive II: This is What it Takes	f	2020-01-01	{Documentary,Sci-Fi}
660	tt9846692	movie	Food ReLOVution	f	2016-01-01	{Documentary}
661	tt9846718	movie	A Killing Kind	f	\N	{Crime}
662	tt9846800	movie	Come Monday Mornin'	f	\N	{Drama}
663	tt9846922	movie	Sudu Hansi	f	2010-01-01	{Drama}
664	tt9847234	movie	As Time Flows	f	2019-01-01	{Drama}
665	tt9847236	movie	Just Some Kids	f	2019-01-01	{Musical}
666	tt9847270	movie	Passagers d'Orsay	f	2018-01-01	{Documentary}
667	tt9847360	movie	A Glitch in the Matrix	f	2021-01-01	{Documentary}
669	tt9847450	movie	Well-Behaved Women	f	\N	{Comedy,Drama}
670	tt9847482	movie	I will speak, I will speak!	f	2018-01-01	{Documentary}
671	tt9847562	movie	Untitled Casino Mogul Project	f	\N	{Crime,Drama}
672	tt9847570	movie	Double Date	f	2019-01-01	{Comedy}
673	tt9847844	movie	Papers XIII: Blood Currency	f	2019-01-01	{Comedy}
674	tt9847874	movie	Track n Field	f	\N	{Comedy,Sport}
675	tt9847922	movie	Vendanges Moldaves	f	\N	{Drama}
676	tt9847974	movie	The Myth of Mathew	f	\N	{Drama}
677	tt9848038	movie	Yann	f	2019-01-01	{Documentary}
678	tt9848084	movie	Kdo = Mi2?	f	2015-01-01	{Documentary}
680	tt9848104	movie	The Art of Directing: Frank Capra	f	2016-01-01	{Biography,Documentary}
681	tt9848124	movie	Pinkfong 50 Best Hits: Baby Shark and More	f	2019-01-01	{Music}
682	tt9848320	movie	Mabaya	f	\N	{Horror}
683	tt9848382	movie	Trumphobia: What Both Sides Fear	f	2020-01-01	{Documentary}
684	tt9848404	movie	When a Woman Loves a Man	f	2019-01-01	{Drama}
685	tt9848452	movie	27 Rue de Fleurus	f	2019-01-01	{Comedy}
686	tt9848514	movie	Gray Justice	f	\N	{Thriller}
687	tt9848518	movie	Kustomonsters 2	f	2020-01-01	{Animation}
688	tt9848544	movie	Solid Venom	f	\N	{Fantasy}
690	tt9848668	movie	Zee van tijd	f	2022-01-01	{Drama}
693	tt9848946	movie	Aruakh	f	2018-01-01	{Drama,Horror}
694	tt9848962	movie	Soldier Boy	f	2019-01-01	{Drama,War}
695	tt9848966	movie	Charley Parkhurst	f	\N	{}
697	tt9848972	movie	Bilched	f	2019-01-01	{Comedy,Drama}
698	tt9848990	movie	To Win It All	f	2019-01-01	{Documentary}
699	tt9849004	movie	Happily	f	2021-01-01	{Comedy,Crime,Romance}
700	tt9849094	movie	Marks: We Are All One	f	\N	{Documentary}
701	tt9849122	movie	Sriman Surdas	f	2018-01-01	{Action,Comedy}
702	tt9849154	movie	The sound of Raval	f	2009-01-01	{Documentary}
703	tt9849156	movie	Salome and the Quest for the Forgotten City	f	\N	{Animation}
704	tt9849158	movie	Saksham	f	\N	{Drama}
705	tt9849160	movie	Black Crow 1	f	2019-01-01	{}
706	tt9849176	movie	The Irish Comedy Tour	f	2019-01-01	{Comedy}
707	tt9849228	movie	A Jungle of Hero's	f	\N	{Action}
709	tt9849262	movie	A Trip	f	2019-01-01	{Mystery}
710	tt9849292	movie	Here Again	f	\N	{Family}
711	tt9849304	movie	CampFire the Awakening	f	\N	{Horror}
712	tt9849324	movie	Murder On-Line	f	\N	{Mystery,Thriller}
713	tt9849348	movie	Contracted by Mistake	f	\N	{Action}
714	tt9849402	movie	The Charcoal	f	2019-01-01	{Drama}
715	tt9849432	movie	An Untouchable Alliance	f	\N	{Action}
716	tt9849448	movie	Little Reaper	f	\N	{}
717	tt9849512	movie	Munchs mødre	f	2013-01-01	{Biography,Documentary,History}
718	tt9849516	movie	Sensual Danger	f	\N	{Thriller}
720	tt9849630	movie	Lysleite	f	2010-01-01	{Documentary}
721	tt9849644	movie	Mind Thief	f	\N	{Sci-Fi,Thriller}
722	tt9849660	movie	Pretorius/Steinauer Horror Film	f	\N	{Horror}
723	tt9849680	movie	Untitled Ethiopia Project	f	\N	{Sci-Fi}
724	tt9849830	movie	Bakugan: Battle Force	f	2019-01-01	{}
725	tt9849854	movie	If I Have to Die 1,000 Times	f	2008-01-01	{Documentary}
726	tt9849866	movie	Paladin: Dawn of the Dragon Slayer	f	\N	{Fantasy}
727	tt9849872	movie	Dragons of Camelot	f	\N	{Action,Fantasy}
728	tt9849912	movie	Straight Outta Oakland	f	\N	{}
730	tt9849964	movie	All of Them Are Troublesome Girls!	f	2019-01-01	{Comedy,Romance}
731	tt9849984	movie	Demoniac	f	2019-01-01	{Horror}
732	tt9849992	movie	Amar Premi Sheni Vijanand	f	1974-01-01	{Drama}
733	tt9850050	movie	Charter	f	2020-01-01	{Drama}
734	tt9850054	movie	Conspiracy Theory	f	\N	{Sci-Fi}
736	tt9850066	movie	Håp	f	\N	{}
737	tt9850084	movie	Hadawatha Mal Yayai	f	2010-01-01	{Drama,Romance}
738	tt9850116	movie	Atr-e-Dagh	f	2018-01-01	{Drama}
739	tt9850132	movie	The Happy Accident	f	\N	{Documentary}
740	tt9850220	movie	Frankly	f	2020-01-01	{Comedy,Drama}
741	tt9850246	movie	Mirrewinter	f	2018-01-01	{War}
743	tt9850280	movie	The Commute	f	\N	{Comedy}
744	tt9850344	movie	Night Shift	f	2020-01-01	{Crime,Drama}
745	tt9850370	movie	#Anne Frank Parallel Stories	f	2019-01-01	{Drama,History}
746	tt9850378	movie	Man'najgy taptal	f	2015-01-01	{Comedy}
747	tt9850386	movie	The Bee Gees: How Can You Mend a Broken Heart	f	2020-01-01	{Biography,Documentary,Music}
748	tt9850388	movie	Sugartown: For a Fistful of Votes	f	2019-01-01	{Documentary}
749	tt9850420	movie	800	f	\N	{}
750	tt9850450	movie	Walking on Water	f	\N	{}
751	tt9850462	movie	A Death Foretold	f	\N	{}
752	tt9850468	movie	Food	f	\N	{}
753	tt9850488	movie	Tigers	f	2020-01-01	{Biography,Drama,Sport}
754	tt9850492	movie	Babi Yar. Context	f	2021-01-01	{Documentary,History}
755	tt9850498	movie	All Terrain	f	2022-01-01	{Action}
756	tt9850506	movie	The Deer and the Cauldron	f	\N	{}
758	tt9850578	movie	Subject: Point Alpha	f	\N	{Thriller}
759	tt9850594	movie	The Inequalities of Love	f	\N	{Romance}
760	tt9850646	movie	Doorbeen	f	2019-01-01	{Adventure,Comedy,Drama}
761	tt9850694	movie	Treacherous	f	\N	{Crime}
762	tt9850740	movie	Sold Out	f	2021-01-01	{Drama,Music,Romance}
764	tt9850800	movie	Kathleen Kilbane - In the Presence of a Holy Child	f	2019-01-01	{Documentary}
765	tt9851050	movie	Sisters	f	2019-01-01	{Action,Drama,Fantasy}
766	tt9851366	movie	Nato due volte	f	\N	{Biography}
767	tt9851426	movie	Suba	f	2010-01-01	{Drama}
768	tt9851810	movie	Dodi po mene	f	\N	{Horror,Thriller}
770	tt9851990	movie	Tikiri Suwanda	f	2010-01-01	{Drama,Family}
771	tt9852102	movie	Like a Frog	f	\N	{Adventure,Animation,Comedy}
773	tt9852508	movie	Viyapath Bambara	f	2010-01-01	{Drama}
774	tt9852644	movie	La Fin des terres	f	2019-01-01	{Documentary}
775	tt9853118	movie	KYrYoyekh	f	2014-01-01	{Crime}
776	tt9853264	movie	Chorar de Rir	f	2019-01-01	{Comedy,Drama}
777	tt9853452	movie	Veszett idök	f	2001-01-01	{Fantasy}
778	tt9853480	movie	Guriatã	f	2018-01-01	{Documentary,Music}
780	tt9853500	movie	Bandit	f	2022-01-01	{Action,Thriller}
781	tt9853508	movie	Enforcer	f	\N	{Drama}
782	tt9853520	movie	A Sequence far away from Sea	f	\N	{Drama}
783	tt9853552	movie	The Beast	f	\N	{Thriller}
784	tt9853626	movie	Tranzicion - art et pouvoir en Albanie	f	2017-01-01	{Documentary}
785	tt9853632	movie	Los Fierros	f	2018-01-01	{Drama}
786	tt9853648	movie	Was wurde aus Jugoslawien?	f	\N	{Documentary}
787	tt9853664	movie	Luz	f	\N	{Drama}
788	tt9853686	movie	Black Man White Skin	f	2015-01-01	{Documentary}
789	tt9853814	movie	De Lo Mio	f	2019-01-01	{Comedy,Drama}
790	tt9853838	movie	¡Vamos, Emilio!	f	\N	{Drama}
792	tt9853946	movie	I Saw the Hosts of the Dead	f	2019-01-01	{Documentary}
793	tt9853970	movie	Motel, Iowa	f	\N	{Action}
794	tt9853988	movie	Recht van Wind	f	2012-01-01	{Documentary}
795	tt9853992	movie	The Long Goodbye-The Kara Tippetts Story	f	2019-01-01	{Documentary}
796	tt9853994	movie	White Fang	f	\N	{Adventure,Western}
797	tt9854002	movie	Musume jûroku jazz matsuri	f	1954-01-01	{Musical}
798	tt9854018	movie	Lama Lo Amart Li	f	2017-01-01	{Documentary}
799	tt9854058	movie	Shadows	f	2022-01-01	{Action}
800	tt9854082	movie	The Crossing	f	\N	{Action,Drama,Thriller}
801	tt9854284	movie	Grace Hart	f	\N	{Mystery}
803	tt9854638	movie	Mamá al volante	f	2019-01-01	{Comedy}
804	tt9854664	movie	Love Crazy	f	\N	{}
805	tt9854686	movie	I Am Here for You	f	\N	{Drama,Romance}
806	tt9854706	movie	Lost Objects: Three Encounters with the Gaze	f	\N	{Documentary}
807	tt9854728	movie	Shiksa's Guide to the High Holy Days	f	\N	{Comedy}
808	tt9854764	movie	Grace Metalious Project	f	\N	{Biography}
809	tt9854782	movie	Water Makes Us Wet: An Ecosexual Adventure	f	2019-01-01	{Documentary}
810	tt9854800	movie	The Funeral and The Funny Farm	f	\N	{Comedy}
812	tt9854836	movie	Ludes	f	\N	{Drama}
813	tt9854844	movie	Familia Blondina	f	2019-01-01	{Comedy}
814	tt9854846	movie	Good Friday	f	2019-01-01	{Drama}
815	tt9854950	movie	The Old Men	f	\N	{Drama}
816	tt9854970	movie	The New Coin	f	\N	{Drama}
817	tt9854992	movie	Saber Crecer	f	2017-01-01	{Comedy,Drama}
818	tt9855002	movie	Bomarzo 2007	f	2007-01-01	{Music}
819	tt9855016	movie	Smooth Criminal	f	\N	{Biography,Drama,Music}
820	tt9855090	movie	Bloom	f	\N	{Drama,Thriller}
821	tt9855092	movie	Blackout	f	2013-01-01	{Action}
823	tt9855210	movie	An Actress' Dream	f	1985-01-01	{Crime,Drama}
824	tt9855214	movie	Kisan	f	2006-01-01	{Drama,Sport}
825	tt9855408	movie	Konte Mogudu Penki Pellam	f	1980-01-01	{Comedy}
826	tt9855500	movie	Who Killed Nicole?	f	2019-01-01	{Crime,Documentary,Drama}
827	tt9855510	movie	Oildale	f	2019-01-01	{Drama,Family,Music}
828	tt9855578	movie	L'impasse	f	2016-01-01	{}
830	tt9855728	movie	Under Your Bed	f	2019-01-01	{Drama,Thriller}
831	tt9855782	movie	Tujhi Majhi Love Story	f	2014-01-01	{Romance}
832	tt9855788	movie	Rhododendron	f	\N	{Thriller}
833	tt9855792	movie	Fribytterdrømmen	f	2019-01-01	{Documentary,Music}
834	tt9855832	movie	Sihina Devduwa	f	2009-01-01	{Drama,Thriller}
835	tt9855900	movie	Faun	f	\N	{}
836	tt9855944	movie	Tomorrow's A New Day	f	\N	{}
837	tt9855958	movie	Chippendales	f	\N	{}
838	tt9855970	movie	Soudain, Seuls	f	\N	{}
840	tt9855984	movie	Sinasuna Adaren	f	2009-01-01	{Drama,Romance}
841	tt9855986	movie	King of the Swamp	f	\N	{}
842	tt9855990	movie	Nightmare Tenant	f	2018-01-01	{Thriller}
843	tt9855996	movie	The Legend of Sinbad	f	\N	{}
844	tt9855998	movie	Volare	f	\N	{}
845	tt9856064	movie	The Unknown Life of Antarctica	f	2019-01-01	{Documentary}
847	tt9856080	movie	Mezozoy Ahvalati	f	1976-01-01	{Drama,History}
848	tt9856128	movie	Koyoi chikainu	f	1954-01-01	{}
849	tt9856166	movie	Universe Apart	f	\N	{Sci-Fi}
850	tt9856202	movie	The Billy Monk Story	f	\N	{Biography}
851	tt9856224	movie	Purgatory	f	\N	{Action}
852	tt9856270	movie	The Garhwal Rifles	f	\N	{War}
853	tt9856288	movie	Ren'ai taifûken	f	1950-01-01	{Drama}
854	tt9856352	movie	Marianne	f	\N	{}
856	tt9856438	movie	A Southern Fix	f	2017-01-01	{Documentary}
857	tt9856450	movie	The Return of Finlay MacQueen	f	\N	{Comedy,Drama}
858	tt9856478	movie	The Hidden Tiger	f	2021-01-01	{Documentary}
859	tt9856484	movie	The Hunt	f	\N	{Crime}
860	tt9856542	movie	Strapless	f	\N	{Drama}
861	tt9856554	movie	Bassil'ora	f	2019-01-01	{Biography}
863	tt9856568	movie	One Man, Two Guvnors	f	\N	{Comedy}
864	tt9856574	movie	The Spore	f	2021-01-01	{Horror}
865	tt9856600	movie	President's Astrologer	f	\N	{Biography}
866	tt9856606	movie	Mister T.	f	2019-01-01	{Comedy,Drama}
867	tt9856614	movie	Kanun il sangue e l'onore	f	2011-01-01	{Documentary}
868	tt9856618	movie	Kyô wa odotte	f	1947-01-01	{Drama}
869	tt9856680	movie	Puffs: Filmed Live Off Broadway	f	2018-01-01	{Adventure,Comedy}
870	tt9856710	movie	Trafficked--Africa	f	2019-01-01	{Action,Drama}
871	tt9856790	movie	Rosa Mal Sayanaya	f	2009-01-01	{Drama,Romance}
873	tt9857182	movie	The Mystery Of Creativity	f	\N	{Documentary}
874	tt9857480	movie	Golden Voices	f	2019-01-01	{Comedy,Drama,Romance}
875	tt9857522	movie	Daughter of Shanghai	f	2019-01-01	{Documentary}
876	tt9857770	movie	Siksa. Stabat mater dolorosa	f	2018-01-01	{Musical,Mystery}
877	tt9857778	movie	The Final Bow	f	\N	{Mystery}
878	tt9857850	movie	A Guide to Gunfighters of the Wild West	f	2021-01-01	{Comedy,Western}
879	tt9858058	movie	8 Days with Hopper	f	2022-01-01	{Drama}
880	tt9858432	movie	Her Name Is Zelda	f	2004-01-01	{Documentary}
882	tt9858468	movie	Sat School	f	\N	{Comedy}
883	tt9858586	movie	The Golden Whistle	f	\N	{Comedy}
884	tt9858658	movie	Those Who Came Before	f	\N	{Horror}
885	tt9858778	movie	Welcome to Germany - A Cabinet of German Horror	f	2015-01-01	{Comedy,Drama,Horror}
886	tt9858794	movie	Republic Z	f	2018-01-01	{Adventure,Horror,Thriller}
887	tt9858804	movie	Gumby: The Best Untitled Gumby Movie Ever	f	\N	{Animation}
889	tt9858944	movie	A Defiant Heart	f	\N	{Drama,History}
890	tt9858950	movie	Kartallar	f	1972-01-01	{}
891	tt9859016	movie	Best Laid Plans	f	\N	{Thriller}
892	tt9859050	movie	Savior	f	\N	{Action,Thriller}
893	tt9859056	movie	Affliction or (Halcyon)	f	2019-01-01	{Drama}
894	tt9859082	movie	A Land More Kind Than Home	f	\N	{Drama}
895	tt9859102	movie	Transcending	f	\N	{Sci-Fi}
896	tt9859162	movie	Cellar Door	f	2019-01-01	{Horror,Mystery,Thriller}
897	tt9859168	movie	Homesick	f	\N	{Mystery,Thriller}
898	tt9859238	movie	Untitled Martin Mull Documentary	f	\N	{Documentary}
900	tt9859334	movie	Aryabhatta	f	\N	{}
901	tt9859372	movie	Plastic Crack Documentary	f	2019-01-01	{Documentary}
902	tt9859394	movie	Extradition	f	2020-01-01	{}
903	tt9859436	movie	Untitled: The Walking Dead Movie	f	\N	{Drama,Horror,Sci-Fi}
904	tt9859504	movie	Hombres de piel dura	f	2019-01-01	{Drama}
905	tt9859508	movie	Raiu	f	1946-01-01	{}
906	tt9859510	movie	Chocobar	f	2022-01-01	{Documentary}
907	tt9859514	movie	The Warrior	f	\N	{Drama}
908	tt9859528	movie	DNA	f	2019-01-01	{Action}
909	tt9859574	movie	Shiv Shastri Balboa	f	2022-01-01	{Comedy}
910	tt9859596	movie	Aru jokyôshi: Maruhi karada kensa	f	1981-01-01	{}
911	tt9859598	movie	Yari-odori gojûsantsugi	f	1946-01-01	{}
912	tt9859640	movie	Marilyn, Too	f	\N	{Comedy}
913	tt9859646	movie	Niizuma jokyôshi	f	1981-01-01	{}
914	tt9859688	movie	Danchizuma: Ne-waza nure-waza	f	1981-01-01	{}
916	tt9859770	movie	Irezumi dorei fujin	f	1981-01-01	{}
917	tt9859786	movie	Rory Gallagher: Irish Tour '74	f	1974-01-01	{Documentary}
918	tt9859806	movie	Apolitics Now!	f	2013-01-01	{Documentary}
919	tt9859814	movie	The Cacophony of Donbas	f	2018-01-01	{Documentary}
920	tt9859816	movie	Lunar Loons	f	\N	{Horror}
921	tt9859854	movie	Mourning Over Munchers	f	\N	{Horror}
923	tt9860126	movie	My Inner Voice	f	\N	{Documentary}
924	tt9860134	movie	Go Your Own Way	f	\N	{Drama}
926	tt9860252	movie	As Long As It Takes	f	2015-01-01	{Comedy}
927	tt9860254	movie	Asgaya Part 2 - The Ib	f	\N	{Drama,Mystery,Sci-Fi}
928	tt9860282	movie	Nozoki nerai	f	1981-01-01	{}
929	tt9860338	movie	Untitled Ruth Coker Burks Project	f	\N	{}
930	tt9860350	movie	The Asadas	f	2020-01-01	{Drama,Family}
931	tt9860378	movie	Dwaar ... the voyage out	f	2013-01-01	{Drama}
933	tt9860522	movie	The Unafraid	f	2018-01-01	{Documentary}
934	tt9860542	movie	Vietnam, Puerto Rico	f	2018-01-01	{Documentary}
935	tt9860558	movie	Until You See Me	f	\N	{Mystery}
936	tt9860566	movie	Brothers	f	\N	{Comedy}
937	tt9860662	movie	Lost and Found	f	\N	{Documentary}
938	tt9860694	movie	Super Star	f	2008-01-01	{Comedy,Drama}
939	tt9860728	movie	Falling Inn Love	f	2019-01-01	{Comedy,Romance}
940	tt9860834	movie	Untitled Chris Cornell Documentary	f	2021-01-01	{Documentary}
941	tt9860858	movie	Costa Brava, Lebanon	f	2021-01-01	{Drama}
942	tt9860860	movie	Abduction 101	f	2019-01-01	{Adventure,Horror}
943	tt9860890	movie	The Whistler 2	f	\N	{}
944	tt9860900	movie	Saba	f	\N	{Animation}
945	tt9860902	movie	The Eighth	f	\N	{Action}
946	tt9860934	movie	The Baccarat Queen	f	\N	{}
948	tt9861040	movie	Big Gay Jamboree	f	\N	{Musical}
949	tt9861122	movie	Silent Retreat	f	\N	{Comedy,Romance}
950	tt9861178	movie	Only Lola	f	\N	{}
951	tt9861190	movie	The Sweet Bitterness of Ripe Pomegranates	f	\N	{}
952	tt9861192	movie	Manko Babari	f	2017-01-01	{Drama}
953	tt9861200	movie	The Swedish Torpedo	f	\N	{}
954	tt9861204	movie	The Love Europe Project	f	2019-01-01	{Drama}
955	tt9861214	movie	Three Days of Fish	f	\N	{}
956	tt9861220	movie	Is She Raju?	f	2019-01-01	{Comedy}
957	tt9861230	movie	A Quiet Migration	f	\N	{}
958	tt9861254	movie	Altin Horoz	f	2014-01-01	{Comedy}
960	tt9861282	movie	La story de Patrick Bruel: le film de sa vie	f	2018-01-01	{Documentary}
961	tt9861288	movie	Boutchou	f	2020-01-01	{Comedy}
962	tt9861316	movie	Çakma hayat	f	2013-01-01	{Comedy}
963	tt9861358	movie	The Night Shifts	f	\N	{Horror}
964	tt9861368	movie	20 sketchs, une vie: le couple dans tous ses états	f	2018-01-01	{Documentary}
965	tt9861466	movie	L'aventure Indochine	f	2017-01-01	{Documentary}
966	tt9861472	movie	Celles qui restent	f	2019-01-01	{Documentary}
967	tt9861480	movie	Atlas	f	2021-01-01	{Drama}
969	tt9861492	movie	Tann Mann Aur Dhan	f	2016-01-01	{Crime}
970	tt9861516	movie	Marfim	f	2016-01-01	{Documentary}
971	tt9861522	movie	Ali	f	2019-01-01	{Drama}
972	tt9861548	movie	Just Crawl	f	\N	{Horror,Mystery}
973	tt9861904	movie	The Peculiar and Uncanny Augustin Hotel	f	\N	{Comedy}
974	tt9861910	movie	The Story of a Panty	f	2019-01-01	{Documentary}
975	tt9861924	movie	The Grand Scheme	f	2012-01-01	{Documentary}
976	tt9861928	movie	Une philosophie des yeux fermés	f	2012-01-01	{Documentary}
977	tt9861952	movie	Sweet Dreams	f	\N	{Crime}
978	tt9861958	movie	Babalon	f	\N	{Thriller}
979	tt9861980	movie	Bataclan, une vie de spectacles	f	2016-01-01	{Documentary}
981	tt9862288	movie	Les victoires de la musique 2016, les révélations	f	2016-01-01	{Documentary}
982	tt9862444	movie	Avenida Almirante Reis em 3 andamentos	f	2018-01-01	{Documentary,History}
983	tt9862466	movie	God svini	f	\N	{Comedy}
984	tt9862468	movie	Téléphone, jolie petite histoire	f	2016-01-01	{Documentary}
985	tt9862606	movie	La contagion	f	2014-01-01	{Documentary}
986	tt9862622	movie	Time Zone	f	2017-01-01	{Drama}
987	tt9862734	movie	Awake	f	\N	{Sci-Fi}
988	tt9862782	movie	Absolument Obispo, 20 ans de tubes	f	2013-01-01	{Documentary}
989	tt9862978	movie	Earth	f	2018-01-01	{Documentary}
990	tt9863150	movie	Far from Us	f	2019-01-01	{Drama}
991	tt9863488	movie	Stardust	f	\N	{Drama,Romance}
993	tt9863642	movie	Deceitful Tendencies	f	2022-01-01	{Drama,Romance,Thriller}
994	tt9863778	movie	A Kidnap	f	\N	{Thriller}
995	tt9863792	movie	Joshua trip	f	2014-01-01	{Documentary}
996	tt9863798	movie	Diários Suspensos	f	2016-01-01	{Documentary,Drama}
997	tt9863842	movie	Father Daughter	f	\N	{Drama}
999	tt9863870	movie	Threesome	f	\N	{Romance}
1000	tt9863892	movie	Good Shooting	f	\N	{Drama,Thriller}
1001	tt9863904	movie	Rule Britannia	f	2020-01-01	{Fantasy}
1002	tt9863942	movie	Human Lib	f	2020-01-01	{Fantasy}
1003	tt9863974	movie	Emerald Seas	f	\N	{Crime,Drama}
1004	tt9864060	movie	Charmaine	f	2019-01-01	{Action}
1005	tt9864128	movie	Anna's Truth	f	\N	{Drama}
1006	tt9864160	movie	Simone sans peur	f	2017-01-01	{Documentary}
1007	tt9864224	movie	Playdate	f	\N	{Romance}
1009	tt9864326	movie	Chiaroscuro: Capturing My Father	f	\N	{Documentary}
1010	tt9864578	movie	An Ungodly Tie	f	2019-01-01	{Horror}
1011	tt9864800	movie	Like Dogs	f	2021-01-01	{Horror,Thriller}
1012	tt9865010	movie	Una Chica Invisible	f	2020-01-01	{Comedy}
1013	tt9865032	movie	No Outlet	f	\N	{Thriller}
1014	tt9865046	movie	Jûnana-sai kiken na nozoki	f	1981-01-01	{}
1015	tt9865054	movie	Pennie	f	2018-01-01	{Documentary}
1016	tt9865104	movie	Bizarre Bondage Wife	f	1981-01-01	{}
1017	tt9865144	movie	Inran	f	1981-01-01	{}
1018	tt9865210	movie	Dakitai onna: Dakaretai onna	f	1981-01-01	{}
1019	tt9865222	movie	Each One Teach One	f	2019-01-01	{Documentary}
1021	tt9865284	movie	To the Brink and Back	f	2018-01-01	{}
1022	tt9865308	movie	Bondage and Cage	f	1981-01-01	{}
1023	tt9865310	movie	Legend of the Demon Seal	f	2019-01-01	{Action,Fantasy}
1024	tt9865324	movie	Bikô itazura	f	1981-01-01	{}
1025	tt9865346	movie	Nippon chikan rettô	f	1981-01-01	{}
1026	tt9865352	movie	Making of the Glorious Seven	f	2016-01-01	{Documentary}
1027	tt9865374	movie	Jokôsei: Fujun isei kôyû	f	1981-01-01	{}
1028	tt9865400	movie	Crossed Blood Lines	f	\N	{Fantasy}
1029	tt9865452	movie	Before It's Too Late	f	2019-01-01	{Drama,Thriller}
1030	tt9865462	movie	Lone Road	f	\N	{Thriller}
1031	tt9865470	movie	Jokôsei ijô	f	1981-01-01	{}
1033	tt9865494	movie	Hitozuma kôkan: Zetchô	f	1981-01-01	{}
1034	tt9865530	movie	Chikan yado	f	1981-01-01	{}
1035	tt9865578	movie	Within the Darkest of Days	f	\N	{Crime,Mystery,Thriller}
1036	tt9865798	movie	Get Over It	f	\N	{Comedy,Drama}
1037	tt9866010	movie	The three of us and the moon	f	\N	{Documentary,Drama}
1038	tt9866072	movie	Holidate	f	2020-01-01	{Comedy,Romance}
1040	tt9866204	movie	All Those Small Things	f	2021-01-01	{Drama}
1041	tt9866208	movie	Beyond the Line	f	2019-01-01	{War}
1042	tt9866220	movie	Chocolate Road	f	2021-01-01	{Documentary}
1043	tt9866284	movie	The Far Green Country	f	2018-01-01	{Documentary}
1044	tt9866344	movie	Mon Ami Walid	f	2019-01-01	{Comedy,Drama}
1045	tt9866394	movie	Dame un Chance	f	2017-01-01	{Crime,Drama}
1046	tt9866400	movie	The Unkind Hours	f	\N	{Thriller}
1047	tt9866476	movie	Dead Sins	f	\N	{Horror}
1048	tt9866530	movie	Sex shock: Ranbô	f	1981-01-01	{}
1049	tt9866558	movie	Okashi nori	f	1981-01-01	{}
1050	tt9866568	movie	Seifuku o shibaru!	f	1981-01-01	{}
1051	tt9866590	movie	Catching Pears	f	\N	{Comedy}
1052	tt9866616	movie	Hakuchû bôkô yûgi	f	1981-01-01	{}
1054	tt9866642	movie	Ijô sex shôjo yûkai	f	1981-01-01	{}
1055	tt9866654	movie	Serial Dater	f	\N	{Horror}
1056	tt9866682	movie	Ekageyi Sokari	f	\N	{Drama}
1057	tt9866700	movie	Paranormal Investigation	f	2018-01-01	{Horror,Thriller}
1058	tt9866708	movie	Wild Karnataka	f	2020-01-01	{Documentary,Family}
1059	tt9866710	movie	Obsession	f	2017-01-01	{Thriller}
1060	tt9866712	movie	Aadim Vichar	f	2014-01-01	{Comedy,Drama}
1061	tt9866728	movie	Mibôjin ushiro kara	f	1981-01-01	{}
1063	tt9866738	movie	Adara Meena	f	2008-01-01	{Drama}
1064	tt9866740	movie	Sex shinan: Hissatsu tsubo zeme	f	1981-01-01	{}
1065	tt9866744	movie	When Hari Met His Saali	f	\N	{Romance}
1066	tt9866746	movie	Modaete nurete	f	1981-01-01	{}
1067	tt9866750	movie	Shojo inmu	f	1981-01-01	{}
1068	tt9866768	movie	Kanjiru gômon	f	1981-01-01	{}
1069	tt9866770	movie	Joshi daisei: Midara na campus	f	1981-01-01	{}
1070	tt9866774	movie	Beijing Diaries	f	2019-01-01	{Drama}
1071	tt9866792	movie	Aru kangofu: Iyarashii shujutsu	f	1981-01-01	{}
1072	tt9866800	movie	Midara nozoki	f	1981-01-01	{}
1073	tt9866884	movie	Samsaram O Sangeetam	f	1985-01-01	{Drama}
1074	tt9866916	movie	Mitra	f	2021-01-01	{Drama}
1075	tt9866944	movie	The End Of The World - Episode 4: Amphibious Warfare	f	2018-01-01	{}
1077	tt9867130	movie	Sari Öküz Parasi	f	1972-01-01	{}
1078	tt9867200	movie	The End of the World - Episode 5: Civil War	f	2019-01-01	{Animation}
1079	tt9867248	movie	Look Me Over: Liberace	f	2021-01-01	{Biography,Documentary,Music}
1080	tt9867250	movie	The End of The World - Episode 6: Asymmetric Warfare	f	2019-01-01	{}
1081	tt9867278	movie	When We Walk	f	2019-01-01	{Documentary}
1082	tt9867458	movie	Muse	f	2019-01-01	{Drama}
1083	tt9867478	movie	Approaching Shadows	f	2021-01-01	{Horror}
1084	tt9867536	movie	The Call	f	\N	{Documentary}
1086	tt9867628	movie	The Harbour	f	\N	{Crime}
1087	tt9867674	movie	The War on my Phone	f	2018-01-01	{Documentary,War}
1088	tt9867714	movie	Sexy weekend	t	2019-01-01	{Adult}
1089	tt9867722	movie	Monica	f	2019-01-01	{Mystery}
1090	tt9868158	movie	The Strings	f	2020-01-01	{Horror,Music,Thriller}
1091	tt9868600	movie	Samaritan	f	\N	{Horror,Romance,Thriller}
1093	tt9868716	movie	Untitled Jacob Johnston Project	f	\N	{Thriller}
1094	tt9868718	movie	Man Ray et les équations shakespeariennes	f	\N	{Documentary}
1095	tt9868720	movie	A Grayling Never Dies	f	\N	{Action,Adventure,History}
1096	tt9868724	movie	Mukoirî gokasen	f	1947-01-01	{Drama}
1097	tt9868778	movie	MissGuided Angel	f	\N	{Comedy}
1098	tt9868780	movie	Untitled Patrick Tunison Project	f	\N	{Drama}
1099	tt9868822	movie	Missguided Angel	f	\N	{Comedy}
1100	tt9868974	movie	The Harvest	f	\N	{Thriller}
1102	tt9869010	movie	Joi no kahanshin: Monzetsu jigoku	f	1981-01-01	{}
1103	tt9869016	movie	Fiesta Time	f	\N	{Animation}
1104	tt9869028	movie	The Korn Brothers	f	\N	{Comedy}
1105	tt9869038	movie	Who Could Love a Monster?	f	\N	{Horror}
1106	tt9869064	movie	Nihon no shikei	f	1981-01-01	{}
1107	tt9869228	movie	Star Trek: Dark Horizon	f	2015-01-01	{Sci-Fi}
1108	tt9869312	movie	Back to Me	f	\N	{Drama}
1109	tt9869320	movie	Limbo (El borde del infierno)	f	\N	{Horror}
1110	tt9869514	movie	Wake Up Call	f	2017-01-01	{Action}
1111	tt9869564	movie	April 7, 1980	f	2020-01-01	{Action,Drama}
1112	tt9869578	movie	OCD & Me	f	2016-01-01	{Documentary}
1113	tt9869616	movie	Secret U.S.A.	f	\N	{Drama}
1114	tt9869664	movie	Team Survival	f	\N	{Action}
1116	tt9869706	movie	Digging Deeper	f	\N	{Comedy,Romance}
1117	tt9869728	movie	Unbreakable: True Lives	f	2017-01-01	{Documentary}
1118	tt9869744	movie	100 Miles the movie	f	2018-01-01	{Drama}
1119	tt9869746	movie	Geheimnisse der Sowjet-Technik	f	2018-01-01	{Documentary}
1120	tt9869748	movie	This Can't be Real	f	\N	{Thriller}
1121	tt9869782	movie	Dangerous Obsession	f	\N	{Thriller}
1122	tt9869856	movie	The Only Option	f	\N	{Drama}
1123	tt9869862	movie	Perverted Pleasure: Forbidden Lips	f	1981-01-01	{}
1124	tt9869890	movie	Wakazuma uwaki-zeme	f	1981-01-01	{}
1125	tt9869902	movie	Questionable Homicide	f	\N	{Mystery}
1126	tt9869912	movie	SM seminar: Seifuku no jôô	f	1981-01-01	{}
1127	tt9869928	movie	Sagutte nureru	f	1981-01-01	{}
1128	tt9869938	movie	Kyûsho zeme: Musei	f	1981-01-01	{}
1130	tt9869942	movie	Hugo Blanco, Deep River	f	2019-01-01	{Biography,Documentary,History}
1131	tt9869952	movie	The First Company	f	2018-01-01	{Documentary}
1132	tt9869994	movie	The Match, The Annie Tyler Story	f	2018-01-01	{Comedy,Drama}
1133	tt9870012	movie	Underestimated	f	\N	{Action}
1134	tt9870248	movie	Final Betrayal	f	\N	{Thriller}
1135	tt9870280	movie	Full Extent	f	\N	{Action}
1136	tt9870308	movie	Time Angels	f	\N	{Action}
1137	tt9870368	movie	Secret Protector	f	\N	{Action,Adventure}
1139	tt9870502	movie	Star Trek: The Infinite Chain	f	1994-01-01	{Sci-Fi}
1140	tt9870604	movie	Bikô hentai	f	1981-01-01	{}
1141	tt9870612	movie	Randy Writes a Novel	f	2018-01-01	{Comedy}
1142	tt9870618	movie	Hentai midara yume	f	1981-01-01	{}
1143	tt9870648	movie	Kyôhaku bôkô okashi	f	1981-01-01	{}
1144	tt9870660	movie	Gekisatsu!! Mejû no kezori	f	1981-01-01	{}
1145	tt9870726	movie	Gholamreza Takhti	f	2019-01-01	{Biography,Drama,Sport}
1146	tt9870786	movie	HER	f	\N	{Thriller}
1147	tt9870790	movie	Shotaiken name	f	1981-01-01	{}
1148	tt9870814	movie	Joshi daisei: Hageshiku daite	f	1981-01-01	{}
1149	tt9870828	movie	Danchizuma: Zetsugi	f	1981-01-01	{}
1150	tt9870850	movie	Chikan nozoki no kairaku	f	1981-01-01	{}
1151	tt9871048	movie	The Hobby	f	\N	{Documentary}
1153	tt9871322	movie	La rage du cannibale et l'humilité du vainqueur	f	\N	{Documentary}
1154	tt9871328	movie	Ai no sakyû	f	1953-01-01	{}
1156	tt9871446	movie	Il viaggio di Adelina	f	2017-01-01	{Fantasy}
1157	tt9871454	movie	Samhalinchha Kahile Mann	f	2022-01-01	{Action,Drama,Romance}
1158	tt9871530	movie	The Art of Robbing a Drug Dealer	f	\N	{Adventure,Crime,Drama}
1159	tt9871628	movie	Vamp	f	2019-01-01	{Drama,Horror}
1160	tt9871690	movie	Garten	f	2019-01-01	{Drama}
1161	tt9871736	movie	Bôya monogatari	f	1951-01-01	{}
1162	tt9871956	movie	Bufo Alvarius: The Underground Secret	f	2018-01-01	{Documentary}
1163	tt9871990	movie	Paris Boutique	f	2022-01-01	{Comedy}
1164	tt9872024	movie	Puzzled	f	\N	{Drama}
1165	tt9872038	movie	Twinkle Twinkle	f	2019-01-01	{Horror}
1166	tt9872052	movie	Eight	f	2018-01-01	{Thriller}
1168	tt9872214	movie	Fair Rivers	f	\N	{Drama,Thriller}
1169	tt9872368	movie	Give Me a Ride	f	2019-01-01	{Drama}
1170	tt9872392	movie	La sonrisa de Krahe	f	2019-01-01	{Music}
1171	tt9872488	movie	Anatoli's Dream	f	2018-01-01	{Drama}
1172	tt9872556	movie	Ordinary Happiness	f	2019-01-01	{Comedy,Fantasy}
1173	tt9872558	movie	Takkar	f	2022-01-01	{Drama}
1174	tt9872594	movie	Grey Snow	f	\N	{Action,Adventure,Crime}
1175	tt9872602	movie	Behind the Clouds	f	\N	{Drama}
1177	tt9872616	movie	Marid	f	2019-01-01	{Horror}
1178	tt9872618	movie	The Happy Prisoner	f	2019-01-01	{}
1179	tt9872684	movie	Dark Shadows: Speak No Evil	f	2012-01-01	{}
1180	tt9873004	movie	Our Boys	f	2012-01-01	{Drama}
1181	tt9873376	movie	Stranded	f	\N	{Horror}
1182	tt9873566	movie	Viryu Chekayu Molyusya	f	2018-01-01	{Documentary}
1183	tt9873652	movie	Wet Dog	f	2021-01-01	{Drama}
1184	tt9873892	movie	They Cloned Tyrone	f	2022-01-01	{Comedy,Sci-Fi}
1185	tt9873930	movie	Unwitting Deceit	f	2020-01-01	{Thriller}
1186	tt9874080	movie	Encantado	f	2018-01-01	{Documentary}
1188	tt9874620	movie	She Evil Vol.1	f	2018-01-01	{Drama}
1189	tt9874766	movie	Natural	f	\N	{Thriller}
1190	tt9875120	movie	Frostbite	f	2010-01-01	{Documentary}
1191	tt9875128	movie	Halahal	f	2020-01-01	{Crime,Drama,Mystery}
1192	tt9875242	movie	15 fotografii	f	2010-01-01	{Drama}
1193	tt9875278	movie	Dømt som far	f	2001-01-01	{Documentary}
1194	tt9875310	movie	Quiet	f	\N	{Drama,Horror}
1195	tt9875350	movie	Ramu - An Immigrant's Story	f	\N	{Documentary}
1196	tt9875398	movie	Saigon Shuffle	f	\N	{Documentary}
1198	tt9875472	movie	Wild Beasts of the Desert	f	\N	{Horror}
1199	tt9875552	movie	Republica Banana	f	\N	{Documentary}
1200	tt9875554	movie	Alaska	f	2019-01-01	{Drama}
1201	tt9875574	movie	Penitencia	f	2018-01-01	{Documentary}
1202	tt9875590	movie	Hotel Mundial	f	2019-01-01	{Drama}
1203	tt9875852	movie	The House Elf	f	2019-01-01	{Comedy,Family,Fantasy}
1204	tt9875900	movie	Liquor House Comedy 2	f	2019-01-01	{Comedy,Documentary}
1206	tt9875994	movie	In the times of my general	f	\N	{History}
1207	tt9876022	movie	A Cidade dos Piratas	f	2018-01-01	{Animation}
1208	tt9876062	movie	Generation CY	f	\N	{Drama}
1209	tt9876124	movie	Ellis D	f	\N	{Biography}
1210	tt9876126	movie	Kadhal Mattum Vena	f	2019-01-01	{Thriller}
1211	tt9876150	movie	Hanan	f	1944-01-01	{Drama,Musical}
1212	tt9876160	movie	Convoy 48	f	2019-01-01	{Drama,War}
1213	tt9876166	movie	Enchanted Waters	f	\N	{Comedy,Drama,Fantasy}
1215	tt9876222	movie	Black Dots	f	\N	{Drama}
1216	tt9876254	movie	Weekend Pass	f	\N	{Comedy}
1217	tt9876288	movie	Zero Impunity	f	2019-01-01	{Documentary}
1218	tt9876290	movie	Long Story Short	f	\N	{Comedy}
1219	tt9876296	movie	Tricksters	f	1967-01-01	{}
1220	tt9876298	movie	O Segredo de Sara	f	2020-01-01	{Horror,Thriller}
1221	tt9876412	movie	Star Trek: The Final Darkness	f	2004-01-01	{Sci-Fi}
1222	tt9876416	movie	Faustus	f	\N	{Horror}
1223	tt9876436	movie	Queen City	f	2019-01-01	{Documentary}
1224	tt9876544	movie	Reality Therapy	f	2019-01-01	{Drama}
1225	tt9876582	movie	Route 66	f	2018-01-01	{Documentary}
1226	tt9876584	movie	Trágico Final	f	\N	{Drama}
1228	tt9876610	movie	Li Bao Guo	f	2018-01-01	{Drama}
1231	tt9876944	movie	The Passion of Love	f	2018-01-01	{Drama,Romance}
1232	tt9876994	movie	Aamako Man	f	2018-01-01	{Drama,Family}
1233	tt9877072	movie	The Last Tour	f	2020-01-01	{Crime,Drama}
1234	tt9877138	movie	Caught in Time	f	2020-01-01	{Crime,Drama}
1235	tt9877158	movie	Semi-document: Nozokarete nureru	f	1981-01-01	{}
1236	tt9877166	movie	I'll find you	f	\N	{Drama}
1237	tt9877170	movie	Malang	f	2020-01-01	{Action,Crime,Drama}
1238	tt9877178	movie	Hakui bôkô	f	1981-01-01	{}
1239	tt9877274	movie	Yarareru!	f	1981-01-01	{}
1241	tt9877300	movie	Shibari nozoki	f	1981-01-01	{}
1242	tt9877310	movie	Ryôki nikutai zeme	f	1981-01-01	{}
1243	tt9877322	movie	Hentai shimai haha	f	1981-01-01	{}
1244	tt9877336	movie	Itame: Gômon seidorei	f	1981-01-01	{}
1245	tt9877340	movie	Nalpathiyonnu	f	2019-01-01	{Drama,Romance}
1246	tt9877344	movie	The Elephant King Adventures	f	2019-01-01	{Adventure}
1247	tt9877460	movie	Thenkasikkatu	f	2019-01-01	{Action,Drama}
1248	tt9877648	movie	Daivam Sakshi	f	2019-01-01	{Drama}
1250	tt9878032	movie	Vingo	f	2019-01-01	{Fantasy,Mystery}
1251	tt9878054	movie	Régis Campo: Strange Beautiful Music	f	2022-01-01	{Documentary}
1252	tt9878076	movie	One Love 2 Story	f	2019-01-01	{Drama}
1253	tt9878242	movie	Shubharathri	f	2019-01-01	{Drama,Romance}
1254	tt9878246	movie	Fear of Death	f	2022-01-01	{Action,Crime,Fantasy}
1255	tt9878316	movie	Militia Man	f	2019-01-01	{Documentary}
1256	tt9878366	movie	Ni ruo an hao	f	2017-01-01	{Drama}
1258	tt9878412	movie	Jiu si feng xue ye	f	2013-01-01	{Drama}
1259	tt9878414	movie	Yonin no haha	f	1954-01-01	{}
1260	tt9878416	movie	Xing Fu De Xiang Ri Kui	f	2011-01-01	{Drama}
1261	tt9878422	movie	Za kulisami	f	2019-01-01	{Comedy,Drama}
1262	tt9878444	movie	Benedict XVI in Poland	f	2006-01-01	{Documentary}
1263	tt9878486	movie	Art Backstage	f	\N	{Documentary}
1264	tt9878504	movie	Hollywood aan de schelde	f	2018-01-01	{Documentary}
1265	tt9878598	movie	No Such Thing as Housewives 2	f	2019-01-01	{Comedy}
1266	tt9878640	movie	Comunismo futuro	f	2019-01-01	{Documentary}
1267	tt9878650	movie	Surviving the Storm	f	\N	{Drama}
1268	tt9878660	movie	Stric Geza ide v Zaturce	f	2019-01-01	{Documentary}
1270	tt9878708	movie	Ma l'amore c'entra?	f	2017-01-01	{Documentary}
1271	tt9878714	movie	Brush Mileage	f	2019-01-01	{Biography,Documentary}
1272	tt9878738	movie	Le radici dei sogni. L'Emilia Romagna tra cinema e paesaggio	f	2015-01-01	{Documentary}
1273	tt9878810	movie	Jiwan Kanda Ki Phool	f	2019-01-01	{Biography}
1274	tt9878814	movie	La neve nera di Oslo	f	2014-01-01	{Documentary}
1275	tt9878852	movie	The Prodigy: Music in Review	f	2007-01-01	{Music}
1276	tt9878856	movie	Yatra: A Musical Vlog	f	2019-01-01	{Drama,Romance}
1277	tt9878858	movie	Uomini proibiti	f	2015-01-01	{Documentary}
1278	tt9878866	movie	Subha Love	f	2019-01-01	{Romance}
1279	tt9878874	movie	Dis Connected	f	2019-01-01	{Comedy,Romance}
1281	tt9878976	movie	Redeath	f	\N	{Mystery}
1282	tt9879042	movie	Saudades do futuro	f	2018-01-01	{Crime}
1283	tt9879060	movie	The Winter Garden's Tale	f	2018-01-01	{Documentary,Drama}
1284	tt9879080	movie	When the Evening and the Morning Meet - A Journey into the Music of the Baltic	f	2018-01-01	{Documentary,Music}
1285	tt9879096	movie	Wanderer from Vilnius	f	2013-01-01	{Biography,Documentary}
1286	tt9879106	movie	Sharnokhoy - zhyoltyy pyos	f	2019-01-01	{Drama}
1287	tt9879156	movie	Peces de CIudad	f	2007-01-01	{Documentary}
1288	tt9879394	movie	Road to Nowhere	f	\N	{Horror}
1289	tt9879482	movie	Second Coming	f	2019-01-01	{Horror}
1290	tt9879636	movie	Puppets!	f	\N	{Horror}
1292	tt9879720	movie	The Fig House	f	2019-01-01	{Documentary}
1293	tt9879926	movie	Rebel anthology	f	2012-01-01	{Documentary}
1294	tt9880178	movie	The Attention	f	2019-01-01	{Documentary}
1295	tt9880212	movie	I Love You, LC!	f	2019-01-01	{Drama}
1296	tt9880602	movie	Il teatro al lavoro	f	2018-01-01	{Documentary}
1298	tt9880698	movie	Yawahada shikei	f	1981-01-01	{}
1299	tt9880724	movie	Verdict 19	f	2019-01-01	{Biography,Documentary,Drama}
1300	tt9880930	movie	Jokôsei maruhi: Kokuhaku nikki	f	1981-01-01	{}
1301	tt9880934	movie	Beyond Duluth	f	\N	{Drama}
1378	tt9883082	movie	One Fine Day	f	\N	{Drama}
1303	tt9881022	movie	Finding Aloha	f	\N	{Comedy}
1304	tt9881066	movie	Chikan densha: Mae kara ushiro kara	f	1981-01-01	{}
1305	tt9881138	movie	Shagan de misero	f	1981-01-01	{}
1306	tt9881164	movie	Chigi: Shibireru	f	1981-01-01	{}
1307	tt9881220	movie	Niizuma bôkô nurasu	f	1981-01-01	{}
1308	tt9881294	movie	Sembravano applausi	f	2018-01-01	{Documentary}
1309	tt9881306	movie	Jokyôshi scandal	f	1981-01-01	{}
1310	tt9881312	movie	Eaux Troubles (Broken Waters)	f	\N	{Drama}
1311	tt9881330	movie	The Theatre of Terror	f	2019-01-01	{Horror}
1312	tt9881364	movie	Gaja	f	2008-01-01	{Action,Comedy,Romance}
1314	tt9881426	movie	Nozoki nozokare	f	1981-01-01	{}
1315	tt9881454	movie	Seiai kôkan	f	1981-01-01	{}
1316	tt9881460	movie	'Sono Gassman!' Vittorio re della commedia	f	2018-01-01	{Biography,Documentary}
1317	tt9881488	movie	Divine on Fire	f	\N	{Drama}
1318	tt9881572	movie	Noose	f	2019-01-01	{Comedy,Drama,Mystery}
1319	tt9881616	movie	La filla d'algú	f	2019-01-01	{Drama}
1321	tt9881678	movie	Chapter X	f	\N	{Drama,Fantasy,Horror}
1322	tt9881704	movie	Stay	f	\N	{Family}
1323	tt9881750	movie	Unt. Chris Borrelli Action Thriller	f	\N	{Thriller}
1324	tt9881850	movie	Dalia and the Red Book	f	\N	{Animation}
1325	tt9881852	movie	Nanatsu no seiza	f	1951-01-01	{}
1326	tt9881864	movie	Canal de Castilla. El sueño ilustrado	f	2016-01-01	{Documentary}
1328	tt9881912	movie	Footloose in Austria: Hallstatt and Salzburg	f	2017-01-01	{Documentary}
1329	tt9881922	movie	18 Years Old: Deep Bliss	f	1981-01-01	{}
1330	tt9881924	movie	El cuidado de los otros	f	2019-01-01	{Drama}
1331	tt9881942	movie	Bilbao	f	\N	{Documentary}
1332	tt9881956	movie	Bôkô shinjuku nijûgo-ji	f	1981-01-01	{}
1333	tt9881972	movie	Documentary Porn: Cry for the Tongue	f	1981-01-01	{}
1334	tt9881974	movie	Jûrokumon karasudô: Sennin higan	f	1951-01-01	{}
1335	tt9881980	movie	Liliana Bodoc, la Madre de Los Confines	f	2012-01-01	{Documentary}
1336	tt9881986	movie	Hentai danchizuma	f	1981-01-01	{}
1337	tt9882008	movie	Sex Crime: Blackmail and Rape	f	1981-01-01	{}
1338	tt9882020	movie	Seijo! Kamu!	f	1981-01-01	{}
1339	tt9882054	movie	Schwarzer Garten	f	2018-01-01	{Horror,Mystery}
1340	tt9882070	movie	USA animal: Karei na seitaiken	f	1981-01-01	{}
1341	tt9882084	movie	Chasing Happiness	f	2019-01-01	{Biography,Documentary,Music}
1342	tt9882132	movie	Ana uranai	f	1981-01-01	{}
1343	tt9882176	movie	Jokyôshi: Yoru no kôfun	f	1981-01-01	{}
1344	tt9882200	movie	Orgy Roommates: Rape in Turn	f	1981-01-01	{}
1345	tt9882228	movie	La niña de la Ribera	f	2013-01-01	{History}
1346	tt9882230	movie	Bôkan mezame	f	1981-01-01	{}
1348	tt9882278	movie	Nure-nure joshi daisei: Ure-doki	f	1981-01-01	{}
1349	tt9882284	movie	In Praise of Freedom	f	2019-01-01	{Documentary}
1350	tt9882290	movie	The Facing Project	f	2019-01-01	{Biography,Documentary,Drama}
1351	tt9882308	movie	Joi no kokuhaku: Ijô hentai byôtô	f	1981-01-01	{}
1352	tt9882316	movie	Where's My Birthright?	f	\N	{Documentary}
1353	tt9882328	movie	Chikan biraki	f	1981-01-01	{}
1354	tt9882358	movie	Zecchô porno: Modaete naku	f	1981-01-01	{}
1355	tt9882378	movie	Chikan saimin-jutsu	f	1981-01-01	{}
1356	tt9882416	movie	The Fire	f	\N	{Documentary}
1357	tt9882452	movie	The Five	f	\N	{}
1358	tt9882478	movie	The Donnellys	f	\N	{Thriller}
1360	tt9882504	movie	Shikijô mesugari	f	1981-01-01	{}
1361	tt9882520	movie	College girl: Bôkô shisshin	f	1981-01-01	{}
1362	tt9882532	movie	Get Paid, Get Laid & Get Lucky	f	2019-01-01	{Crime,Drama,Romance}
1363	tt9882536	movie	Hitozuma bôkô kinbaku	f	1981-01-01	{}
1364	tt9882540	movie	Jitsuroku sanfujinka: Hentai shujutsu	f	1981-01-01	{}
1365	tt9882548	movie	Who's There?	f	2012-01-01	{Horror}
1366	tt9882552	movie	Hentai fukushû	f	1981-01-01	{}
1367	tt9882556	movie	Breaking The Cycle	f	\N	{Documentary}
1368	tt9882558	movie	Kangofu hageshii yûwaku	f	1981-01-01	{}
1370	tt9882642	movie	Betrayal: When the Government Took Over the Teamsters Union	f	2019-01-01	{Documentary}
1371	tt9882750	movie	King of Prism: Shiny Seven Stars	f	2019-01-01	{Animation,Musical,Sport}
1372	tt9882978	movie	Don't Cry, Mr. Ogre	f	2019-01-01	{Drama}
1373	tt9883000	movie	The Story of Robert Smalls	f	\N	{}
1374	tt9883020	movie	P over D	f	2019-01-01	{Comedy,Drama,Romance}
1375	tt9883042	movie	Aakashaganga II	f	2019-01-01	{Horror}
1376	tt9883074	movie	Uma	f	\N	{Drama}
1377	tt9883078	movie	Blood at the Root	f	\N	{Thriller}
1380	tt9883168	movie	Postmarked	f	\N	{Action}
1381	tt9883192	movie	Advice from my 14 year old self	f	\N	{Comedy}
1382	tt9883284	movie	Untitled project	f	\N	{Comedy,Horror}
1384	tt9883330	movie	Celine Before Celine	f	\N	{Biography,Drama}
1385	tt9883336	movie	Perfect Black	f	2019-01-01	{Documentary}
1386	tt9883370	movie	Friday Black	f	\N	{}
1387	tt9883398	movie	Distant	f	2022-01-01	{Drama,Sci-Fi}
1388	tt9883520	movie	Here Lies Daniel Tate	f	\N	{}
1389	tt9883582	movie	Beneath the Painted Surface	f	2020-01-01	{Documentary}
1391	tt9883702	movie	Jade Palace	f	\N	{}
1392	tt9883720	movie	Bull	f	\N	{}
1393	tt9883728	movie	Congo, My Precious	f	2017-01-01	{Documentary}
1394	tt9883744	movie	Major	f	\N	{}
1395	tt9883762	movie	The Boys' Club	f	\N	{Drama}
1396	tt9883798	movie	Sleeping with the Enemy	f	\N	{}
1397	tt9883810	movie	Untitled Chris Borelli/Simon Crane Project	f	\N	{}
1398	tt9883832	movie	Untitled David Bowie/IMAX Project	f	\N	{}
1399	tt9883860	movie	Nezumi kozô iro zange: Tsuki yo zakura	f	1954-01-01	{}
1400	tt9883948	movie	Geometria del Esplendor	f	2016-01-01	{Documentary}
1401	tt9883996	movie	Dream Horse	f	2020-01-01	{Biography,Comedy,Drama}
1402	tt9884024	movie	Chubby Café	f	2019-01-01	{Comedy,Crime,Drama}
1404	tt9884054	movie	Hexed	f	\N	{Horror}
1405	tt9884086	movie	Flashback	f	2009-01-01	{Thriller}
1406	tt9884202	movie	Zindagi Zindabaad	f	\N	{Action,Biography,Drama}
1407	tt9884388	movie	The Mux	f	\N	{Drama}
1408	tt9884510	movie	Witch West	f	\N	{Drama}
1409	tt9884562	movie	Ayyo Rama	f	2018-01-01	{Comedy}
1411	tt9885000	movie	Wakhri (One of a Kind)	f	\N	{Drama}
1412	tt9885092	movie	Charmingly Psycho	f	\N	{Comedy,Drama}
1413	tt9885098	movie	The Millers & The Saints	f	\N	{Documentary}
1414	tt9885292	movie	Mi querida España	f	2015-01-01	{}
1415	tt9885666	movie	Ramchandra Purushottam Joshi	f	2013-01-01	{Drama}
1416	tt9885858	movie	Rabbi	f	2017-01-01	{Musical}
1417	tt9885892	movie	Jani Najani	f	2019-01-01	{Drama}
1418	tt9886012	movie	Gurucool: Shifting Mindsets	f	\N	{Documentary}
1419	tt9886068	movie	It Takes Time	f	2018-01-01	{Comedy}
1420	tt9886428	movie	Steal Away	f	\N	{Drama}
1421	tt9886430	movie	Crossing the Yellow Blocks	f	\N	{Documentary}
1422	tt9886444	movie	Nuestra última fiesta	f	2019-01-01	{}
1423	tt9886488	movie	Making Waves: Battle for the Great Lakes	f	2016-01-01	{Documentary}
1424	tt9886806	movie	Conversazione su Tiresia	f	2018-01-01	{Documentary}
1425	tt9886810	movie	People Like That 1970-1985	f	2018-01-01	{Documentary}
1426	tt9886812	movie	The Battleground	f	2017-01-01	{Documentary}
1427	tt9886818	movie	A Portrait of a Human	f	\N	{Documentary}
1428	tt9886846	movie	Molly	f	2019-01-01	{Drama}
1430	tt9886872	movie	Munthiri Monchan	f	2019-01-01	{Comedy,Romance}
1431	tt9886898	movie	Heirs	f	\N	{Documentary}
1432	tt9886934	movie	The Projectionist	f	2019-01-01	{Documentary}
1433	tt9886964	movie	Yen Guru Wai - Calling Upon the Guru	f	\N	{Documentary}
1434	tt9886970	movie	Laal Maati - Red Earth	f	\N	{Drama}
1435	tt9887038	movie	Race for Justice	f	2016-01-01	{Documentary}
1436	tt9887090	movie	Phantasmagoria	f	\N	{Horror}
1438	tt9887130	movie	The Human Comedy	f	2019-01-01	{Comedy}
1439	tt9887134	movie	La cuenca de los ríos de piedra	f	2019-01-01	{Documentary}
1440	tt9887154	movie	Jessie: The Golden Heart	f	2019-01-01	{Drama,History,Romance}
1441	tt9887160	movie	The Film	f	2012-01-01	{Drama}
1442	tt9887164	movie	Unforgivable Sin	f	2019-01-01	{Mystery,Thriller}
1443	tt9887180	movie	No Love No Pain	f	2021-01-01	{Drama}
1444	tt9887230	movie	Grown Ass Man	f	\N	{Drama}
1446	tt9887290	movie	The Vested Astrologer	f	2019-01-01	{Drama,Musical}
1447	tt9887300	movie	Occupied	f	2013-01-01	{Documentary}
1448	tt9887318	movie	Nge Tsawai Lama	f	2017-01-01	{Drama}
1449	tt9887388	movie	What Will Become of Us	f	2019-01-01	{Documentary}
1450	tt9887458	movie	Untitled Hawaii Project	f	\N	{Fantasy}
1451	tt9887520	movie	Season of Love	f	2019-01-01	{Comedy,Romance}
1452	tt9887544	movie	Blood Walkers	f	\N	{Horror}
1453	tt9887568	movie	Turned Out	f	2019-01-01	{Drama}
1455	tt9887604	movie	Smitten	f	\N	{Comedy}
1457	tt9887790	movie	Oz	f	\N	{Horror,Mystery,Thriller}
1459	tt9888844	movie	Vosotros sois mi película	f	2019-01-01	{Comedy,Documentary}
1460	tt9888954	movie	Reanimation Team	f	2022-01-01	{Action,Adventure,Sci-Fi}
1461	tt9889010	movie	Treading Water	f	\N	{Drama}
1462	tt9889020	movie	Untitled Catherine S. Project	f	\N	{Documentary}
1463	tt9889072	movie	The Promise	f	2017-01-01	{Drama}
1465	tt9889318	movie	Press Club	f	\N	{Comedy}
1466	tt9889338	movie	Untitled *NSYNC Road Trip Project	f	\N	{Comedy}
1467	tt9889384	movie	Metcalf South Memories	f	2015-01-01	{Comedy}
1468	tt9889412	movie	My Father the Spy	f	2019-01-01	{Documentary}
1469	tt9889446	movie	Come Closer	f	\N	{}
1470	tt9889544	movie	Mrs. Claus	f	\N	{Comedy}
1471	tt9889616	movie	Untitled Teddy Pendergrass Biopic	f	\N	{}
1472	tt9889716	movie	Lost in Paradise: Luchsinger and the Gods	f	\N	{Comedy}
1473	tt9889752	movie	Whiz-Bang!	f	\N	{Drama}
1474	tt9889814	movie	Kiss Kiss Bang Bang	f	2017-01-01	{Crime,Romance,Thriller}
1475	tt9889916	movie	Head Constable Venkataramaiah	f	2017-01-01	{Action,Comedy}
1477	tt9889926	movie	Ratham	f	2018-01-01	{Comedy,Drama,Romance}
1478	tt9889934	movie	Guardian of the Light	f	2018-01-01	{Drama}
1479	tt9889948	movie	Nenu Nene Ramune	f	2018-01-01	{Drama}
1480	tt9889952	movie	Ishtangaa	f	2018-01-01	{Comedy,Drama,Romance}
1481	tt9890024	movie	Ensemble	f	2018-01-01	{Documentary,Music}
1482	tt9890028	movie	Chocobar	f	2016-01-01	{Romance}
1484	tt9890036	movie	Green Card	f	2017-01-01	{Comedy,Drama,Romance}
1485	tt9890040	movie	Key of Life	f	\N	{}
1486	tt9890042	movie	Railway Station	f	2012-01-01	{Drama}
1487	tt9890052	movie	Thai Curry	f	2019-01-01	{Comedy}
1488	tt9890060	movie	Maguy Marin: L'urgence d'agir	f	2019-01-01	{Documentary}
1489	tt9890070	movie	Maaya	f	2014-01-01	{Thriller}
1490	tt9890100	movie	Ritratti di famiglia	f	2018-01-01	{Documentary}
1492	tt9890110	movie	Darre	f	2017-01-01	{Action,Romance}
1493	tt9890114	movie	The Pantheon	f	\N	{}
1494	tt9890120	movie	Resurrection Corporation	f	2021-01-01	{Animation,Comedy,Horror}
1495	tt9890124	movie	Zindagi	f	2016-01-01	{Drama}
1496	tt9890130	movie	Jandhyala Rasina Premakatha	f	2017-01-01	{Drama,Romance}
1497	tt9890138	movie	Rajtilak	f	2019-01-01	{Action}
1498	tt9890308	movie	Nasir	f	2020-01-01	{Drama}
1499	tt9890312	movie	Changa	f	2018-01-01	{Comedy}
1500	tt9890322	movie	Nirvana Inn	f	2019-01-01	{Mystery}
1501	tt9890326	movie	The Line	f	2020-01-01	{Crime,Thriller}
1502	tt9890352	movie	Mafia X	f	\N	{}
1504	tt9890678	movie	Kay Kay: The Girl from Guangzhou	f	2012-01-01	{Documentary}
1505	tt9890758	movie	Ultraman R/B: Select! The Crystal of Bond	f	2019-01-01	{Action,Sci-Fi}
1506	tt9890850	movie	Leyli va Macnun	f	1961-01-01	{Drama,History,Romance}
1507	tt9890870	movie	Antonio María Valencia: Música en Cámara	f	1987-01-01	{Documentary}
1508	tt9891100	movie	Liberty Loves Reason	f	2018-01-01	{Documentary}
1509	tt9891516	movie	A Married Couple	f	2019-01-01	{Documentary}
1511	tt9891764	movie	Empire of Mirrors	f	2018-01-01	{Documentary}
1512	tt9891830	movie	The Strait Guys	f	2022-01-01	{Documentary}
1513	tt9891874	movie	Scarecrow County	f	2019-01-01	{Horror,Mystery,Thriller}
1514	tt9891882	movie	Elements Quest	f	2017-01-01	{Comedy,Fantasy}
1515	tt9891934	movie	My Name is Khadija	f	2015-01-01	{Documentary}
1517	tt9892094	movie	Mogul Mowgli	f	2020-01-01	{Drama}
1518	tt9892180	movie	Karigar	f	2012-01-01	{Drama}
1519	tt9892220	movie	Cops	f	2019-01-01	{Drama}
1520	tt9892234	movie	Purano Bullet	f	2019-01-01	{Drama}
1521	tt9892252	movie	Khaag	f	2019-01-01	{Drama}
1522	tt9892262	movie	Boyfriend	f	2019-01-01	{Drama}
1523	tt9892272	movie	Fingerprint	f	2019-01-01	{Drama}
1524	tt9892292	movie	Red Carnations	f	\N	{Romance}
1525	tt9892338	movie	Dare to Surf	f	2019-01-01	{Drama}
1526	tt9892344	movie	Disorientated	f	\N	{Thriller}
1527	tt9892428	movie	I Was a Rat!	f	\N	{Animation}
1528	tt9892472	movie	The Invisible Boy	f	\N	{Fantasy}
1529	tt9892534	movie	Plucked	f	2019-01-01	{Documentary,Music,Mystery}
1530	tt9892540	movie	Padua	f	\N	{Drama}
1531	tt9892544	movie	Project CD	f	\N	{Biography,Drama}
1533	tt9892588	movie	The Voyagers	f	\N	{Drama}
1534	tt9892590	movie	The Pension of Crabs	f	2009-01-01	{Comedy,Drama}
1535	tt9892604	movie	Divine Decision: Double Down	f	2021-01-01	{Drama,Romance}
1537	tt9892684	movie	Project CD	f	\N	{Biography,Drama}
1538	tt9892692	movie	Freeheld	f	\N	{Drama}
1539	tt9892716	movie	The King of Paparazzi - La vera storia	f	2018-01-01	{Documentary,History}
1540	tt9892770	movie	Il mare della nostra storia	f	2018-01-01	{Documentary,History}
1541	tt9892808	movie	Death Likes A Smile	f	\N	{Crime,Thriller}
1542	tt9892836	movie	A Solid 7	f	2019-01-01	{Comedy}
1544	tt9892842	movie	Tutto davanti a questi occhi	f	2018-01-01	{Documentary}
1545	tt9892852	movie	Project JH	f	\N	{Horror}
1546	tt9892854	movie	#Xmas	f	\N	{Comedy}
1547	tt9892882	movie	Shrinking Violet	f	\N	{Thriller}
1548	tt9892896	movie	Meridian Factor	f	\N	{Action,Adventure,Fantasy}
1549	tt9892902	movie	#xmas	f	\N	{}
1551	tt9892922	movie	Turn it Up	f	\N	{Comedy}
1552	tt9892934	movie	Mask of Damastes	f	\N	{Animation,Drama}
1553	tt9892970	movie	Schizophrenia: The Voices In My Head	f	2017-01-01	{Documentary}
1554	tt9892976	movie	Pirate Alley	f	\N	{Action,Adventure,Animation}
1555	tt9893012	movie	The Black Minutes	f	2021-01-01	{Crime,Thriller}
1556	tt9893018	movie	The Perfect Dad	f	\N	{Family}
1557	tt9893052	movie	The Color of Justice	f	2018-01-01	{Documentary}
1559	tt9893082	movie	Dying for You	f	\N	{Comedy}
1560	tt9893084	movie	Italian Studies	f	2021-01-01	{Drama}
1561	tt9893110	movie	The Second Thirteen	f	\N	{Action,Thriller}
1562	tt9893130	movie	2025: Make America Purge Again	f	2022-01-01	{Comedy}
1563	tt9893158	movie	Clowning	f	2022-01-01	{Crime,Romance}
1564	tt9893160	movie	Whisper	f	\N	{Crime}
1565	tt9893218	movie	The Silent Patient	f	\N	{Drama}
1566	tt9893228	movie	Getaway	f	\N	{Horror}
1568	tt9893250	movie	I Care a Lot	f	2020-01-01	{Comedy,Crime,Drama}
1569	tt9893266	movie	These Streets We Haunt	f	2021-01-01	{Drama,Fantasy}
1570	tt9893292	movie	Pashmina	f	\N	{Adventure,Animation,Comedy}
1571	tt9893384	movie	Untitled Lukas Nelson Documentary	f	\N	{Documentary}
1572	tt9893452	movie	In His Own Defense	f	\N	{Crime,Drama,Thriller}
1574	tt9893746	movie	The Human Spirit	f	2019-01-01	{Documentary}
1575	tt9893788	movie	River Of Dreams	f	\N	{Drama}
1576	tt9893812	movie	One Million Times	f	\N	{Sci-Fi}
1577	tt9893824	movie	Bright Hill Road	f	2020-01-01	{Horror}
1578	tt9893830	movie	Beauty Marks	f	\N	{Drama}
1579	tt9893878	movie	Confidencias	f	1996-01-01	{}
1580	tt9893900	movie	Soil The Movie	f	\N	{Documentary}
1582	tt9893922	movie	The Great Reunion	f	1948-01-01	{Drama}
1583	tt9893950	movie	Case Money	f	\N	{Thriller}
1584	tt9894000	movie	Twice As Strong: Made of Fire	f	2022-01-01	{Drama}
1585	tt9894038	movie	Loving Me to Death	f	\N	{Documentary}
1586	tt9894050	movie	Freakazoid	f	\N	{Action,Comedy,Drama}
1587	tt9894062	movie	Where Are You Going?	f	\N	{}
1588	tt9894078	movie	We, The Mighty Humans	f	\N	{}
1589	tt9894098	movie	Sathru	f	2019-01-01	{Action,Thriller}
1590	tt9894108	movie	vajau ka?	f	1996-01-01	{Comedy}
1591	tt9894166	movie	The Dance of Infinity	f	2015-01-01	{Documentary}
1592	tt9894202	movie	Marala Telupana Priya	f	2016-01-01	{Comedy,Romance}
1593	tt9894302	movie	Mai Gayatri Jadhav	f	2019-01-01	{Drama}
1595	tt9894418	movie	Goko Mako	f	2019-01-01	{Adventure,Comedy,Drama}
1596	tt9894426	movie	Idealists	f	\N	{Thriller}
1597	tt9894430	movie	Esther the Wonder Pig	f	\N	{}
1598	tt9894436	movie	Absolute Truth	f	2019-01-01	{Documentary}
1599	tt9894440	movie	Min pappa Marianne	f	2020-01-01	{Comedy,Drama}
1600	tt9894450	movie	Felicità	f	2020-01-01	{Comedy,Drama}
1601	tt9894470	movie	VFW	f	2019-01-01	{Action,Crime,Horror}
1603	tt9894494	movie	The Dam Keeper	f	\N	{}
1604	tt9894554	movie	White Magic	f	2003-01-01	{Documentary}
1605	tt9894618	movie	Slapstick: la comedia muda norteamericana	f	1989-01-01	{Documentary}
1606	tt9894638	movie	Leo	f	\N	{}
1607	tt9894658	movie	Hood: A Legend Reborn	f	\N	{Action,Adventure,Fantasy}
1608	tt9894660	movie	Baby Done	f	2020-01-01	{Comedy}
1611	tt9894802	movie	Lalsa	f	\N	{Drama}
1612	tt9894880	movie	Adiós a Cali	f	1990-01-01	{Documentary}
1613	tt9894894	movie	Caviar	f	2019-01-01	{Comedy}
1614	tt9894902	movie	Cámara ardiente	f	1991-01-01	{Documentary}
1615	tt9894912	movie	Common Chocolate	f	\N	{Drama}
1616	tt9894916	movie	JJ Colony	f	2007-01-01	{Action}
1617	tt9895012	movie	Darkness Descends	f	\N	{Crime,Thriller}
1618	tt9895022	movie	Aaham	f	2019-01-01	{Thriller}
1619	tt9895024	movie	Heiko's World	f	2021-01-01	{Comedy,Drama,Sport}
1620	tt9895030	movie	Namakemono	f	1927-01-01	{Drama}
1621	tt9895056	movie	This Child	f	\N	{Mystery}
1623	tt9895078	movie	Taiyoji defunê no minato	f	1929-01-01	{Drama}
1624	tt9895142	movie	Shaba no kaze	f	1929-01-01	{Drama}
1625	tt9895466	movie	The Centaur of Susanville	f	\N	{Action}
1626	tt9895608	movie	Un fleuve invisible	f	2019-01-01	{Documentary}
1627	tt9895988	movie	Dark Was the Night, Cold Was the Ground	f	\N	{Drama}
1628	tt9896102	movie	Take Pains, Be Perfect	f	2020-01-01	{Documentary}
1629	tt9896124	movie	Tribes	f	\N	{Adventure}
1630	tt9896224	movie	Untitled	f	\N	{Drama}
1631	tt9896252	movie	Killing Patient Zero	f	2019-01-01	{Documentary}
1632	tt9896284	movie	Who are you?	f	\N	{Drama}
1633	tt9896320	movie	Waiting Rooms	f	\N	{}
1635	tt9896768	movie	The Immortal Wars: Rebirth	f	2020-01-01	{Sci-Fi}
1636	tt9896840	movie	Teatroteka: Beauty	f	2019-01-01	{Comedy,Drama,Thriller}
1637	tt9896876	movie	India Sweets and Spices	f	2021-01-01	{Comedy}
1638	tt9896916	movie	Pilgrim's Progress	f	2019-01-01	{Adventure,Animation,Family}
1640	tt9897230	movie	Smiling Georgia	f	\N	{Documentary}
1641	tt9897258	movie	Rosa pietra stella	f	2020-01-01	{Drama}
1642	tt9897520	movie	12 Days to Destiny	f	2019-01-01	{Romance}
1643	tt9897528	movie	Be Kind	f	2018-01-01	{Documentary}
1644	tt9897660	movie	Questo è mio fratello	f	2018-01-01	{Documentary}
1646	tt9897722	movie	Malintzin: The Story of an Enigma	f	2019-01-01	{Documentary}
1647	tt9897744	movie	Duga, les charognards	f	2019-01-01	{Comedy,Drama}
1648	tt9897764	movie	River Pirates	f	2018-01-01	{Action,Adventure}
1649	tt9897832	movie	Dialogue with Che	f	1968-01-01	{History}
1650	tt9897890	movie	Footloose in Bavaria: Regensburg, Oberpfalz, Neuschwanstein	f	2017-01-01	{Documentary}
1651	tt9897894	movie	Footloose in Ireland: Dingle Way & Dublin	f	2018-01-01	{Documentary}
1652	tt9897896	movie	Footloose in Spain: Alpujarras & Barcelona	f	2017-01-01	{Documentary}
1653	tt9897900	movie	Footloose in Switzerland	f	2017-01-01	{Documentary}
1654	tt9898086	movie	Carol of the Bells	f	2019-01-01	{Drama}
1655	tt9898140	movie	The Remarkable Alfie Hinds	f	\N	{Drama}
1656	tt9898210	movie	Cowboy	f	\N	{Western}
1657	tt9898312	movie	Front Desk	f	\N	{Family}
1658	tt9898328	movie	Cash Collectors	f	\N	{Comedy}
1659	tt9898368	movie	Langit Tidak Selalu Cerah	f	1981-01-01	{Drama}
1660	tt9898382	movie	Strega Nona	f	\N	{Family}
1661	tt9898426	movie	Ikan Emas	f	1965-01-01	{Drama,Fantasy}
1662	tt9898468	movie	Pistolero Maldad Y Malicia	f	\N	{Action}
1663	tt9898470	movie	Fabrication	f	\N	{Thriller}
1664	tt9898504	movie	Puteri Gunong Ledang	f	1961-01-01	{Fantasy}
1665	tt9898534	movie	Sri Andalas	f	1966-01-01	{Fantasy}
1666	tt9898548	movie	A Girl & the City	f	2015-01-01	{Documentary}
1668	tt9898602	movie	Hantu Jerangkung	f	1957-01-01	{Horror}
1669	tt9898616	movie	Pancha Indera Harimau Berantai	f	1970-01-01	{Fantasy}
1670	tt9898636	movie	Pertarongan	f	1960-01-01	{Action}
1671	tt9898682	movie	Vengeance Douloureuse 1: la colère est née	f	2011-01-01	{Horror}
1672	tt9898844	movie	The Hunting	f	2021-01-01	{Horror}
1673	tt9898858	movie	Coffee & Kareem	f	2020-01-01	{Action,Comedy,Crime}
1674	tt9898980	movie	EON	f	\N	{Family,Sci-Fi}
1675	tt9899046	movie	Yage	f	\N	{Fantasy}
1677	tt9899064	movie	Gaslighter	f	\N	{Thriller}
1678	tt9899092	movie	Radical	f	\N	{Romance}
1679	tt9899284	movie	Return of the Binman	f	2019-01-01	{Horror,Romance,Thriller}
1680	tt9899302	movie	The Life Story of Suge Knight	f	\N	{Drama}
1681	tt9899306	movie	Historia de una foto	f	2007-01-01	{Documentary}
1682	tt9899344	movie	GodHead: In a fiction, in a dream of passion	f	2022-01-01	{Drama}
1684	tt9899402	movie	Antoons Hero	f	\N	{Animation}
1685	tt9899532	movie	Angel: The Movie	f	\N	{Drama}
1687	tt9899726	movie	Few Hours in Athens	f	2019-01-01	{Romance}
1688	tt9899822	movie	Emma and Angel	f	\N	{Drama}
1689	tt9899824	movie	To Offer Compassion	f	\N	{}
1690	tt9899828	movie	Frankie's Redemption	f	2021-01-01	{Action,Drama}
1691	tt9899840	movie	Auntie Frog	f	2018-01-01	{Adventure,Comedy,Family}
1692	tt9899850	movie	The Agitation	f	2019-01-01	{Crime,Mystery,Thriller}
1693	tt9899856	movie	Eka Veli Ek Diwas	f	2019-01-01	{Drama}
1694	tt9899860	movie	Watching This Movie Is a Crime	f	2019-01-01	{Drama,Thriller}
1695	tt9899870	movie	Dehors	f	2008-01-01	{Comedy}
1696	tt9899880	movie	Columbus	f	2018-01-01	{Comedy,Drama}
1697	tt9899906	movie	EBI: The Documentary	f	\N	{Documentary}
1699	tt9899958	movie	Joaquin Murrieta: The Beginning of Zorro	f	\N	{Biography}
1700	tt9899970	movie	Untitled Rip Van Winkle Project	f	\N	{}
1701	tt9899972	movie	Spring Comes Late	f	1980-01-01	{Drama}
1702	tt9900018	movie	His Last Stand	f	\N	{Crime}
1703	tt9900050	movie	Duniya Khatam Ho Rahi Hai	f	2017-01-01	{Comedy}
1704	tt9900060	movie	Lupin the Third: Fujiko Mine's Lie	f	2019-01-01	{Adventure,Animation,Crime}
1705	tt9900180	movie	Aavahayami	f	2017-01-01	{Mystery}
1706	tt9900280	movie	Raden Mas	f	1959-01-01	{Drama}
1708	tt9900388	movie	Hansa: Ek Sanyog	f	2019-01-01	{Drama}
1709	tt9900390	movie	Jahanam	f	1971-01-01	{Drama}
1710	tt9900396	movie	Alpha Male	f	2019-01-01	{Comedy}
1711	tt9900398	movie	Love Lives Here	f	2019-01-01	{Drama}
1712	tt9900464	movie	Haha	f	1930-01-01	{Drama}
1713	tt9900516	movie	Return to Heaven	f	1930-01-01	{Drama}
1714	tt9900526	movie	Sagyôfuku	f	1931-01-01	{Drama}
1715	tt9900552	movie	The Sacred Riana: Beginning	f	2019-01-01	{Horror}
1716	tt9900562	movie	Nyobô seifuku	f	1933-01-01	{Drama}
1717	tt9900570	movie	Spicy Teacher	f	2018-01-01	{Comedy}
1718	tt9900602	movie	Untitled Shakespeare Project	f	\N	{Mystery}
1719	tt9900614	movie	Lady Boss	f	2005-01-01	{Comedy}
1720	tt9900670	movie	Waiting(Words Apart)	f	2019-01-01	{Drama}
1721	tt9900680	movie	Youtuber Horror Movie	f	2015-01-01	{}
1723	tt9900748	movie	The Robinsons	f	2019-01-01	{Action,Adventure}
1724	tt9900772	movie	Yume ni miru hana	f	1934-01-01	{Drama}
1725	tt9900782	movie	Kaithi	f	2019-01-01	{Action,Crime,Thriller}
1726	tt9900804	movie	The Music Box	f	\N	{Thriller}
1727	tt9900810	movie	Enfants des Pierres	f	2013-01-01	{Documentary}
1728	tt9900908	movie	Useless Handcuffs	f	1969-01-01	{Action,Comedy,Crime}
1730	tt9901020	movie	Pygmées de la route	f	2012-01-01	{Documentary}
1731	tt9901146	movie	Chubby Cafe	f	\N	{Comedy,Crime,Mystery}
1732	tt9901148	movie	Party Plan	f	\N	{Drama}
1733	tt9901152	movie	The Music Box	f	\N	{Thriller}
1734	tt9901162	movie	The Robinsons	f	2020-01-01	{Action,Adventure}
1735	tt9901238	movie	Le petit caillou	f	2016-01-01	{Documentary}
1736	tt9901352	movie	Hamlet Poem Unlimited	f	2018-01-01	{Drama}
1738	tt9901656	movie	Entire Life and One Day	f	2014-01-01	{Documentary}
1739	tt9901944	movie	Madonna Mia	f	\N	{Biography}
1740	tt9902160	movie	Herself	f	2020-01-01	{Drama}
1741	tt9902248	movie	The Haven Place	f	\N	{Adventure,Fantasy}
1742	tt9902338	movie	Fuitina - Fuga d'amore	f	2015-01-01	{Documentary}
1743	tt9902414	movie	The River at Night	f	\N	{Drama}
1744	tt9902734	movie	Josh Groban Bridges Live from Madison Square Garden	f	2019-01-01	{}
1745	tt9902832	movie	Lila Kourkoulakou	f	2017-01-01	{Biography,Documentary}
1746	tt9902902	movie	Is de Foras	f	\N	{Romance}
1748	tt9902988	movie	Listen to your Fathers	f	\N	{Comedy,Drama}
1749	tt9903002	movie	The Monster in the Cell	f	\N	{Horror,Thriller}
1750	tt9903124	movie	Jake's Wing	f	\N	{Drama}
1751	tt9903348	movie	My Girlfriend the Serial Killer	f	\N	{Horror}
1752	tt9903384	movie	Taking Aim at the President	f	\N	{Drama}
1753	tt9903408	movie	Lanny	f	\N	{Drama}
1754	tt9903418	movie	The Fall of Innocence	f	\N	{Drama}
1755	tt9903496	movie	Nouveau Monde	f	2012-01-01	{Documentary}
1756	tt9903562	movie	Dames de couleurs	f	2012-01-01	{Documentary}
1757	tt9903716	movie	Jessie	f	2019-01-01	{Horror,Thriller}
1760	tt9903832	movie	Pantheons of the Tribe	f	\N	{Drama}
1761	tt9903890	movie	The Curse of EVE	f	2019-01-01	{Horror}
1762	tt9903920	movie	Dosage Volume II	f	2003-01-01	{Action,Documentary,Sport}
1763	tt9903952	movie	BADMEN (with a good behavior)	f	2018-01-01	{Comedy,Horror}
1764	tt9903968	movie	Dosage Volume III	f	2005-01-01	{Action,Documentary,Sport}
1765	tt9903996	movie	Hometown	f	\N	{Comedy}
1767	tt9904010	movie	Dosage Volume IV	f	2006-01-01	{Action,Documentary,Sport}
1768	tt9904014	movie	Lost in Klessin	f	2018-01-01	{War}
1769	tt9904066	movie	Fox Hunting	f	2019-01-01	{Action,Crime,Drama}
1770	tt9904096	movie	Pour ne plus mourir	f	2018-01-01	{Documentary}
1772	tt9904134	movie	A Father	f	\N	{Drama}
1773	tt9904160	movie	The Cure	f	\N	{Action}
1774	tt9904250	movie	The Queen of the Lizards	f	2019-01-01	{Fantasy}
1775	tt9904252	movie	Nice & Naughty, A Christmas Story	f	2022-01-01	{Comedy,Drama,Fantasy}
1776	tt9904268	movie	The End of My World	f	\N	{Comedy}
1777	tt9904270	movie	Get Rid of It	f	\N	{Action,Comedy,Horror}
1778	tt9904318	movie	Traiskirchen	f	\N	{Drama}
1780	tt9904508	movie	ISS: John Carter vs The Administrator	f	2017-01-01	{Comedy,Drama}
1781	tt9904530	movie	Scream Returns	f	2018-01-01	{Horror,Thriller}
1782	tt9904552	movie	All for the Money	f	2019-01-01	{Comedy}
1783	tt9904562	movie	M/S Norröna: The Queen of the North Atlantic	f	2019-01-01	{Documentary}
1784	tt9904648	movie	The Contrast	f	2022-01-01	{Comedy}
1785	tt9904670	movie	Mountain Quest	f	2018-01-01	{Documentary}
1786	tt9904682	movie	SIUAT	f	\N	{Action}
1787	tt9904686	movie	SIUAT 2	f	\N	{Drama}
1788	tt9904698	movie	SIUAT 3	f	\N	{Documentary}
1789	tt9904706	movie	SIUAT 4	f	\N	{Romance}
1791	tt9904820	movie	American Terror Story	f	2019-01-01	{Horror}
1792	tt9904844	movie	Ott Tänak: The Movie	f	2019-01-01	{Documentary,Sport}
1793	tt9905072	movie	Yolanda	f	2018-01-01	{}
1794	tt9905116	movie	Lebanon, USA	f	\N	{Drama}
1795	tt9905152	movie	Cinema Monterrey	f	2019-01-01	{Documentary}
1796	tt9905224	movie	The Shooter	f	1975-01-01	{Adventure,Drama}
1797	tt9905252	movie	The Secret of the Red Spring	f	1992-01-01	{Fantasy}
1798	tt9905412	movie	Ottam	f	2019-01-01	{Drama}
1799	tt9905432	movie	Fast Car (II)	f	\N	{Drama}
1800	tt9905434	movie	Chikan shindai tokkyû densha	f	1981-01-01	{}
1801	tt9905448	movie	Shibari biraki	f	1981-01-01	{}
1802	tt9905462	movie	Pengalila	f	2019-01-01	{Drama}
1804	tt9905492	movie	Midnight Reckoning	f	\N	{Action}
1805	tt9905536	movie	Female Teacher: Chain and Bondage	f	1981-01-01	{}
1806	tt9905648	movie	Robin Trower at Winterland 1975	f	1975-01-01	{Music}
1807	tt9905708	movie	Résilience	f	\N	{Action,Adventure,Drama}
1809	tt9905796	movie	July Kaatril	f	2019-01-01	{Drama,Romance}
1810	tt9905932	movie	Footloose in London: All the Best Sights of our Capital	f	2016-01-01	{Documentary}
1811	tt9906000	movie	Footloose in Holland: Coast Path & Amsterdam	f	2017-01-01	{Documentary}
1812	tt9906088	movie	Keukenhof Gardens and the Dutch Flower Parade	f	2017-01-01	{Documentary}
1813	tt9906090	movie	Mind The Russians	f	\N	{Comedy,Romance}
1814	tt9906128	movie	Leak (Penangkeb)	f	2019-01-01	{Horror}
1815	tt9906138	movie	Footloose on Madeira	f	2017-01-01	{Documentary}
1816	tt9906150	movie	Sophie's War	f	\N	{Drama}
1817	tt9906218	movie	Unstoppable	f	2019-01-01	{Documentary}
1818	tt9906246	movie	Footloose in the Italian Lakes: Garda Como Lugano Maggiore	f	2016-01-01	{Documentary}
1819	tt9906256	movie	Footloose in the Austrian Tyrol	f	2017-01-01	{Documentary}
1820	tt9906262	movie	The Changin' Times of Ike White	f	2019-01-01	{Documentary,Music}
1822	tt9906278	movie	A Classic Tour of Scotland: Footloose Special	f	2016-01-01	{Documentary}
1823	tt9906346	movie	I'm The Daddy	f	2006-01-01	{Documentary}
1824	tt9906596	movie	¡Score!	f	\N	{Documentary}
1825	tt9906644	movie	Manoharam	f	2019-01-01	{Comedy,Drama}
1826	tt9906696	movie	Footloose in Italy IV: Rimini Tuscany Rome	f	2016-01-01	{Documentary}
1827	tt9906844	movie	Footloose in England's Lake District	f	2017-01-01	{Documentary}
1828	tt9906966	movie	Split Second	f	\N	{}
1829	tt9907032	movie	Footloose in London II: Undiscovered and Unusual	f	2018-01-01	{Documentary}
1830	tt9907362	movie	Baby Come Back	f	\N	{Romance}
1832	tt9907608	movie	Footloose in the Cotswolds: Part 2	f	2016-01-01	{Documentary}
1833	tt9907670	movie	Wanderer in a Business Suit	f	1961-01-01	{Action,Crime}
1834	tt9907782	movie	The Cursed	f	2021-01-01	{Fantasy,Horror,Mystery}
1836	tt9908390	movie	Le lion	f	2020-01-01	{Comedy}
1837	tt9908394	movie	Sex document: Kuikomu	f	1981-01-01	{}
1838	tt9908448	movie	The Bells of Hell	f	2018-01-01	{Drama,Fantasy}
1839	tt9908530	movie	Joshi daisei: Yakan jugyô	f	1981-01-01	{}
1840	tt9908592	movie	Filmmakers Unite (FU)	f	2017-01-01	{Documentary}
1841	tt9908636	movie	Das Spiel der Hoffnung	f	2017-01-01	{Fantasy}
1842	tt9908694	movie	Chikan densha: Oku made tsumete	f	1981-01-01	{}
1843	tt9908764	movie	Ue kara shita kara	f	1981-01-01	{}
1844	tt9908798	movie	Jokôsei tsuppari banchô	f	1981-01-01	{}
1845	tt9908944	movie	Joshi gakusei wananaku	f	1981-01-01	{}
1846	tt9908954	movie	Shibararetai	f	1981-01-01	{}
1847	tt9908960	movie	Pliusas	f	2018-01-01	{Comedy}
1848	tt9909086	movie	Pheriaa Come Back	f	2018-01-01	{Drama}
1849	tt9909228	movie	Ximei	f	2019-01-01	{Documentary}
1850	tt9909276	movie	Documentary Porn: Compulsive Rapist	f	1981-01-01	{}
1851	tt9909294	movie	Furusato porno: Sukebe onna sensei	f	1981-01-01	{}
1853	tt9909320	movie	Tonari no hentai	f	1981-01-01	{}
1854	tt9909330	movie	Kinbaku shûdan bôkô	f	1981-01-01	{}
1855	tt9909334	movie	Wakazuma uwaki kôkan	f	1981-01-01	{}
1856	tt9909400	movie	Hitozuma ijô seiyoku: Hikisaku	f	1981-01-01	{}
1857	tt9909418	movie	White Dresses	f	1996-01-01	{Drama}
1858	tt9909432	movie	Nurenure kankin	f	1981-01-01	{}
1859	tt9909462	movie	An Unprecedented Campaign	f	1931-01-01	{Documentary}
1860	tt9909490	movie	Joshi gakusei: Chôhatsu	f	1981-01-01	{}
1861	tt9909516	movie	Dark Arrows	f	\N	{Drama}
1862	tt9909522	movie	Pacha	f	\N	{Drama}
1863	tt9909524	movie	Office Lady Experience: Pregnancy	f	1981-01-01	{}
1864	tt9909542	movie	Catch girl: Zetsugi monzetsu	f	1981-01-01	{}
1865	tt9909544	movie	The Reenactor	f	\N	{Drama,Mystery,Western}
1866	tt9909554	movie	Finis Terrae	f	2019-01-01	{Documentary}
1867	tt9909558	movie	Breaking Silence	f	1985-01-01	{Documentary}
1868	tt9909560	movie	Aru onna kyôshi: Hentai seiseikatsu	f	1981-01-01	{}
1869	tt9909576	movie	Hikô kangofu	f	1981-01-01	{}
1870	tt9909608	movie	Tying the Newlywed Wife	f	1981-01-01	{}
1871	tt9909612	movie	Shita kara miru	f	1981-01-01	{}
1872	tt9909644	movie	The Sleeping Prophet	f	\N	{Drama}
1873	tt9909648	movie	Lipstick & Bullets	f	\N	{Action}
1874	tt9909650	movie	Hellbiro	f	2018-01-01	{Comedy}
1875	tt9909656	movie	Hentai mibôjin	f	1981-01-01	{}
1876	tt9909666	movie	Bôkô mayaburu	f	1981-01-01	{}
1878	tt9909694	movie	Jokôsei: Yoru no shingaku juku	f	1981-01-01	{}
1879	tt9909700	movie	Seiran zeme	f	1981-01-01	{}
1880	tt9909702	movie	Youthful Tales	f	\N	{Comedy}
1881	tt9909704	movie	Bôkan hanayome o okasu	f	1981-01-01	{}
1882	tt9909708	movie	Automatism	f	\N	{Thriller}
1883	tt9909714	movie	Keijihan no kokuhaku: Hiraita zengo	f	1981-01-01	{}
1884	tt9909716	movie	Ushiro muki	f	1981-01-01	{}
1885	tt9909728	movie	Joshi gakusei o shibaru	f	1981-01-01	{}
1886	tt9909736	movie	Document porno: Hitozuma baishun no teguchi	f	1981-01-01	{}
1887	tt9909744	movie	Please Seduce Me with Dirty Words	f	1981-01-01	{}
1888	tt9909750	movie	Sylvester: Do you Wanna Funk	f	\N	{Biography}
1889	tt9909760	movie	Osowareta baishun-fu	f	1981-01-01	{}
1890	tt9909780	movie	Hentaima: Okasareta hitozuma	f	1981-01-01	{}
1891	tt9909792	movie	Jokôsei: Watashi o ageru	f	1981-01-01	{}
1892	tt9909820	movie	Craving Pleasure: Attack a Virgin	f	1981-01-01	{}
1893	tt9909856	movie	Toruko gômon: Kegasu	f	1981-01-01	{}
1894	tt9909938	movie	Xenosaga	f	2005-01-01	{Sci-Fi}
1896	tt9909960	movie	Chikan desu chikan	f	1981-01-01	{}
1897	tt9909994	movie	Monzetsu apaato: Ue demo shita demo	f	1981-01-01	{}
1898	tt9910032	movie	The Absurds	f	\N	{Drama}
1899	tt9910040	movie	Ryôwaki no umeki	f	1981-01-01	{}
1900	tt9910086	movie	Tuesday at Primo's/Big D	f	\N	{Comedy}
1901	tt9910102	movie	The Agency of International Affairs	f	2019-01-01	{Action,Drama}
1902	tt9910166	movie	Diseño de Sonido para Cine en Argentina	f	2014-01-01	{Documentary}
1904	tt9910238	movie	Be 5min. vede	f	2017-01-01	{Comedy,Romance}
1905	tt9910302	movie	King Street	f	2023-01-01	{Action}
1906	tt9910434	movie	Takila	f	\N	{}
1907	tt9910502	movie	Hayatta Olmaz	f	2019-01-01	{Comedy}
1909	tt9910622	movie	La ronde	f	\N	{}
1911	tt9910688	movie	Luz, Câmera e Barreto	f	2018-01-01	{Documentary}
1912	tt9910778	movie	DK Bose	f	2019-01-01	{Comedy}
1913	tt9910852	movie	Fujin râijin	f	1963-01-01	{Action,Crime}
1914	tt9910922	movie	Doctor Who Augmented Reality: Times Magazine	f	2013-01-01	{}
1915	tt9910930	movie	Jeg ser deg	f	2019-01-01	{Crime,Documentary}
1916	tt9910964	movie	Hellavator	f	\N	{Horror}
1917	tt9911006	movie	Ormma	f	2019-01-01	{Drama}
1918	tt9911046	movie	The Saving	f	2020-01-01	{Action,Drama}
1919	tt9911196	movie	The Marriage Escape	f	2020-01-01	{Comedy,Drama}
1921	tt9911336	movie	Hellavator	f	\N	{Horror}
1922	tt9911750	movie	Chambu Gabale	f	1989-01-01	{Comedy}
1923	tt9911774	movie	Padmavyuhathile Abhimanyu	f	2019-01-01	{Drama}
1924	tt9912812	movie	Silence	f	1991-01-01	{}
1925	tt9912924	movie	Local Sugar	f	\N	{Animation}
1926	tt9913056	movie	Swarm Season	f	2019-01-01	{Documentary}
1927	tt9913084	movie	Diabolik sono io	f	2019-01-01	{Documentary}
1928	tt9913178	movie	Onsen chikan bus	f	1981-01-01	{}
1929	tt9913248	movie	Nepal - Homebird	f	2019-01-01	{Documentary}
1930	tt9913288	movie	Letters	f	2020-01-01	{Drama}
1931	tt9913320	movie	Seitô seihanzai	f	1981-01-01	{}
1933	tt9913572	movie	Talent Documentary	f	\N	{Documentary}
1934	tt9913594	movie	Bacchanalia	f	2017-01-01	{Drama,Mystery,Thriller}
1935	tt9913642	movie	Kisilev's list	f	2008-01-01	{History,War}
1936	tt9913660	movie	No Apology	f	2019-01-01	{Drama}
1937	tt9913814	movie	Chikan densha: Muremure shanai	f	1981-01-01	{}
1938	tt9913834	movie	Hiniku: Nure nawazeme	f	1981-01-01	{}
1939	tt9913872	movie	De la piel del Diablo	f	2019-01-01	{Thriller}
1940	tt9913878	movie	Document porno: Yubi ijime	f	1981-01-01	{}
1941	tt9913936	movie	Paradise	f	2019-01-01	{Crime,Drama}
1943	tt9914164	movie	Une vie de château	f	2019-01-01	{Documentary}
1944	tt9914170	movie	Rewilding Africa	f	\N	{Thriller}
1945	tt9914192	movie	No Gogó do Paulinho	f	2020-01-01	{Comedy}
1946	tt9914254	movie	A Cherry Tale	f	2019-01-01	{Documentary}
1947	tt9914286	movie	Sokagin Çocuklari	f	2019-01-01	{Drama,Family}
1948	tt9914294	movie	Stateless	f	\N	{Documentary}
1949	tt9914368	movie	Kuttram Seiyel	f	2019-01-01	{Action,Crime}
1950	tt9914398	movie	Seaweed	f	\N	{Drama}
1951	tt9914522	movie	The Holden Family Plan	f	2019-01-01	{Drama,Family}
1952	tt9914582	movie	However Long	f	2019-01-01	{Documentary}
1953	tt9914642	movie	Albatross	f	2017-01-01	{Documentary}
1955	tt9914662	movie	Wien is 't Hof van Commerce	f	2018-01-01	{Comedy}
1956	tt9914670	movie	Demolished	f	\N	{Thriller}
1957	tt9914752	movie	The Devil's Country	f	\N	{Action}
1958	tt9914768	movie	Zero Latency	f	\N	{Action}
1959	tt9914808	movie	The New Estate	f	\N	{Adventure,Horror}
1960	tt9914826	movie	Akharin Ahang	f	\N	{Music}
1961	tt9914828	movie	The War of Godzilla	f	2015-01-01	{Action,Comedy,Family}
1962	tt9914888	movie	Sang Miracle	f	\N	{Action}
1963	tt9914928	movie	Noblesse Oblige	f	\N	{Drama}
1964	tt9914942	movie	Life Without Sara Amat	f	2019-01-01	{Drama}
1965	tt9914972	movie	Blind Ambition	f	2021-01-01	{Documentary}
1967	tt9915050	movie	Stagger Lee & Billy	f	\N	{Action}
1968	tt9915130	movie	Meet John Doe	f	\N	{}
1969	tt9915164	movie	#WorstThing	f	\N	{Horror}
1970	tt9915180	movie	The Checkers: Breaking the Ice	f	\N	{Sport}
1971	tt9915306	movie	Bhaai Ki Shaadi	f	\N	{Comedy}
1972	tt9915436	movie	Vida em Movimento	f	2019-01-01	{Documentary}
1973	tt9915456	movie	Faith's Choice	f	\N	{Drama}
1974	tt9915536	movie	Side Effect	f	\N	{Action,Sci-Fi}
1975	tt9915592	movie	A Husband to Rent	f	1974-01-01	{Comedy}
1976	tt9915736	movie	Liebestraum	f	\N	{Musical}
1977	tt9915790	movie	Bobbyr Bondhura	f	2019-01-01	{Family}
1978	tt9915808	movie	Salt Lake	f	\N	{Drama,Thriller}
1980	tt9915946	movie	Nuestra película	f	1993-01-01	{Documentary}
1981	tt9916058	movie	Cali: ayer, hoy y mañana	f	1995-01-01	{Documentary}
1982	tt9916100	movie	Inventing Robert Capa	f	\N	{Biography,Drama,War}
1983	tt9916124	movie	Mucho gusto	f	1997-01-01	{Documentary}
1	tt9806238	movie	The Pop Movie	f	2019-01-01	{Documentary}
9	tt9806304	movie	Klubare	f	2018-01-01	{Comedy,Crime,Music}
15	tt9806468	movie	It Snows in Benidorm	f	2020-01-01	{Adventure,Drama,Romance}
26	tt9807524	movie	Break a Nail	f	2019-01-01	{Documentary,Sport}
38	tt9808764	movie	Todo el año es navidad	f	2018-01-01	{Documentary}
45	tt9809078	movie	Je ne te voyais pas	f	2018-01-01	{Documentary}
53	tt9809262	movie	Zaatari Memories of the Labyrinth	f	2018-01-01	{Documentary}
65	tt9809738	movie	Stardust Redux	f	2012-01-01	{Horror}
77	tt9810090	movie	Bento Harassment	f	2019-01-01	{Comedy,Drama,Family}
81	tt9810210	movie	Monzetsu kurui goke	f	1980-01-01	{}
84	tt9810236	movie	Apophis 2029	f	2023-01-01	{Drama}
91	tt9810488	movie	The Lord of the Rings - The Appendices Part 1: From Book to Vision	f	2002-01-01	{Documentary}
102	tt9811452	movie	Chikati Gadilo Chithakotudu	t	2019-01-01	{Adult,Comedy}
110	tt9811798	movie	0009: The Sharks Make Contact	f	2019-01-01	{Animation,Comedy,Musical}
120	tt9813338	movie	An Assortment of Christmas Tales in No Particular Order	f	2019-01-01	{Drama}
130	tt9814506	movie	The Devil's Footprints: It's a Wrap	f	\N	{Fantasy,Horror,Thriller}
147	tt9815072	movie	Pontianak Menjerit	f	2005-01-01	{Comedy,Horror}
156	tt9815160	movie	Kinmontô ni kakeru hashi	f	1962-01-01	{Action,War}
160	tt9815228	movie	Het leven gaat niet altijd over tulpen	f	2021-01-01	{Documentary}
171	tt9815616	movie	Still Got Joy	f	2020-01-01	{Biography,Drama}
178	tt9815998	movie	Hooking Up	f	2020-01-01	{Comedy,Drama}
185	tt9816214	movie	The Journey of 3 Women	f	2019-01-01	{Drama}
193	tt9816364	movie	Vanishing Kings	f	2018-01-01	{Crime,Documentary,Drama}
207	tt9816868	movie	What We Know	f	\N	{Drama}
212	tt9817018	movie	When the Moon Was Full	f	2019-01-01	{Adventure,Crime,Drama}
223	tt9817396	movie	To Serve, or Not to Serve	f	2018-01-01	{Comedy,Documentary,Drama}
231	tt9817760	movie	Jai Mummy Di	f	2020-01-01	{Comedy,Drama,Romance}
234	tt9817814	movie	Kono ni uruwashi	f	1962-01-01	{}
237	tt9817960	movie	Those Names Are Those Years	f	2018-01-01	{Drama}
245	tt9818146	movie	Sob Céus Estranhos	f	2002-01-01	{Documentary,History}
253	tt9819024	movie	Blue God 2: My Letter Tenderly	f	2019-01-01	{Drama,Fantasy}
263	tt9819932	movie	Kanatehon Chushingura	f	1917-01-01	{History}
268	tt9820594	movie	Misteri Dilaila	f	2019-01-01	{Horror,Thriller}
277	tt9820914	movie	Look Closer: The Rise and Fall of Robert Benfer	f	2018-01-01	{Documentary}
288	tt9821144	movie	The Boy with the Pink Triangle	f	\N	{Drama,History}
298	tt9822706	movie	Wet Season	f	2019-01-01	{Drama}
304	tt9822894	movie	Never Forgotten	f	2020-01-01	{Reality-TV}
310	tt9823546	movie	Ghungarachya Nadat	f	2014-01-01	{Thriller}
318	tt9824012	movie	Ella Fitzgerald: Just One of Those Things	f	2019-01-01	{Biography,Documentary,Music}
331	tt9826068	movie	De Gave Van De Verontwaardiging	f	2019-01-01	{Biography,Documentary}
344	tt9826766	movie	The Boy Who Made Christmas Disappear	f	\N	{Family}
354	tt9827060	movie	No Turning Back	f	2017-01-01	{Action,Crime}
364	tt9827776	movie	The Haunting of Anaya	f	\N	{Horror}
372	tt9828254	movie	Ghost Master	f	2019-01-01	{Horror}
382	tt9828810	movie	Angara Dangara	f	2011-01-01	{Drama}
385	tt9828908	movie	Muthu Salamba	f	2011-01-01	{Drama}
386	tt9828912	movie	Bhoga Khidikee	f	2018-01-01	{Drama}
395	tt9829498	movie	My First and Last Film	f	2019-01-01	{Documentary}
1987	tt9916162	movie	Making of 'La Virgen de los sicarios'	f	1999-01-01	{Documentary}
1988	tt9916170	movie	The Rehearsal	f	2019-01-01	{Drama}
1989	tt9916178	movie	Yesterday's Dreams	f	\N	{}
1990	tt9916186	movie	Illenau - die Geschichte einer ehemaligen Heil- und Pflegeanstalt	f	2017-01-01	{Documentary}
1991	tt9916188	movie	Minotaur	f	\N	{Thriller}
1992	tt9916190	movie	Safeguard	f	2020-01-01	{Action,Adventure,Thriller}
1993	tt9916270	movie	Il talento del calabrone	f	2020-01-01	{Thriller}
1994	tt9916362	movie	Coven	f	2020-01-01	{Drama,History}
1996	tt9916538	movie	Kuambil Lagi Hatiku	f	2019-01-01	{Drama}
1997	tt9916620	movie	The Copeland Case	f	\N	{Drama}
1998	tt9916622	movie	Rodolpho Teóphilo - O Legado de um Pioneiro	f	2015-01-01	{Documentary}
1999	tt9916680	movie	De la ilusión al desconcierto: cine colombiano 1970-1995	f	2007-01-01	{Documentary}
2000	tt9916706	movie	Dankyavar Danka	f	2013-01-01	{Comedy}
2001	tt9916730	movie	6 Gunn	f	2017-01-01	{}
2002	tt9916754	movie	Chico Albuquerque - Revelações	f	2013-01-01	{Documentary}
403	tt9831136	movie	The Banana Splits Movie	f	2019-01-01	{Action,Comedy,Horror}
418	tt9832206	movie	Where Heaven Ends	f	2023-01-01	{Action}
431	tt9832636	movie	Zombie Traveler	f	2023-01-01	{Action,Adventure,Comedy}
442	tt9833362	movie	Holly Near: Singing For Our Lives	f	2018-01-01	{Documentary}
455	tt9834210	movie	Putha Mage Suraya	f	2011-01-01	{Drama}
462	tt9834486	movie	Seishun kaku ryoku-niki	f	1938-01-01	{Drama}
468	tt9834678	movie	Thora West	f	1915-01-01	{Drama}
477	tt9835682	movie	El payaso de Satán	f	2019-01-01	{Horror}
490	tt9837800	movie	Drug Warz	f	\N	{Crime}
497	tt9838144	movie	Chasing The Bullet	f	\N	{Action,Drama}
506	tt9838378	movie	Randen: The Comings and Goings on a Kyoto Tram	f	2019-01-01	{Drama,Romance}
521	tt9838780	movie	Hidden Dragon Battle	f	2017-01-01	{Action}
531	tt9839016	movie	HempenRoad: Cascadia Journey	f	1997-01-01	{Documentary}
539	tt9839624	movie	The Hero Myth	f	2018-01-01	{Documentary,Music}
540	tt9839636	movie	The Perfect Wedding	f	2019-01-01	{Comedy,Romance}
552	tt9840936	movie	Forbidden Lips	f	1958-01-01	{Romance}
561	tt9842404	movie	Dream Journey 2: Princess Iron Fan	f	2017-01-01	{Adventure,Fantasy}
571	tt9842798	movie	Fierce	f	\N	{Action,Adventure}
579	tt9843028	movie	Kago de iku no wa	f	1955-01-01	{History}
586	tt9843148	movie	El-Cinnia	f	\N	{Horror,Mystery,Thriller}
596	tt9843464	movie	Nisyros, sta galazia ifaistia	f	2008-01-01	{Documentary}
607	tt9843984	movie	2036 Apocalypse Earth	f	2019-01-01	{Action,Adventure,Crime}
616	tt9844256	movie	Code Geass: Lelouch of the Rebellion - Emperor	f	2018-01-01	{Action,Animation,Sci-Fi}
617	tt9844322	movie	Kaamelott: First Installment	f	2021-01-01	{Adventure,Comedy,Fantasy}
631	tt9844650	movie	Fighting Men of China	f	2018-01-01	{Drama}
640	tt9844886	movie	Embryo: A Journey of Music and Peace	f	2018-01-01	{Documentary}
650	tt9845146	movie	Driven By Loss	f	2019-01-01	{Drama}
658	tt9846628	movie	'Til the Wheels Fall Off	f	\N	{Documentary,News,Sport}
668	tt9847414	movie	Untitled Workybee Sai's Story 4	f	\N	{Drama,Mystery}
679	tt9848092	movie	De brief voor Sinterklaas	f	2019-01-01	{Family}
689	tt9848626	movie	Hotel Transylvania 4: Transformania	f	2022-01-01	{Adventure,Animation,Comedy}
692	tt9848804	movie	May 13th, Night of Sorrow	f	1965-01-01	{Drama}
696	tt9848968	movie	Same But Different: A True New Zealand Love Story	f	2019-01-01	{Comedy,Drama,Romance}
708	tt9849230	movie	After-School Starlight	f	2019-01-01	{Comedy,Drama,Romance}
719	tt9849554	movie	Maximum Sacrifice	f	\N	{Action,Romance}
729	tt9849934	movie	Broken	f	\N	{Horror,Thriller}
735	tt9850064	movie	Children of the Sea	f	2019-01-01	{Adventure,Animation,Drama}
742	tt9850264	movie	Paradise War: The Story of Bruno Manser	f	2019-01-01	{Adventure,Biography,Drama}
757	tt9850564	movie	Modus Vivendi	f	2005-01-01	{Drama}
763	tt9850790	movie	Trouble Nubble Gum	f	2022-01-01	{Adventure,Animation}
769	tt9851854	movie	Major	f	2022-01-01	{Action,Biography,Drama}
772	tt9852492	movie	Irohanihoheto	f	1960-01-01	{Drama}
779	tt9853488	movie	Jade Hunters of China	f	2016-01-01	{Documentary}
791	tt9853918	movie	Szent Kristóf példájára	f	1997-01-01	{Documentary}
802	tt9854310	movie	Sunny Village	f	2017-01-01	{Comedy}
811	tt9854822	movie	The Untitled Mingus Project	f	\N	{Biography}
822	tt9855170	movie	Blood, Passion & Coffee	f	2019-01-01	{Drama}
829	tt9855672	movie	Ami O Manohor	f	2018-01-01	{Drama}
839	tt9855978	movie	Dreambuilders	f	2020-01-01	{Adventure,Animation,Comedy}
846	tt9856072	movie	In Search of Godawan	f	2018-01-01	{Documentary}
855	tt9856372	movie	Masha's Mushroom	f	\N	{Thriller}
862	tt9856558	movie	Magnus Lindberg - den siste rockpoeten	f	2005-01-01	{Biography}
872	tt9857170	movie	Seinäjoen arabikevät	f	2019-01-01	{Documentary}
881	tt9858456	movie	Dave Grusin: Not Enough Time	f	2018-01-01	{Biography,Documentary,Music}
888	tt9858942	movie	Lindy the Return of Little Light	f	2019-01-01	{Biography,Documentary,History}
899	tt9859296	movie	Sunny Days	f	\N	{Drama,Romance,Thriller}
915	tt9859758	movie	Ali & Alia	f	2019-01-01	{Drama,Romance}
922	tt9859960	movie	Observar las aves	f	2019-01-01	{Drama}
925	tt9860162	movie	The Boys Behind the Belles	f	\N	{Documentary}
932	tt9860506	movie	Tinanjali, a song of Life	f	2019-01-01	{Documentary,Drama,Musical}
947	tt9861014	movie	No Glory	f	\N	{Comedy}
959	tt9861264	movie	The Platform	f	\N	{Comedy,Drama}
968	tt9861484	movie	Freedom: la story de George Michael	f	2016-01-01	{Documentary}
980	tt9862018	movie	Gainsbourg/Bashung - Fantaisie Nelson	f	2016-01-01	{Documentary}
992	tt9863566	movie	Urbanus: De Vuilnisheld	f	2019-01-01	{Animation,Comedy}
998	tt9863856	movie	Eterno Quini	f	2019-01-01	{Documentary}
1008	tt9864318	movie	The Beast in the Garden	f	\N	{Drama}
1020	tt9865282	movie	13 Needles	f	2019-01-01	{Adventure,Fantasy}
1032	tt9865492	movie	Curse of the Hag	f	2018-01-01	{Horror}
1039	tt9866202	movie	A Clear Shot	f	2019-01-01	{Drama,Thriller}
1053	tt9866620	movie	Porvenir, Texas	f	2019-01-01	{Documentary}
1062	tt9866736	movie	Rise: Ini Kalilah	f	2018-01-01	{Drama}
1076	tt9866998	movie	Surviving the Outback	f	2018-01-01	{Adventure}
1085	tt9867616	movie	Almost Human	f	2019-01-01	{Documentary,Sci-Fi}
1092	tt9868604	movie	Untitled Horror Mystery Thriller	f	\N	{Thriller}
1101	tt9868996	movie	Yo necesito amor	f	2019-01-01	{Drama}
1115	tt9869668	movie	The Final Ride	f	2019-01-01	{Comedy,Horror}
1129	tt9869940	movie	Brouwer: El Origen de la Sombra	f	2019-01-01	{Documentary,Music}
1138	tt9870452	movie	Shutters	f	\N	{Drama,Romance}
1152	tt9871230	movie	Traveling Landscape	f	2019-01-01	{Animation}
1155	tt9871426	movie	The Legend of Chronos Jaunter	f	2019-01-01	{Romance,Sci-Fi}
1167	tt9872148	movie	Talvitaistelutoimintaa	f	1957-01-01	{Documentary}
1176	tt9872614	movie	Face 2 Face	f	2019-01-01	{Thriller}
1187	tt9874290	movie	Star Trek: Incident at Beta 9	f	2002-01-01	{Sci-Fi}
1197	tt9875452	movie	Midnight Montage	f	2019-01-01	{Horror}
1205	tt9875918	movie	Flowers & Roses (The Roundup of Kalamaria)	f	2019-01-01	{Documentary}
1214	tt9876198	movie	Stomp the World: Brothers Keeper	f	\N	{Drama}
1227	tt9876600	movie	The Sky Eye	f	2018-01-01	{Drama,War}
1229	tt9876748	movie	The Crystal Heist 2	f	2017-01-01	{Action,Comedy,Mystery}
1230	tt9876852	movie	The Steve Goodman Story	f	\N	{Biography}
1240	tt9877282	movie	Biniiru hon no onna: Missha zenra	f	1981-01-01	{}
1249	tt9877846	movie	Prashna Parihara Shala	f	2019-01-01	{Action,Drama}
1257	tt9878374	movie	Regi lagni comprensorio di stato	f	2010-01-01	{Documentary}
1269	tt9878666	movie	Non più non ancora - Ritratti preadolescenti	f	2018-01-01	{Documentary}
1280	tt9878906	movie	L'uomo che sconfisse il boogie	f	2006-01-01	{Documentary}
1291	tt9879682	movie	Chef's Diaries: Scotland	f	2019-01-01	{Documentary}
1297	tt9880604	movie	Footloose in Italy: Cinque Terre and Venice	f	2017-01-01	{Documentary}
1302	tt9880982	movie	Dulce Familia	f	2019-01-01	{Action,Comedy,Family}
1313	tt9881392	movie	Ink of Yam	f	2017-01-01	{Documentary}
1320	tt9881630	movie	Nahuel and the Magic Book	f	2020-01-01	{Animation}
1327	tt9881872	movie	Peacemaker Kurogane: Omo-michi	f	2018-01-01	{Action,Animation,Comedy}
1347	tt9882238	movie	God and Kingdom	f	\N	{Drama,History,War}
1359	tt9882480	movie	Chikan bôkô densha	f	1981-01-01	{}
1369	tt9882596	movie	Sheikh Hasina the undaunted traveler, sheikh hasina's biography	f	2018-01-01	{Documentary}
1379	tt9883128	movie	Blade, Blood, Bullets & Babes	f	\N	{Horror}
1383	tt9883324	movie	Light of the Fallen	f	\N	{Sci-Fi}
1390	tt9883664	movie	Equally Friends	f	2022-01-01	{Biography,Comedy,Drama}
1403	tt9884030	movie	For Love and Revolution	f	\N	{Documentary}
1410	tt9884840	movie	Ses raisons d'être: la story de Pascal Obispo	f	2016-01-01	{Documentary}
1429	tt9886862	movie	The Arrangement	f	\N	{Action}
1437	tt9887106	movie	Warriors of the Nation	f	2019-01-01	{Drama}
1445	tt9887274	movie	The Battle Within	f	2015-01-01	{Documentary}
1454	tt9887580	movie	Bulletproof 2	f	2020-01-01	{Action,Comedy}
1456	tt9887628	movie	Labranza	f	\N	{Drama}
1458	tt9888560	movie	Angel and the Mailman	f	2019-01-01	{Drama}
1464	tt9889218	movie	Spring Quicken Fruit Ripe	f	1961-01-01	{Drama}
1476	tt9889918	movie	2 Friends	f	2018-01-01	{Comedy,Drama,Romance}
1483	tt9890030	movie	Prematho Mee Karthik	f	2017-01-01	{Action,Drama,Romance}
1491	tt9890106	movie	Boy Meets Girl (Tholiprema Katha)	f	2014-01-01	{Romance}
1503	tt9890430	movie	The Secret of Carlos Castaneda	f	2018-01-01	{Biography,Documentary}
1510	tt9891640	movie	Sergio Mendes in the Key of Joy	f	2020-01-01	{Biography,Documentary,Music}
1516	tt9892000	movie	The Secret Lives of Love Starved Housewives	t	\N	{Adult,Fantasy}
1532	tt9892546	movie	Aladdin	f	2020-01-01	{Drama,Musical,Romance}
1536	tt9892674	movie	Pile	f	\N	{Animation,Drama,Mystery}
1543	tt9892838	movie	Mares Race	f	\N	{Adventure,Animation,Family}
1550	tt9892908	movie	A Brand New Kitchen	f	2019-01-01	{Drama,Romance}
1558	tt9893078	movie	Sublime	f	2019-01-01	{Biography,Documentary,Music}
1567	tt9893238	movie	Legends of Ezra: The Heartstone	f	\N	{Adventure,Animation,Fantasy}
1573	tt9893652	movie	Divine Mercenary	f	\N	{Action}
1581	tt9893918	movie	A Walk Through Hell: Missouri State Penitentiary	f	2021-01-01	{Documentary,Horror,Reality-TV}
1594	tt9894394	movie	Upin & Ipin: Keris Siamang Tunggal	f	2019-01-01	{Animation}
1602	tt9894486	movie	Shina no yoru (mae)	f	1940-01-01	{Drama}
1609	tt9894668	movie	Ikea 2	f	2016-01-01	{Drama}
1610	tt9894722	movie	Tipi da spiaggia (la riviera romagnola)	f	2018-01-01	{Documentary}
1622	tt9895064	movie	Adelaide: The Unwinding Cable Car	f	\N	{Musical}
1634	tt9896506	movie	Six Hours With Terrorists	f	2011-01-01	{Drama}
1639	tt9897210	movie	Under the Crescent Moon	f	\N	{Drama,Thriller}
1645	tt9897706	movie	Ho rubato la marmellata: Vita di un artista politicamente scorretto	f	2018-01-01	{Documentary}
1667	tt9898596	movie	Road to Wherever	f	\N	{Comedy}
1676	tt9899054	movie	The Spectacular Mind of Mackenzie Banks	f	\N	{Action,Drama}
1683	tt9899368	movie	Lakewood Plaza Turbo	f	\N	{Action,Adventure,Animation}
1686	tt9899716	movie	Star Trek Enterprise II: Der Anfang vom Ende	f	2016-01-01	{Animation,Sci-Fi}
1698	tt9899938	movie	Journey of the Sky Goddess	f	2019-01-01	{Comedy,Drama}
1707	tt9900354	movie	Anak Sulung Tujuh Keturunan	f	1982-01-01	{Action}
1722	tt9900688	movie	Big Three Dragons	f	2019-01-01	{Comedy}
1729	tt9900940	movie	Scrapper	f	2021-01-01	{Crime,Drama,Thriller}
1737	tt9901532	movie	Slutdestination Dödssjuk	f	2019-01-01	{Comedy}
1747	tt9902940	movie	Two Faces of a Patriot	f	\N	{Sci-Fi}
1758	tt9903728	movie	Brother's Keeper	f	\N	{Drama}
1759	tt9903802	movie	Dosage Volume I	f	2002-01-01	{Action,Documentary,Sport}
1766	tt9904004	movie	Your Iron Lady	f	2020-01-01	{Drama}
1771	tt9904098	movie	Dosage Volume V	f	2008-01-01	{Action,Documentary,Sport}
1779	tt9904328	movie	Christmas in New England	f	\N	{Comedy,Family,Romance}
1790	tt9904802	movie	Enemy Lines	f	2020-01-01	{War}
1803	tt9905476	movie	Hand Rolled	f	2019-01-01	{Documentary}
1808	tt9905770	movie	Only Child, Upward, Downward, Forward, Backward, Rightward and Leftward	f	2007-01-01	{Drama}
1821	tt9906270	movie	Footloose in Italy III: Naples, Sorrento, Amalfi Coast and Capri	f	2016-01-01	{Documentary}
1831	tt9907396	movie	Footloose in the Cotswolds: Part 1	f	2016-01-01	{Documentary}
1835	tt9907824	movie	Red Elvises: Your Favorite Band	f	\N	{Comedy}
1852	tt9909310	movie	Footloose in Scotland - The West Highland Way	f	2018-01-01	{Documentary}
1877	tt9909684	movie	Chikan joshi daisei	f	1981-01-01	{}
1895	tt9909940	movie	Hot Scent	f	2018-01-01	{Drama,Family}
1903	tt9910206	movie	Facebook idióták - A Mozifilm	f	2017-01-01	{Action,Adventure,Comedy}
1908	tt9910530	movie	Svartklubb	f	2020-01-01	{Horror}
1910	tt9910648	movie	The Good Americans: One Revolution, Two Nations	f	2021-01-01	{Documentary}
1920	tt9911306	movie	Kalikkoottukar	f	2019-01-01	{Drama,Romance}
1932	tt9913418	movie	Fragments	f	2019-01-01	{Drama,Mystery,Sci-Fi}
1942	tt9914140	movie	The Adventures of Ryes and Garth: Tayna's Dawn	f	\N	{Adventure}
1954	tt9914644	movie	9/11: Escape from the Towers	f	2018-01-01	{Documentary}
1966	tt9915010	movie	The Heart To Fight	f	\N	{Action,Thriller}
1979	tt9915872	movie	The Last White Witch	f	2019-01-01	{Comedy,Drama,Fantasy}
1984	tt9916132	movie	The Mystery of a Buryat Lama	f	2018-01-01	{Biography,Documentary,History}
1985	tt9916134	movie	The Thing in the Bag	f	\N	{}
1986	tt9916160	movie	Drømmeland	f	2019-01-01	{Documentary}
1995	tt9916428	movie	The Secret of China	f	2019-01-01	{Adventure,History,War}
\.


--
-- Data for Name: imdb_person; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.imdb_person (id, imdb_id, name, birth_year, death_year) FROM stdin;
\.


--
-- Data for Name: imdb_personmovie; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.imdb_personmovie (id, "order", category, job, characters, movie_id_id, person_id_id) FROM stdin;
\.


--
-- Data for Name: lms_group; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.lms_group (id, name, teacher_id) FROM stdin;
\.


--
-- Data for Name: lms_group_students; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.lms_group_students (id, group_id, student_id) FROM stdin;
\.


--
-- Data for Name: lms_student; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.lms_student (id, name, birth_date) FROM stdin;
17	Ivan	2010-10-10
20	Semen	2010-10-10
23	Test	2011-01-01
18	Anton1	2010-10-10
24	aaa	2022-09-15
19	Vlad	2005-04-05
\.


--
-- Data for Name: lms_teacher; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.lms_teacher (id, name, birth_date) FROM stdin;
\.


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_permission_id_seq', 48, true);


--
-- Name: authentication_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.authentication_user_groups_id_seq', 1, false);


--
-- Name: authentication_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.authentication_user_id_seq', 5, true);


--
-- Name: authentication_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.authentication_user_user_permissions_id_seq', 1, false);


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_admin_log_id_seq', 1, true);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_content_type_id_seq', 12, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_migrations_id_seq', 25, true);


--
-- Name: imdb_movie_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.imdb_movie_id_seq', 2002, true);


--
-- Name: imdb_person_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.imdb_person_id_seq', 1, false);


--
-- Name: imdb_personmovie_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.imdb_personmovie_id_seq', 1, false);


--
-- Name: lms_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.lms_group_id_seq', 1, false);


--
-- Name: lms_group_students_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.lms_group_students_id_seq', 1, false);


--
-- Name: lms_student_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.lms_student_id_seq', 24, true);


--
-- Name: lms_teacher_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.lms_teacher_id_seq', 1, false);


--
-- Name: auth_group auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- Name: auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);


--
-- Name: auth_group_permissions auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_group auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- Name: auth_permission auth_permission_content_type_id_codename_01ab375a_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);


--
-- Name: auth_permission auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- Name: authentication_user authentication_user_email_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.authentication_user
    ADD CONSTRAINT authentication_user_email_key UNIQUE (email);


--
-- Name: authentication_user_groups authentication_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.authentication_user_groups
    ADD CONSTRAINT authentication_user_groups_pkey PRIMARY KEY (id);


--
-- Name: authentication_user_groups authentication_user_groups_user_id_group_id_8af031ac_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.authentication_user_groups
    ADD CONSTRAINT authentication_user_groups_user_id_group_id_8af031ac_uniq UNIQUE (user_id, group_id);


--
-- Name: authentication_user authentication_user_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.authentication_user
    ADD CONSTRAINT authentication_user_pkey PRIMARY KEY (id);


--
-- Name: authentication_user_user_permissions authentication_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.authentication_user_user_permissions
    ADD CONSTRAINT authentication_user_user_permissions_pkey PRIMARY KEY (id);


--
-- Name: authentication_user_user_permissions authentication_user_user_user_id_permission_id_ec51b09f_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.authentication_user_user_permissions
    ADD CONSTRAINT authentication_user_user_user_id_permission_id_ec51b09f_uniq UNIQUE (user_id, permission_id);


--
-- Name: django_admin_log django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- Name: django_content_type django_content_type_app_label_model_76bd3d3b_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);


--
-- Name: django_content_type django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- Name: django_migrations django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- Name: django_session django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- Name: imdb_movie imdb_movie_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.imdb_movie
    ADD CONSTRAINT imdb_movie_pkey PRIMARY KEY (id);


--
-- Name: imdb_person imdb_person_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.imdb_person
    ADD CONSTRAINT imdb_person_pkey PRIMARY KEY (id);


--
-- Name: imdb_personmovie imdb_personmovie_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.imdb_personmovie
    ADD CONSTRAINT imdb_personmovie_pkey PRIMARY KEY (id);


--
-- Name: lms_group lms_group_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.lms_group
    ADD CONSTRAINT lms_group_pkey PRIMARY KEY (id);


--
-- Name: lms_group_students lms_group_students_group_id_student_id_39b0036e_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.lms_group_students
    ADD CONSTRAINT lms_group_students_group_id_student_id_39b0036e_uniq UNIQUE (group_id, student_id);


--
-- Name: lms_group_students lms_group_students_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.lms_group_students
    ADD CONSTRAINT lms_group_students_pkey PRIMARY KEY (id);


--
-- Name: lms_student lms_student_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.lms_student
    ADD CONSTRAINT lms_student_pkey PRIMARY KEY (id);


--
-- Name: lms_teacher lms_teacher_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.lms_teacher
    ADD CONSTRAINT lms_teacher_pkey PRIMARY KEY (id);


--
-- Name: auth_group_name_a6ea08ec_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);


--
-- Name: auth_group_permissions_group_id_b120cbf9; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);


--
-- Name: auth_group_permissions_permission_id_84c5c92e; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);


--
-- Name: auth_permission_content_type_id_2f476e4b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);


--
-- Name: authentication_user_email_2220eff5_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX authentication_user_email_2220eff5_like ON public.authentication_user USING btree (email varchar_pattern_ops);


--
-- Name: authentication_user_groups_group_id_6b5c44b7; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX authentication_user_groups_group_id_6b5c44b7 ON public.authentication_user_groups USING btree (group_id);


--
-- Name: authentication_user_groups_user_id_30868577; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX authentication_user_groups_user_id_30868577 ON public.authentication_user_groups USING btree (user_id);


--
-- Name: authentication_user_user_permissions_permission_id_ea6be19a; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX authentication_user_user_permissions_permission_id_ea6be19a ON public.authentication_user_user_permissions USING btree (permission_id);


--
-- Name: authentication_user_user_permissions_user_id_736ebf7e; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX authentication_user_user_permissions_user_id_736ebf7e ON public.authentication_user_user_permissions USING btree (user_id);


--
-- Name: django_admin_log_content_type_id_c4bce8eb; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);


--
-- Name: django_admin_log_user_id_c564eba6; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);


--
-- Name: django_session_expire_date_a5c62663; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);


--
-- Name: django_session_session_key_c0390e0f_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);


--
-- Name: imdb_personmovie_movie_id_id_487fbcd4; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX imdb_personmovie_movie_id_id_487fbcd4 ON public.imdb_personmovie USING btree (movie_id_id);


--
-- Name: imdb_personmovie_person_id_id_40f8e4a5; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX imdb_personmovie_person_id_id_40f8e4a5 ON public.imdb_personmovie USING btree (person_id_id);


--
-- Name: lms_group_students_group_id_8b951d98; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX lms_group_students_group_id_8b951d98 ON public.lms_group_students USING btree (group_id);


--
-- Name: lms_group_students_student_id_68b51e6d; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX lms_group_students_student_id_68b51e6d ON public.lms_group_students USING btree (student_id);


--
-- Name: lms_group_teacher_id_48c6f330; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX lms_group_teacher_id_48c6f330 ON public.lms_group USING btree (teacher_id);


--
-- Name: auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: authentication_user_user_permissions authentication_user__permission_id_ea6be19a_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.authentication_user_user_permissions
    ADD CONSTRAINT authentication_user__permission_id_ea6be19a_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: authentication_user_groups authentication_user__user_id_30868577_fk_authentic; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.authentication_user_groups
    ADD CONSTRAINT authentication_user__user_id_30868577_fk_authentic FOREIGN KEY (user_id) REFERENCES public.authentication_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: authentication_user_user_permissions authentication_user__user_id_736ebf7e_fk_authentic; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.authentication_user_user_permissions
    ADD CONSTRAINT authentication_user__user_id_736ebf7e_fk_authentic FOREIGN KEY (user_id) REFERENCES public.authentication_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: authentication_user_groups authentication_user_groups_group_id_6b5c44b7_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.authentication_user_groups
    ADD CONSTRAINT authentication_user_groups_group_id_6b5c44b7_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_user_id_c564eba6_fk_authentication_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_authentication_user_id FOREIGN KEY (user_id) REFERENCES public.authentication_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: imdb_personmovie imdb_personmovie_movie_id_id_487fbcd4_fk_imdb_movie_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.imdb_personmovie
    ADD CONSTRAINT imdb_personmovie_movie_id_id_487fbcd4_fk_imdb_movie_id FOREIGN KEY (movie_id_id) REFERENCES public.imdb_movie(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: imdb_personmovie imdb_personmovie_person_id_id_40f8e4a5_fk_imdb_person_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.imdb_personmovie
    ADD CONSTRAINT imdb_personmovie_person_id_id_40f8e4a5_fk_imdb_person_id FOREIGN KEY (person_id_id) REFERENCES public.imdb_person(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: lms_group_students lms_group_students_group_id_8b951d98_fk_lms_group_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.lms_group_students
    ADD CONSTRAINT lms_group_students_group_id_8b951d98_fk_lms_group_id FOREIGN KEY (group_id) REFERENCES public.lms_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: lms_group_students lms_group_students_student_id_68b51e6d_fk_lms_student_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.lms_group_students
    ADD CONSTRAINT lms_group_students_student_id_68b51e6d_fk_lms_student_id FOREIGN KEY (student_id) REFERENCES public.lms_student(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: lms_group lms_group_teacher_id_48c6f330_fk_lms_teacher_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.lms_group
    ADD CONSTRAINT lms_group_teacher_id_48c6f330_fk_lms_teacher_id FOREIGN KEY (teacher_id) REFERENCES public.lms_teacher(id) DEFERRABLE INITIALLY DEFERRED;


--
-- PostgreSQL database dump complete
--

