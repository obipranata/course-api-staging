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
-- Name: detail_pemesanan; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.detail_pemesanan (
    id bigint NOT NULL,
    id_pemesanan integer NOT NULL,
    id_harga_paket integer NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.detail_pemesanan OWNER TO root;

--
-- Name: detail_pemesanan_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.detail_pemesanan_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.detail_pemesanan_id_seq OWNER TO root;

--
-- Name: detail_pemesanan_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE public.detail_pemesanan_id_seq OWNED BY public.detail_pemesanan.id;


--
-- Name: failed_jobs; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.failed_jobs (
    id bigint NOT NULL,
    uuid character varying(255) NOT NULL,
    connection text NOT NULL,
    queue text NOT NULL,
    payload text NOT NULL,
    exception text NOT NULL,
    failed_at timestamp(0) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);


ALTER TABLE public.failed_jobs OWNER TO root;

--
-- Name: failed_jobs_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.failed_jobs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.failed_jobs_id_seq OWNER TO root;

--
-- Name: failed_jobs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE public.failed_jobs_id_seq OWNED BY public.failed_jobs.id;


--
-- Name: guru; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.guru (
    id bigint NOT NULL,
    id_user integer NOT NULL,
    nama character varying(50) NOT NULL,
    no_hp character varying(15) NOT NULL,
    pendidikan_terakhir character varying(15) NOT NULL,
    alamat text NOT NULL,
    foto character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.guru OWNER TO root;

--
-- Name: guru_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.guru_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.guru_id_seq OWNER TO root;

--
-- Name: guru_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE public.guru_id_seq OWNED BY public.guru.id;


--
-- Name: harga_paket; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.harga_paket (
    id bigint NOT NULL,
    id_kelas integer NOT NULL,
    id_mata_pelajaran integer NOT NULL,
    id_guru integer NOT NULL,
    harga integer NOT NULL,
    durasi_belajar integer NOT NULL,
    jumlah_pertemuan integer NOT NULL,
    thumbnail character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    deskripsi text
);


ALTER TABLE public.harga_paket OWNER TO root;

--
-- Name: harga_paket_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.harga_paket_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.harga_paket_id_seq OWNER TO root;

--
-- Name: harga_paket_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE public.harga_paket_id_seq OWNED BY public.harga_paket.id;


--
-- Name: kelas; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.kelas (
    id bigint NOT NULL,
    nama_kelas character varying(15) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.kelas OWNER TO root;

--
-- Name: kelas_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.kelas_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.kelas_id_seq OWNER TO root;

--
-- Name: kelas_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE public.kelas_id_seq OWNED BY public.kelas.id;


--
-- Name: mata_pelajaran; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.mata_pelajaran (
    id bigint NOT NULL,
    nama character varying(50) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.mata_pelajaran OWNER TO root;

--
-- Name: mata_pelajaran_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.mata_pelajaran_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.mata_pelajaran_id_seq OWNER TO root;

--
-- Name: mata_pelajaran_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE public.mata_pelajaran_id_seq OWNED BY public.mata_pelajaran.id;


--
-- Name: migrations; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.migrations (
    id integer NOT NULL,
    migration character varying(255) NOT NULL,
    batch integer NOT NULL
);


ALTER TABLE public.migrations OWNER TO root;

--
-- Name: migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.migrations_id_seq OWNER TO root;

--
-- Name: migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE public.migrations_id_seq OWNED BY public.migrations.id;


--
-- Name: orang_tua; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.orang_tua (
    id bigint NOT NULL,
    id_user integer NOT NULL,
    nama character varying(50) NOT NULL,
    no_hp character varying(15) NOT NULL,
    alamat text NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.orang_tua OWNER TO root;

--
-- Name: orang_tua_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.orang_tua_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.orang_tua_id_seq OWNER TO root;

--
-- Name: orang_tua_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE public.orang_tua_id_seq OWNED BY public.orang_tua.id;


--
-- Name: password_resets; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.password_resets (
    email character varying(255) NOT NULL,
    token character varying(255) NOT NULL,
    created_at timestamp(0) without time zone
);


ALTER TABLE public.password_resets OWNER TO root;

--
-- Name: pemesanan; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.pemesanan (
    id bigint NOT NULL,
    id_orang_tua integer NOT NULL,
    tanggal_pemesanan timestamp(0) without time zone NOT NULL,
    status integer NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.pemesanan OWNER TO root;

--
-- Name: pemesanan_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.pemesanan_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.pemesanan_id_seq OWNER TO root;

--
-- Name: pemesanan_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE public.pemesanan_id_seq OWNED BY public.pemesanan.id;


--
-- Name: personal_access_tokens; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.personal_access_tokens (
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


ALTER TABLE public.personal_access_tokens OWNER TO root;

--
-- Name: personal_access_tokens_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.personal_access_tokens_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.personal_access_tokens_id_seq OWNER TO root;

--
-- Name: personal_access_tokens_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE public.personal_access_tokens_id_seq OWNED BY public.personal_access_tokens.id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.users (
    id bigint NOT NULL,
    name character varying(255) NOT NULL,
    email character varying(255) NOT NULL,
    email_verified_at timestamp(0) without time zone,
    password character varying(255) NOT NULL,
    remember_token character varying(100),
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    role integer DEFAULT 0 NOT NULL
);


ALTER TABLE public.users OWNER TO root;

--
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_id_seq OWNER TO root;

--
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;


--
-- Name: detail_pemesanan id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.detail_pemesanan ALTER COLUMN id SET DEFAULT nextval('public.detail_pemesanan_id_seq'::regclass);


--
-- Name: failed_jobs id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.failed_jobs ALTER COLUMN id SET DEFAULT nextval('public.failed_jobs_id_seq'::regclass);


--
-- Name: guru id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.guru ALTER COLUMN id SET DEFAULT nextval('public.guru_id_seq'::regclass);


--
-- Name: harga_paket id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.harga_paket ALTER COLUMN id SET DEFAULT nextval('public.harga_paket_id_seq'::regclass);


--
-- Name: kelas id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.kelas ALTER COLUMN id SET DEFAULT nextval('public.kelas_id_seq'::regclass);


--
-- Name: mata_pelajaran id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.mata_pelajaran ALTER COLUMN id SET DEFAULT nextval('public.mata_pelajaran_id_seq'::regclass);


--
-- Name: migrations id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.migrations ALTER COLUMN id SET DEFAULT nextval('public.migrations_id_seq'::regclass);


--
-- Name: orang_tua id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.orang_tua ALTER COLUMN id SET DEFAULT nextval('public.orang_tua_id_seq'::regclass);


--
-- Name: pemesanan id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.pemesanan ALTER COLUMN id SET DEFAULT nextval('public.pemesanan_id_seq'::regclass);


--
-- Name: personal_access_tokens id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.personal_access_tokens ALTER COLUMN id SET DEFAULT nextval('public.personal_access_tokens_id_seq'::regclass);


--
-- Name: users id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);


--
-- Data for Name: detail_pemesanan; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.detail_pemesanan (id, id_pemesanan, id_harga_paket, created_at, updated_at) FROM stdin;
1	4	2	2022-12-29 03:02:08	2022-12-29 03:02:08
2	5	1	2022-12-29 03:04:20	2022-12-29 03:04:20
8	11	3	2022-12-29 18:18:13	2022-12-29 18:18:13
11	14	2	2023-01-01 06:04:57	2023-01-01 06:04:57
14	17	6	2023-01-02 09:13:47	2023-01-02 09:13:47
\.


--
-- Data for Name: failed_jobs; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.failed_jobs (id, uuid, connection, queue, payload, exception, failed_at) FROM stdin;
\.


--
-- Data for Name: guru; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.guru (id, id_user, nama, no_hp, pendidikan_terakhir, alamat, foto, created_at, updated_at) FROM stdin;
3	14	Isman	082192828203	S3	Lamongan	guru/BSokLTvOeDV6IE1n0SA0gg2ibqiFUwuGx8vHN7ZC.jpg	2022-12-30 13:35:10	2022-12-30 13:35:10
1	3	Endjiansyah	6282192828204	S1	cisitu	guru/BXhUN0gcQUFDrVv9QImlsuSqx6SI5VXzSUZRT515.jpg	2022-12-28 15:19:58	2023-01-01 14:06:20
4	16	Irfan	082192828209	S3	Cisituu	guru/7y7W8OK3IfGxPjMSy0VSCFxxusNlp7kOMhp6MuB8.jpg	2023-01-02 09:07:17	2023-01-02 09:07:17
2	4	Hanif	09888	S2	cisitu	guru/WsQWHKpJH6KkA8E2VsZF6xgoLmZEpXbnVt12iMQ9.jpg	2022-12-28 18:16:55	2023-01-04 04:04:40
\.


--
-- Data for Name: harga_paket; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.harga_paket (id, id_kelas, id_mata_pelajaran, id_guru, harga, durasi_belajar, jumlah_pertemuan, thumbnail, created_at, updated_at, deskripsi) FROM stdin;
1	1	2	1	100000	90	8	harga_paket/l11ddAm5rEhLCYyqZZLOVkacHNmARPrMe1NgMqwu.png	2022-12-28 16:26:21	2022-12-29 09:09:52	\N
3	3	3	2	200000	70	7	harga_paket/cOf0dnWNyPrYZBJVx7BloIg5HOEPgwfMCs0Bx78t.jpg	2022-12-29 17:52:09	2022-12-31 12:03:01	\N
2	4	1	1	120000	90	8	harga_paket/HYiYkwdubFrnnT890yHRhLo1uvjuOXB8Y1RQsRpT.png	2022-12-29 02:38:44	2022-12-31 12:44:15	\N
4	1	4	1	50000	8	8	harga_paket/TmD96JKoVF4Pqh1FzhZ7NXAAxNrCGpaySCvFlXRc.jpg	2022-12-30 04:59:41	2022-12-31 12:44:24	\N
6	3	3	1	100000	90	8	harga_paket/AGEvqXgIbBYXL7BbWqPQ7ihDOxaSLKrurHp88ujn.jpg	2022-12-31 19:02:01	2022-12-31 19:06:21	Lorem, ipsum dolor sit amet consectetur adipisicing elit. Soluta ullam doloremque, tempora nesciunt laborum, rem non aperiam totam sit animi ab ipsa quam magni adipisci ipsam officiis cumque id accusantium.
8	4	4	1	120000	80	9	harga_paket/yB0ydS77WovhamNrXGjJEllA62k55aXnUagbBBU3.jpg	2023-01-02 09:15:56	2023-01-02 09:15:56	belajar fisika
\.


--
-- Data for Name: kelas; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.kelas (id, nama_kelas, created_at, updated_at) FROM stdin;
1	X - XII	2022-12-28 16:05:38	2022-12-31 12:42:06
3	IV - VI	2022-12-29 17:50:47	2022-12-31 12:45:35
4	VII - IX	2022-12-29 17:50:56	2022-12-31 12:51:01
6	I - III	2023-01-02 09:16:55	2023-01-02 09:16:55
\.


--
-- Data for Name: mata_pelajaran; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.mata_pelajaran (id, nama, created_at, updated_at) FROM stdin;
1	Matematika	2022-12-28 15:56:17	2022-12-29 02:38:17
3	Bahasa Inggris	2022-12-29 17:51:08	2022-12-29 17:51:08
4	Fisika	2022-12-29 17:51:19	2022-12-29 17:51:19
5	Bahasa Jepang	2022-12-30 11:29:43	2022-12-30 11:29:43
2	Kimia	2022-12-29 02:38:04	2022-12-30 11:35:28
\.


--
-- Data for Name: migrations; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.migrations (id, migration, batch) FROM stdin;
1	2014_10_12_000000_create_users_table	1
2	2014_10_12_100000_create_password_resets_table	1
3	2019_08_19_000000_create_failed_jobs_table	1
4	2019_12_14_000001_create_personal_access_tokens_table	1
5	2022_12_28_134748_create_kelas_table	1
6	2022_12_28_134920_create_mata_pelajaran_table	1
7	2022_12_28_135139_create_guru_table	1
8	2022_12_28_135412_create_orang_tua_table	1
9	2022_12_28_135655_create_harga_paket_table	1
10	2022_12_28_140337_create_pemesanan_table	1
12	2022_12_28_140805_create_detail_pemesanan_table	2
13	2022_12_29_031255_add_role_to_users_table	3
14	2022_12_31_184924_add_deskripsi_to_harga_paket_table	4
\.


--
-- Data for Name: orang_tua; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.orang_tua (id, id_user, nama, no_hp, alamat, created_at, updated_at) FROM stdin;
2	8	Agung	082192828405	cisituuu	2022-12-30 12:59:47	2022-12-30 12:59:47
3	15	Abdul	082192828405	Surabaya	2023-01-01 14:50:58	2023-01-01 14:50:58
1	7	Tegar P	099999	medan	2022-12-29 01:46:47	2023-01-02 08:54:09
\.


--
-- Data for Name: password_resets; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.password_resets (email, token, created_at) FROM stdin;
\.


--
-- Data for Name: pemesanan; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.pemesanan (id, id_orang_tua, tanggal_pemesanan, status, created_at, updated_at) FROM stdin;
4	1	2022-12-29 03:02:08	0	2022-12-29 03:02:08	2022-12-29 03:02:08
5	1	2022-12-29 03:04:20	1	2022-12-29 03:04:20	2022-12-30 03:40:32
11	1	2022-12-29 18:18:13	1	2022-12-29 18:18:13	2022-12-30 08:03:47
14	1	2023-01-01 06:04:57	0	2023-01-01 06:04:57	2023-01-01 06:04:57
17	2	2023-01-02 09:13:47	1	2023-01-02 09:13:47	2023-01-02 09:14:55
\.


--
-- Data for Name: personal_access_tokens; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.personal_access_tokens (id, tokenable_type, tokenable_id, name, token, abilities, last_used_at, expires_at, created_at, updated_at) FROM stdin;
13	App\\Models\\User	7	auth_token	2d418579c736215236cef1e91af792926a5d9b62fb2786b10a4cc9c2797bd76c	["*"]	2022-12-29 17:05:55	\N	2022-12-29 15:20:47	2022-12-29 17:05:55
1	App\\Models\\User	1	auth_token	869a4d745979d5fea071465054bb6165788eb5235168f72c91853d1283a9c39d	["*"]	2022-12-29 03:38:50	\N	2022-12-29 03:35:17	2022-12-29 03:38:50
31	App\\Models\\User	4	auth_token	de75a615e5c4c7dd542563a5ac0a060288f004377cf5c0d4f322f324dc2d9fb7	["*"]	2022-12-30 10:33:06	\N	2022-12-30 10:32:47	2022-12-30 10:33:06
2	App\\Models\\User	7	auth_token	df58433064e1ceec13d3ac4002229dfc10e62c6f33163971cee177ea035910de	["*"]	2022-12-29 03:39:50	\N	2022-12-29 03:39:10	2022-12-29 03:39:50
3	App\\Models\\User	1	auth_token	5cc959420c9fba35d2e1cca61e6ddceb60e3102139fdda21ee4b6b6d581afa76	["*"]	2022-12-29 03:41:24	\N	2022-12-29 03:40:50	2022-12-29 03:41:24
32	App\\Models\\User	7	auth_token	3d1bbf797c38a05e9d1a8b24cf2f7457a19d15689caa6217f49b0f4e42758fd7	["*"]	\N	\N	2022-12-30 10:41:18	2022-12-30 10:41:18
33	App\\Models\\User	1	auth_token	27cf4d7f2167802967a8f498ba3d47c5d5357f93492367b35117718afb8e594a	["*"]	\N	\N	2022-12-30 11:08:15	2022-12-30 11:08:15
20	App\\Models\\User	4	auth_token	245560b0eb0800f0b19bb3810b340318ae757c55dbc8b23420f54d9f82a2b7e1	["*"]	2022-12-30 07:28:49	\N	2022-12-30 05:17:40	2022-12-30 07:28:49
5	App\\Models\\User	3	auth_token	6a25d352dee17ea40b039e5d555ca804923cfa9fe228387681a512ef339fb360	["*"]	2022-12-29 19:06:08	\N	2022-12-29 06:06:40	2022-12-29 19:06:08
38	App\\Models\\User	4	auth_token	ceade766f4ccda955a6ab7a48e6d09a8f1288677e5d1621cf74e0673687c163b	["*"]	2022-12-30 16:39:07	\N	2022-12-30 16:38:58	2022-12-30 16:39:07
6	App\\Models\\User	7	auth_token	64722f37d232d2ad340c91d00a1c260444cfb0350f149e517da9439565cd1a1c	["*"]	2022-12-29 07:42:48	\N	2022-12-29 07:41:51	2022-12-29 07:42:48
34	App\\Models\\User	1	auth_token	081f3d0bddcaad6afd8fc299c298ae25eabe20c016fb966f0b79d034b0db9df2	["*"]	2022-12-30 11:31:03	\N	2022-12-30 11:09:52	2022-12-30 11:31:03
35	App\\Models\\User	8	auth_token	e6e7bf0dcedd22a8e43102a33f7fc2e4e11bdaf080b8282d4e70cecb9ab9050c	["*"]	\N	\N	2022-12-30 13:00:26	2022-12-30 13:00:26
24	App\\Models\\User	4	auth_token	7fb78abb6529480ae32cc8b9bdbad65a17abb155b71602d3137ffd4f9bbdd881	["*"]	2022-12-30 08:31:48	\N	2022-12-30 08:22:08	2022-12-30 08:31:48
23	App\\Models\\User	4	auth_token	9e97fb0e69c6aaac7e81f78c16f8456db91a1de52f0789c2671e15e5d9f41d83	["*"]	2022-12-30 08:21:54	\N	2022-12-30 07:54:48	2022-12-30 08:21:54
18	App\\Models\\User	3	auth_token	95fddac67c2a8d396cfa21632e0666717ea355219196fee703ac0a29e2fb0e34	["*"]	2022-12-30 07:42:37	\N	2022-12-30 01:08:19	2022-12-30 07:42:37
4	App\\Models\\User	7	auth_token	8a18635b4656c55c8fde435e1fed06526a93589371d66a112f46543e6b9effb8	["*"]	2023-01-02 08:47:39	\N	2022-12-29 04:39:05	2023-01-02 08:47:39
14	App\\Models\\User	7	auth_token	245f1a145408e3f1579a73b84dbe1b19e9e8a4fb8bb6645f7d4df4785863f399	["*"]	2022-12-29 18:18:40	\N	2022-12-29 17:11:17	2022-12-29 18:18:40
27	App\\Models\\User	4	auth_token	7674788250c050ff90d2e9c0d0e34019327ddac432ed51e3d977030aa45bd502	["*"]	2022-12-30 09:07:10	\N	2022-12-30 08:57:33	2022-12-30 09:07:10
12	App\\Models\\User	7	auth_token	f4101a06f6327ca6533cc16795b8acb2863565f70a796762402e21e2a305301c	["*"]	2022-12-29 15:19:36	\N	2022-12-29 14:59:42	2022-12-29 15:19:36
7	App\\Models\\User	7	auth_token	7e07cf73458c32f9ae116ee0d2d8f0847560686137034c280876b2e14a6073b7	["*"]	2022-12-29 13:02:09	\N	2022-12-29 12:58:44	2022-12-29 13:02:09
8	App\\Models\\User	1	auth_token	474b05a5ce10fd532cd19b19a49ddf6738c5fd1ef8f18c3156f73cf91bb92df2	["*"]	2022-12-29 13:07:22	\N	2022-12-29 13:07:17	2022-12-29 13:07:22
9	App\\Models\\User	1	auth_token	8cb2e52e6170eee1e6c5ae4ad19c70c141fb0d49535af7e96b658aa7fdd889dd	["*"]	\N	\N	2022-12-29 13:49:44	2022-12-29 13:49:44
10	App\\Models\\User	7	auth_token	3eb8f6b96371fc6b2d93650ba4c01252d093001c91598b7510321c28b574d53b	["*"]	2022-12-29 13:52:29	\N	2022-12-29 13:52:23	2022-12-29 13:52:29
11	App\\Models\\User	7	auth_token	3d4467154e8f78f1771cea90a41237b831471f40f3d47f70be1efaa1aee47cc2	["*"]	2022-12-29 14:38:32	\N	2022-12-29 14:34:57	2022-12-29 14:38:32
17	App\\Models\\User	3	auth_token	0c9269ad0b8b3827efe34ce2ea911c8c18b4ca7a535aba6d7f60cf04a7758806	["*"]	2022-12-29 19:18:24	\N	2022-12-29 19:06:32	2022-12-29 19:18:24
15	App\\Models\\User	7	auth_token	901ec6ca55a2424739cd1b7481996212e6fa3ba3685d08c48fade7231bd81680	["*"]	2022-12-29 18:50:17	\N	2022-12-29 18:23:55	2022-12-29 18:50:17
25	App\\Models\\User	4	auth_token	7c96eaa9cd9f7cdba20a3950e3d85a9f4b85ccc693d08e0b601c27efec863026	["*"]	2022-12-30 08:51:52	\N	2022-12-30 08:48:50	2022-12-30 08:51:52
21	App\\Models\\User	4	auth_token	ead545a6d20c64e429f276882d3da2a50adb2d3d9db64ea36e344c8712c4aebe	["*"]	2022-12-30 07:49:59	\N	2022-12-30 07:42:50	2022-12-30 07:49:59
16	App\\Models\\User	3	auth_token	c3010278a138991aea346365ae2dc2e0c7ea575aa673d5a4e59ecaa4090ccbdb	["*"]	2022-12-29 19:25:58	\N	2022-12-29 18:50:33	2022-12-29 19:25:58
22	App\\Models\\User	7	auth_token	b77fc4c6d03119e9d5130588c35901724995b367c43e950f953ea5572dc95f4a	["*"]	2022-12-30 07:53:08	\N	2022-12-30 07:53:07	2022-12-30 07:53:08
19	App\\Models\\User	3	auth_token	8de3beac626e1d0af1022e11dae503fac149e8203685c1371f3c429c7b99287a	["*"]	2022-12-30 05:17:01	\N	2022-12-30 05:15:31	2022-12-30 05:17:01
26	App\\Models\\User	4	auth_token	92f5317812f6a206457aca9c9dabb67e54ed5595a5c1cbb616e3d7a4160b111c	["*"]	2022-12-30 08:57:23	\N	2022-12-30 08:57:23	2022-12-30 08:57:23
29	App\\Models\\User	3	auth_token	3d0a6786b692476b70fa3263474b98ad9d0a4dd66b6be5527115a36f8399f2b9	["*"]	2022-12-30 09:12:06	\N	2022-12-30 09:08:28	2022-12-30 09:12:06
30	App\\Models\\User	4	auth_token	e6bad3a3bb5d26df0aa9e00cf9621836e2b9e25618174b338af33b3ff994a923	["*"]	2022-12-30 09:17:59	\N	2022-12-30 09:16:56	2022-12-30 09:17:59
28	App\\Models\\User	4	auth_token	a2998b2dd7bdef0008cd4cd8a3371458e04239816d1a8d1bae6c1910894f9bb4	["*"]	2022-12-30 09:07:52	\N	2022-12-30 09:07:22	2022-12-30 09:07:52
39	App\\Models\\User	7	auth_token	222498ea4a63ce46d72ea2255edb6a925dcd465e3ef7d0405989690388fc0f06	["*"]	2022-12-31 05:28:31	\N	2022-12-31 05:26:24	2022-12-31 05:28:31
40	App\\Models\\User	7	auth_token	daf623efa9a90c97fdb2b9819100017686061d00c960e445f48adaaab2f268cf	["*"]	2022-12-31 05:29:54	\N	2022-12-31 05:29:52	2022-12-31 05:29:54
36	App\\Models\\User	14	auth_token	56ff8cfee82487b56ca320e9f90480f2dbc523acfc595006ff4fa64f490221ba	["*"]	2022-12-30 13:35:38	\N	2022-12-30 13:35:21	2022-12-30 13:35:38
37	App\\Models\\User	1	auth_token	ced1a694be7bdb8de67f828749b74ac32058ff01f31087637c31a925f75012ac	["*"]	\N	\N	2022-12-30 13:36:43	2022-12-30 13:36:43
41	App\\Models\\User	1	auth_token	9770fee2f67942ea928ca151ef2346e4792ae0e3b2c57d16f9535d67db4d5d23	["*"]	2022-12-31 05:41:08	\N	2022-12-31 05:36:11	2022-12-31 05:41:08
42	App\\Models\\User	7	auth_token	bd084b3d957b6cca563929f1a0b6543f8350302b1d75edbb967ff735a81fb8a9	["*"]	2022-12-31 07:04:43	\N	2022-12-31 07:03:03	2022-12-31 07:04:43
43	App\\Models\\User	1	auth_token	e4540b9f116c383d06e967216c2e277fdddaa74d478766e6b6e2813d879112f3	["*"]	2022-12-31 09:54:56	\N	2022-12-31 09:54:08	2022-12-31 09:54:56
65	App\\Models\\User	7	auth_token	cf3c33590b96940657e8fb8f74429877357327ab1a0a74f8a7f0491012135e0b	["*"]	2023-01-01 09:35:31	\N	2023-01-01 09:15:04	2023-01-01 09:35:31
57	App\\Models\\User	3	auth_token	d756090072c640e2f6fa515e1cb7c10737d52b77fd34b0e7feda321aaffef77f	["*"]	2022-12-31 19:02:29	\N	2022-12-31 18:50:48	2022-12-31 19:02:29
52	App\\Models\\User	1	auth_token	a3b22242305f2a08f386156d28ecdae306c89a1e634244127a6778c79fa210ed	["*"]	2022-12-31 12:51:55	\N	2022-12-31 12:44:59	2022-12-31 12:51:55
50	App\\Models\\User	1	auth_token	b95f02f044623ac0f3f241dc8baa6455da73d9352959cbc2bfe33c4de96823d1	["*"]	2022-12-31 12:42:27	\N	2022-12-31 12:40:30	2022-12-31 12:42:27
53	App\\Models\\User	7	auth_token	1cf9bd59b3dc1390f45c6df6e534bf962bb24ac907fb53f37daf903feaede125	["*"]	\N	\N	2022-12-31 12:54:01	2022-12-31 12:54:01
44	App\\Models\\User	7	auth_token	18c32785a779d4e62c15f67e351c1734b4912941d78e6530d78eb8570cc0429a	["*"]	2022-12-31 10:51:23	\N	2022-12-31 10:44:53	2022-12-31 10:51:23
45	App\\Models\\User	7	auth_token	447c37b1100ded4b558f963250ee9b16964eef37d6899f930afa0ab22d32596e	["*"]	2022-12-31 10:56:27	\N	2022-12-31 10:56:23	2022-12-31 10:56:27
46	App\\Models\\User	7	auth_token	1d9bdcbdaf5595376c26459778e1c44c89445da63a79fc79215f83734389d0cd	["*"]	2022-12-31 10:58:12	\N	2022-12-31 10:58:10	2022-12-31 10:58:12
60	App\\Models\\User	1	auth_token	64fbf2b0c97a96464dcfca122dd11779351d9e59b220e39409e700acb30afdba	["*"]	2023-01-01 06:08:25	\N	2023-01-01 06:07:26	2023-01-01 06:08:25
47	App\\Models\\User	3	auth_token	d8732f66096add8f3f61f5e26c3a7fb0a8861d4fc8da88cdc09a596025752c4c	["*"]	2022-12-31 11:50:47	\N	2022-12-31 11:50:33	2022-12-31 11:50:47
58	App\\Models\\User	3	auth_token	f35eb038e1fde409331a1b2f877e8e20c1dbfbd2425561e9601c1a0aed857053	["*"]	2022-12-31 19:06:21	\N	2022-12-31 19:04:16	2022-12-31 19:06:21
54	App\\Models\\User	3	auth_token	fa61ca4e6f10015cd65a3998e477ed25939383146fd8c960169ae1cc0b9afd2f	["*"]	2022-12-31 12:56:00	\N	2022-12-31 12:54:12	2022-12-31 12:56:00
51	App\\Models\\User	3	auth_token	986962967a5e46e0c1bda05cdacbd56fdadbad5ad410d26a54b18040a447bedd	["*"]	2022-12-31 12:44:24	\N	2022-12-31 12:43:05	2022-12-31 12:44:24
55	App\\Models\\User	4	auth_token	f99a2591551bb6c8d0a0e209afe5801483f9ac94f5b5a39cb0ffef06e90f009c	["*"]	2022-12-31 16:32:33	\N	2022-12-31 16:31:50	2022-12-31 16:32:33
49	App\\Models\\User	7	auth_token	59125b4330e7b3513c67071f27956df7b5b3b7fbdc5f1bbb62fdc7d4e1e3a827	["*"]	2022-12-31 12:40:15	\N	2022-12-31 12:11:16	2022-12-31 12:40:15
48	App\\Models\\User	4	auth_token	e886ca6c01ced565ef8598c759ea5701256e400e47324c7f2d72a7d28104a8e2	["*"]	2022-12-31 12:03:01	\N	2022-12-31 11:51:11	2022-12-31 12:03:01
61	App\\Models\\User	7	auth_token	d06a41c5d6cdadde61ab3317d58bcb1f1e431631af2dca6328b8f2c698d23728	["*"]	2023-01-01 06:10:03	\N	2023-01-01 06:09:34	2023-01-01 06:10:03
79	App\\Models\\User	3	auth_token	584cb701fc745d4e9220377bfea3588617677e68550e2925854d737d76ebd1c1	["*"]	2023-01-01 11:44:21	\N	2023-01-01 11:44:09	2023-01-01 11:44:21
70	App\\Models\\User	7	auth_token	7849da1da9cbed56f314270c1c72ccb9c679b791de3c079bcb9424a2207531e7	["*"]	2023-01-01 10:11:35	\N	2023-01-01 10:09:52	2023-01-01 10:11:35
59	App\\Models\\User	7	auth_token	ec3953cca125db34f6f51af85b58bdd73aa6ed361acd0df85f93cd85a3f76dd4	["*"]	2023-01-01 06:06:17	\N	2023-01-01 06:04:33	2023-01-01 06:06:17
66	App\\Models\\User	3	auth_token	8a6987a52becab24b5b6ca78ccda07e879e60eb929fba93958f7c7ef1575ebc3	["*"]	2023-01-01 09:43:46	\N	2023-01-01 09:40:43	2023-01-01 09:43:46
64	App\\Models\\User	3	auth_token	55f0e0b5910cf58819a6249bd02b5ea61921c37b59b5ead0072c51e7003663fb	["*"]	2023-01-01 09:14:28	\N	2023-01-01 08:34:39	2023-01-01 09:14:28
62	App\\Models\\User	1	auth_token	ab005bef85a26f4227345412b341ecda72fed210897d710073a8b98d8da80dc2	["*"]	2023-01-01 07:04:59	\N	2023-01-01 07:04:35	2023-01-01 07:04:59
67	App\\Models\\User	7	auth_token	f67d776d54a185e24af2947841190f1be0a5d76e4b098f873f4a1ccadc627edf	["*"]	\N	\N	2023-01-01 09:44:17	2023-01-01 09:44:17
73	App\\Models\\User	1	auth_token	1392debf5c436c3b1095608219b23847b3a11eab814f3f16608188311c264d8b	["*"]	2023-01-01 10:15:45	\N	2023-01-01 10:15:43	2023-01-01 10:15:45
68	App\\Models\\User	7	auth_token	dc429f9240f418e3514b8c15616914c5acd1bd631d5f4034fb5a38b324c33f0f	["*"]	2023-01-01 10:05:30	\N	2023-01-01 09:46:05	2023-01-01 10:05:30
69	App\\Models\\User	3	auth_token	d66c0249e3279925790a8503b9b5225ed0480063dd59f2889600828f48bbea53	["*"]	2023-01-01 10:06:13	\N	2023-01-01 10:06:10	2023-01-01 10:06:13
63	App\\Models\\User	3	auth_token	ac98df45bcd812724bf372f57204b0a9efb6a87a1dec5a8bec292656b324ef00	["*"]	2023-01-01 08:18:45	\N	2023-01-01 07:06:52	2023-01-01 08:18:45
74	App\\Models\\User	7	auth_token	a6de8f48db8ffa2959cd337d0e4fe98646fbba1915506cf2205304eba4d11562	["*"]	2023-01-01 11:30:14	\N	2023-01-01 11:05:02	2023-01-01 11:30:14
77	App\\Models\\User	7	auth_token	b987a5042b940196511e9683687d5844b017b04e3e3473ba949d2dc5f8e7a566	["*"]	2023-01-01 11:43:05	\N	2023-01-01 11:31:38	2023-01-01 11:43:05
71	App\\Models\\User	3	auth_token	bda4da0f5d1ebef70201d51507a110f96a1f3c345f905f198018fbedfa288709	["*"]	2023-01-01 10:12:34	\N	2023-01-01 10:12:07	2023-01-01 10:12:34
75	App\\Models\\User	7	auth_token	60f9502ff4f35ea99a487136079a4fdfe29944082fe66de3804edc84295528c2	["*"]	2023-01-01 11:30:51	\N	2023-01-01 11:30:25	2023-01-01 11:30:51
72	App\\Models\\User	7	auth_token	9913fac2bf0de102507e24c1788dcaa6ebb70d5cc96addd21b92726b357bb260	["*"]	2023-01-01 10:15:18	\N	2023-01-01 10:12:51	2023-01-01 10:15:18
76	App\\Models\\User	7	auth_token	57e7c04b642ff4197f0eab3ab3314cbc0804889b10a69e9607af7e313acb0fb5	["*"]	\N	\N	2023-01-01 11:31:19	2023-01-01 11:31:19
78	App\\Models\\User	7	auth_token	334d0b94c76fc1bc24f2572c98c39bc01b0abddc2e48e4fe0e551d603f8f8ba3	["*"]	\N	\N	2023-01-01 11:43:26	2023-01-01 11:43:26
80	App\\Models\\User	3	auth_token	df52399a53acfd8f39cf9534dfc98467188901c99e52a27d637d8a5704d7d401	["*"]	2023-01-01 11:44:55	\N	2023-01-01 11:44:47	2023-01-01 11:44:55
81	App\\Models\\User	7	auth_token	2ba6fc1aa2856f8d7845d1a645f1f8e3856700bcc1a6f718651c23723ad8895f	["*"]	2023-01-01 13:20:14	\N	2023-01-01 13:19:49	2023-01-01 13:20:14
83	App\\Models\\User	8	auth_token	7a414e70f69f72d9b6a36cf92851ff574400fe63a59a71f2cc2c8435da013c1f	["*"]	2023-01-01 14:05:39	\N	2023-01-01 13:24:21	2023-01-01 14:05:39
82	App\\Models\\User	3	auth_token	94b0e78b22fb92d65b657dc0501fa7713ef35ad94261e4ff003d4385b867ce93	["*"]	2023-01-01 13:23:33	\N	2023-01-01 13:23:01	2023-01-01 13:23:33
84	App\\Models\\User	3	auth_token	ce0c442bbf67cdd0b41f7cba739eb369b1f3fd6a5365650f341a763706f0595e	["*"]	2023-01-01 14:06:20	\N	2023-01-01 14:06:00	2023-01-01 14:06:20
85	App\\Models\\User	7	auth_token	40ccb04356d0d94fb32b8e41e27ecef19d5ca79b01aacfb2804579ef0a8345d8	["*"]	2023-01-01 14:26:35	\N	2023-01-01 14:06:32	2023-01-01 14:26:35
86	App\\Models\\User	8	auth_token	408b54ff6a44ca5cde14ae580e97c4e196c3157841c4fe600311a0750a2b7943	["*"]	2023-01-01 14:50:08	\N	2023-01-01 14:26:54	2023-01-01 14:50:08
56	App\\Models\\User	3	auth_token	a00066a2a6fd72bd585f346ad6b22c77224f978d35e5799a9bf47676e707cd47	["*"]	2023-01-04 04:04:40	\N	2022-12-31 16:33:25	2023-01-04 04:04:40
94	App\\Models\\User	8	auth_token	cbc720690850506f188c8b19814a5872ee61876838f64bca2788442d748ae411	["*"]	2023-01-02 09:02:37	\N	2023-01-02 09:01:04	2023-01-02 09:02:37
98	App\\Models\\User	7	auth_token	ffc4ccf7640305fada968abb166b4eab359daca206622ff3ff9a12ec1b22d22b	["*"]	2023-01-04 03:49:47	\N	2023-01-04 03:48:36	2023-01-04 03:49:47
87	App\\Models\\User	15	auth_token	28823d1ce0020bed8002db9f9a8e82b0b0814a3baf82d9836be9ec4e968b0ebf	["*"]	2023-01-01 14:51:34	\N	2023-01-01 14:51:10	2023-01-01 14:51:34
88	App\\Models\\User	3	auth_token	9b7576b38d87c15de1d7af873fd263ac82263900311b680d6a6ba5a82b9b77c5	["*"]	2023-01-02 08:53:47	\N	2023-01-02 08:53:47	2023-01-02 08:53:47
95	App\\Models\\User	8	auth_token	291b249a91fcd6424e2876d2fc59720223110f1f1dcfc251f08f7c937a45d568	["*"]	2023-01-02 09:13:48	\N	2023-01-02 09:13:20	2023-01-02 09:13:48
89	App\\Models\\User	7	auth_token	df1f9e165a32371b11011807f2388c31b7b6eb4173d9562472431048d32e69f7	["*"]	2023-01-02 08:54:09	\N	2023-01-02 08:54:02	2023-01-02 08:54:09
90	App\\Models\\User	7	auth_token	1f940c44b6a7ad92910d9f71670e73afbfceb131284c3e93a6e74171fa164e70	["*"]	2023-01-02 08:55:27	\N	2023-01-02 08:54:25	2023-01-02 08:55:27
91	App\\Models\\User	1	auth_token	257a567e617f9076b0f747570b35a462d32a0e4d2956a4252be2af9fabec6565	["*"]	2023-01-02 08:55:45	\N	2023-01-02 08:55:44	2023-01-02 08:55:45
92	App\\Models\\User	8	auth_token	c45602b27ab678bb2268c8dd1f0da1b42356a4cb9eb6f5f91eb0c55aec472675	["*"]	2023-01-02 09:00:21	\N	2023-01-02 08:59:43	2023-01-02 09:00:21
96	App\\Models\\User	3	auth_token	b1fc94f9f822959ea2b58f658f7cf59abfa53ae41c966dbbf25e229b516c3834	["*"]	2023-01-02 09:16:07	\N	2023-01-02 09:14:30	2023-01-02 09:16:07
93	App\\Models\\User	3	auth_token	ce20bebd5199eb3d8123803f4ee3f783ddcf12701699c93431c5fdc06da25159	["*"]	2023-01-02 09:00:52	\N	2023-01-02 09:00:36	2023-01-02 09:00:52
97	App\\Models\\User	1	auth_token	c1575ce17836c64bcb60c20249ba3d1dfe989a29dd1186a98f1671c10d3799fa	["*"]	2023-01-02 09:16:55	\N	2023-01-02 09:16:30	2023-01-02 09:16:55
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.users (id, name, email, email_verified_at, password, remember_token, created_at, updated_at, role) FROM stdin;
4	Hanif	hanif@gmail.com	2022-12-28 18:16:55	$2y$10$K7T0bL7fh6mJG.DkWOoPc.W7IdwvYvlYsgtj/7ea.Xz7TXozRJ36K	yLL4BiPFmm	2022-12-28 18:16:55	2022-12-28 18:16:55	1
8	Agung	agung@agung.com	2022-12-30 12:59:46	$2y$10$nJ0wxgU8GEL7M1OTt8nNLOulv5iv0R9nzlzGzv01v97f/wfDoLwGa	QQx52eEFCP	2022-12-30 12:59:47	2022-12-30 12:59:47	2
14	Isman	isman@isman.com	2022-12-30 13:35:10	$2y$10$XXqdH.U.32FpaZ5z0kos6ukZMjls7IX/4x3yb9MI2IUk3tKIN82xO	aylB4U70Ed	2022-12-30 13:35:10	2022-12-30 13:35:10	1
1	ADMIN	admin@gmail.com	2022-12-28 14:43:40	$2y$10$ssx3NPe7Ne7q3EFzUnnk2e3.Efuj6U5oIzZznBdDkXKj.48BZ0HMq	Ez4XV7b5p2	2022-12-28 14:43:40	2022-12-28 14:43:40	0
7	Tegar P	tegar@gmail.com	2022-12-29 01:46:47	$2y$10$XE0Bm7gcQsIXuj874Jce3eDEi0RPMzfJpF1.p7i.ASO.jUL6rDyHK	jAkkYXykns	2022-12-29 01:46:47	2023-01-01 11:38:05	2
3	Endji	endji@gmail.com	2022-12-28 15:19:58	$2y$10$30kv7JhwhN12wWthRjsYEu6xQfjxLPBAfjztmhBZwtiEbwg4Hey7G	kZ89HgAmC8	2022-12-28 15:19:58	2023-01-01 11:44:54	1
15	Abdul	abdul@gmail.com	2023-01-01 14:50:58	$2y$10$Gc1VzJJmJt4uTmkHujXt4OUAphmCk6UFL7uhtdCXAkOfUH2/hQCRe	Mnp5E5dOpn	2023-01-01 14:50:58	2023-01-01 14:50:58	2
16	Irfan	irfan@gmail.com	2023-01-02 09:07:17	$2y$10$dga0QskvlNmvmzOvXGvmduURGhd9prVUY65qeDWRlUtUvjYuNS5UG	BT3j9BM39Y	2023-01-02 09:07:17	2023-01-02 09:07:17	1
\.


--
-- Name: detail_pemesanan_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.detail_pemesanan_id_seq', 14, true);


--
-- Name: failed_jobs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.failed_jobs_id_seq', 1, false);


--
-- Name: guru_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.guru_id_seq', 4, true);


--
-- Name: harga_paket_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.harga_paket_id_seq', 8, true);


--
-- Name: kelas_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.kelas_id_seq', 6, true);


--
-- Name: mata_pelajaran_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.mata_pelajaran_id_seq', 8, true);


--
-- Name: migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.migrations_id_seq', 14, true);


--
-- Name: orang_tua_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.orang_tua_id_seq', 3, true);


--
-- Name: pemesanan_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.pemesanan_id_seq', 17, true);


--
-- Name: personal_access_tokens_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.personal_access_tokens_id_seq', 98, true);


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.users_id_seq', 16, true);


--
-- Name: detail_pemesanan detail_pemesanan_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.detail_pemesanan
    ADD CONSTRAINT detail_pemesanan_pkey PRIMARY KEY (id);


--
-- Name: failed_jobs failed_jobs_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.failed_jobs
    ADD CONSTRAINT failed_jobs_pkey PRIMARY KEY (id);


--
-- Name: failed_jobs failed_jobs_uuid_unique; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.failed_jobs
    ADD CONSTRAINT failed_jobs_uuid_unique UNIQUE (uuid);


--
-- Name: guru guru_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.guru
    ADD CONSTRAINT guru_pkey PRIMARY KEY (id);


--
-- Name: harga_paket harga_paket_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.harga_paket
    ADD CONSTRAINT harga_paket_pkey PRIMARY KEY (id);


--
-- Name: kelas kelas_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.kelas
    ADD CONSTRAINT kelas_pkey PRIMARY KEY (id);


--
-- Name: mata_pelajaran mata_pelajaran_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.mata_pelajaran
    ADD CONSTRAINT mata_pelajaran_pkey PRIMARY KEY (id);


--
-- Name: migrations migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.migrations
    ADD CONSTRAINT migrations_pkey PRIMARY KEY (id);


--
-- Name: orang_tua orang_tua_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.orang_tua
    ADD CONSTRAINT orang_tua_pkey PRIMARY KEY (id);


--
-- Name: pemesanan pemesanan_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.pemesanan
    ADD CONSTRAINT pemesanan_pkey PRIMARY KEY (id);


--
-- Name: personal_access_tokens personal_access_tokens_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.personal_access_tokens
    ADD CONSTRAINT personal_access_tokens_pkey PRIMARY KEY (id);


--
-- Name: personal_access_tokens personal_access_tokens_token_unique; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.personal_access_tokens
    ADD CONSTRAINT personal_access_tokens_token_unique UNIQUE (token);


--
-- Name: users users_email_unique; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_unique UNIQUE (email);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- Name: password_resets_email_index; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX password_resets_email_index ON public.password_resets USING btree (email);


--
-- Name: personal_access_tokens_tokenable_type_tokenable_id_index; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX personal_access_tokens_tokenable_type_tokenable_id_index ON public.personal_access_tokens USING btree (tokenable_type, tokenable_id);


--
-- PostgreSQL database dump complete
--

