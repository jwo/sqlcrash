--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: ar_internal_metadata; Type: TABLE; Schema: public; Owner: jwo; Tablespace: 
--

CREATE TABLE ar_internal_metadata (
    key character varying NOT NULL,
    value character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE ar_internal_metadata OWNER TO jwo;

--
-- Name: customers; Type: TABLE; Schema: public; Owner: jwo; Tablespace: 
--

CREATE TABLE customers (
    id integer NOT NULL,
    first_name character varying,
    last_name character varying,
    email character varying,
    password_digest character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE customers OWNER TO jwo;

--
-- Name: customers_id_seq; Type: SEQUENCE; Schema: public; Owner: jwo
--

CREATE SEQUENCE customers_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE customers_id_seq OWNER TO jwo;

--
-- Name: customers_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jwo
--

ALTER SEQUENCE customers_id_seq OWNED BY customers.id;


--
-- Name: order_items; Type: TABLE; Schema: public; Owner: jwo; Tablespace: 
--

CREATE TABLE order_items (
    id integer NOT NULL,
    product_id integer,
    order_id integer,
    price numeric,
    quantity integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE order_items OWNER TO jwo;

--
-- Name: order_items_id_seq; Type: SEQUENCE; Schema: public; Owner: jwo
--

CREATE SEQUENCE order_items_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE order_items_id_seq OWNER TO jwo;

--
-- Name: order_items_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jwo
--

ALTER SEQUENCE order_items_id_seq OWNED BY order_items.id;


--
-- Name: orders; Type: TABLE; Schema: public; Owner: jwo; Tablespace: 
--

CREATE TABLE orders (
    id integer NOT NULL,
    token character varying,
    customer_id integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE orders OWNER TO jwo;

--
-- Name: orders_id_seq; Type: SEQUENCE; Schema: public; Owner: jwo
--

CREATE SEQUENCE orders_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE orders_id_seq OWNER TO jwo;

--
-- Name: orders_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jwo
--

ALTER SEQUENCE orders_id_seq OWNED BY orders.id;


--
-- Name: products; Type: TABLE; Schema: public; Owner: jwo; Tablespace: 
--

CREATE TABLE products (
    id integer NOT NULL,
    name character varying,
    inventory integer,
    description text,
    active boolean,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE products OWNER TO jwo;

--
-- Name: products_id_seq; Type: SEQUENCE; Schema: public; Owner: jwo
--

CREATE SEQUENCE products_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE products_id_seq OWNER TO jwo;

--
-- Name: products_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jwo
--

ALTER SEQUENCE products_id_seq OWNED BY products.id;


--
-- Name: schema_migrations; Type: TABLE; Schema: public; Owner: jwo; Tablespace: 
--

CREATE TABLE schema_migrations (
    version character varying NOT NULL
);


ALTER TABLE schema_migrations OWNER TO jwo;

--
-- Name: id; Type: DEFAULT; Schema: public; Owner: jwo
--

ALTER TABLE ONLY customers ALTER COLUMN id SET DEFAULT nextval('customers_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: jwo
--

ALTER TABLE ONLY order_items ALTER COLUMN id SET DEFAULT nextval('order_items_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: jwo
--

ALTER TABLE ONLY orders ALTER COLUMN id SET DEFAULT nextval('orders_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: jwo
--

ALTER TABLE ONLY products ALTER COLUMN id SET DEFAULT nextval('products_id_seq'::regclass);


--
-- Data for Name: ar_internal_metadata; Type: TABLE DATA; Schema: public; Owner: jwo
--

COPY ar_internal_metadata (key, value, created_at, updated_at) FROM stdin;
environment	development	2016-05-19 15:21:11.698427	2016-05-19 15:21:11.698427
\.


--
-- Data for Name: customers; Type: TABLE DATA; Schema: public; Owner: jwo
--

COPY customers (id, first_name, last_name, email, password_digest, created_at, updated_at) FROM stdin;
1	Octavia	Boehm	yoshiko@cartwrightshanahan.io	$2a$10$/z7bWGxx.75yI/Tmn1.o4u4rAIRIyaOwmG0QKA6YwdSApg5Ubtz52	2016-05-19 15:29:35.575842	2016-05-19 15:29:35.575842
2	Leta	Nikolaus	roger_becker@toy.net	$2a$10$D8ISjadNfrapH99TzSDPKuOQnq5on8mmzKzpE3xHAicCS2idMrMga	2016-05-19 15:29:35.64943	2016-05-19 15:29:35.64943
3	Ivah	Shanahan	alanna.hahn@schiller.co	$2a$10$xgu5S0eo07mT5IpWKFNJ8eDYaPYLWN5z6ssPdTPrtyj3pKliemGYW	2016-05-19 15:29:35.728561	2016-05-19 15:29:35.728561
4	Jerald	Green	hanna@turnerconnelly.name	$2a$10$SsxE2RQsGf0GjEC5Z6ny1umtulAtBGhCGKBn6L.OTZB0x/3CnkIUC	2016-05-19 15:29:35.803029	2016-05-19 15:29:35.803029
5	Isabell	Bernier	brisa_hermann@fadel.name	$2a$10$61jodFGsL.1r/2ibBxRXoeqA5g84wSqoXdXRryEpO7w7uCni5L0n6	2016-05-19 15:29:35.869584	2016-05-19 15:29:35.869584
6	Dee	Moore	valentine_kerluke@collins.org	$2a$10$oGQUJUpl9Gt44VYAtQP.ke7/KHwB7HMaxrExzpeTl0V4fYSPiY6pe	2016-05-19 15:29:35.94815	2016-05-19 15:29:35.94815
7	Mallory	Konopelski	joey_leuschke@satterfield.biz	$2a$10$MzrmTSjVySeKmOCB8.Esw.nA3LAga0ljuZleyESsUao3P312eIBjG	2016-05-19 15:29:36.018644	2016-05-19 15:29:36.018644
8	Russ	Nienow	kiera@ferrydenesik.org	$2a$10$6PsSNSYa36auDBou65IGAOidhnYaIlA2jwUpjkRYcGHEhZF/n2wCC	2016-05-19 15:29:36.090905	2016-05-19 15:29:36.090905
9	Lindsay	Gusikowski	jerod@hayes.co	$2a$10$8Ld84j57eMxAzNhiF8EWm.WcmnhqJbTv3hsghxQNHZiXMJdEhbh.m	2016-05-19 15:29:36.160806	2016-05-19 15:29:36.160806
10	Dejon	Kshlerin	rosalee@kuhlman.info	$2a$10$y3fjRGtW77mss//fj3Nqa.tMts9seLjiyEBchSkTqZLR4x5OM3/P.	2016-05-19 15:29:36.235943	2016-05-19 15:29:36.235943
11	Willy	Heathcote	aric.hegmann@kihngibson.org	$2a$10$C4hB.ZNlJxJSsvLNt3K4VummdN8ifxt148F4JYj5AVaeBT.xdZngS	2016-05-19 15:29:36.309018	2016-05-19 15:29:36.309018
12	Leonora	Nader	dee@satterfield.io	$2a$10$GuMr88Ucj3mR654amKZAOeIdowRBkTaCY/xzqyO0MomA4XC7AErxS	2016-05-19 15:29:36.3847	2016-05-19 15:29:36.3847
13	Alanis	Kerluke	rosario.dicki@mayer.name	$2a$10$3EJbU7NgMETvqRthSeaRl.2KSSle4oOuVqOvDm9ccSmFAQNhuZC/m	2016-05-19 15:29:36.45698	2016-05-19 15:29:36.45698
14	Kaylee	Ernser	bennett.hamill@goyette.biz	$2a$10$k3xiuIYIsty1Bsg4kryS/uLxbQ8Klorlg5lbe.6GAONE7.BV7YF/W	2016-05-19 15:29:36.526906	2016-05-19 15:29:36.526906
15	Cielo	Kuphal	donnie@rathmacgyver.org	$2a$10$HgblLamsSQHppKssaNCt5uzfxZXZrjs4arbA2f16zQnn3GW2b9mr.	2016-05-19 15:29:36.59992	2016-05-19 15:29:36.59992
16	Oran	Davis	jammie_little@connellybergnaum.name	$2a$10$TOyP/KEgtBF6OuF71sLmae74w6VHA2hS1ZrBQzr4ZPVE1MaJHveLi	2016-05-19 15:29:36.666425	2016-05-19 15:29:36.666425
17	Guillermo	Blick	kenny@bernhard.io	$2a$10$qR1eI7XwcHh0FZrUeVg6TeYdl6JZeca5dLtwQ5PnSytOFr1c5jlO.	2016-05-19 15:29:36.737388	2016-05-19 15:29:36.737388
18	Reva	Glover	christop@okon.com	$2a$10$Qn6IJz9MMSSjoGQsRCPWFu1RvZVycdv5jNwwKMJbKeBymmE2Ybg6.	2016-05-19 15:29:36.808291	2016-05-19 15:29:36.808291
19	Laura	Lind	kayleigh@gorczany.co	$2a$10$kbulZftxNDk0iT6laB4sdecd3tm1YS3br/zqICnD5xDNIaacfqZ4u	2016-05-19 15:29:36.888276	2016-05-19 15:29:36.888276
20	Kaley	Schinner	carmella@treutel.io	$2a$10$TPU0gF8bKGnWyygSDRqrQ.sWmWVHMTsdlbl4R7TdboiN7fJz0VTFK	2016-05-19 15:29:36.960043	2016-05-19 15:29:36.960043
21	Carlee	Stokes	gabriel_bogan@corkery.co	$2a$10$Og9e26Vf3UxaQHnX2PxRJOyfiYROetuz0eZCoYHpkZf8i35C29vqy	2016-05-19 15:29:37.027941	2016-05-19 15:29:37.027941
22	Clovis	Mante	cornelius@mitchell.net	$2a$10$4Fi5dV/Z9cc7T2VKsp0DCOOssCaP6s8gSw9eoxJaQlKmHMGoIQZy.	2016-05-19 15:29:37.111085	2016-05-19 15:29:37.111085
23	Breana	Berge	leopold@emmerichweber.biz	$2a$10$GQ5GwT4yx2kVxBuVUmwcyeyFRjEgmGuN/IO.YvYvnbbseEqSvcwwm	2016-05-19 15:29:37.19469	2016-05-19 15:29:37.19469
24	Janick	Mills	carlos.wisoky@labadie.org	$2a$10$1urbBvX83lJ501UTqiMIw.Lh2L5jyTLbl8dczqN/kzBvQNgc8xfWq	2016-05-19 15:29:37.269805	2016-05-19 15:29:37.269805
25	Alexandra	Klein	dena@keler.info	$2a$10$AUPw0daI7.iin6eG.P1Aeu5RPhHYoy30SNy/DGcZ4swaDHu11HPqm	2016-05-19 15:29:37.34517	2016-05-19 15:29:37.34517
26	Delmer	Dickinson	mitchell@cormier.biz	$2a$10$73KfDVbI8CT/JMqmf6qBVuNbXHhBSVNffIlmVfc.qYn/Ptol72dPK	2016-05-19 15:29:37.421435	2016-05-19 15:29:37.421435
27	Garland	Nienow	nathan_jones@herzog.co	$2a$10$6vvxRfnrtx2KNZAcYloUU.7rkrOSi4g.IhubmKHzQ1kjgwQOx/IcW	2016-05-19 15:29:37.506021	2016-05-19 15:29:37.506021
28	Hallie	Strosin	marian.orn@block.net	$2a$10$IiiV/BWe46N75RpV0hjMG.cFSPSzBZqwf1uMu8StFUxZ.4zl9PgWi	2016-05-19 15:29:37.595433	2016-05-19 15:29:37.595433
29	Melvin	Conroy	linda.effertz@witting.info	$2a$10$ROmk6Ugv2uFJ1vqwjxCeu.ucLZsNYWL89nWBaXRrAiFe.X4PWYGZO	2016-05-19 15:29:37.674055	2016-05-19 15:29:37.674055
30	Ofelia	Skiles	nathan@blick.org	$2a$10$rWSVrAm4qpnED6jdltHXbelJTlbEdBfTk7oHn6sn8ktKTZ/tJt/te	2016-05-19 15:29:37.746864	2016-05-19 15:29:37.746864
\.


--
-- Name: customers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: jwo
--

SELECT pg_catalog.setval('customers_id_seq', 30, true);


--
-- Data for Name: order_items; Type: TABLE DATA; Schema: public; Owner: jwo
--

COPY order_items (id, product_id, order_id, price, quantity, created_at, updated_at) FROM stdin;
1	6	1	81.98	5	2016-05-19 15:29:37.966038	2016-05-19 15:29:37.966038
2	14	2	98.57	4	2016-05-19 15:29:37.997444	2016-05-19 15:29:37.997444
3	36	3	54.59	1	2016-05-19 15:29:38.01331	2016-05-19 15:29:38.01331
4	43	4	22.95	2	2016-05-19 15:29:38.023768	2016-05-19 15:29:38.023768
5	43	4	50.0	3	2016-05-19 15:29:38.027048	2016-05-19 15:29:38.027048
6	50	5	63.41	5	2016-05-19 15:29:38.049174	2016-05-19 15:29:38.049174
7	50	5	42.65	5	2016-05-19 15:29:38.052673	2016-05-19 15:29:38.052673
8	50	5	5.22	7	2016-05-19 15:29:38.055686	2016-05-19 15:29:38.055686
9	49	6	43.16	2	2016-05-19 15:29:38.064615	2016-05-19 15:29:38.064615
10	49	6	8.59	8	2016-05-19 15:29:38.066701	2016-05-19 15:29:38.066701
11	42	7	11.19	6	2016-05-19 15:29:38.073276	2016-05-19 15:29:38.073276
12	42	7	43.45	6	2016-05-19 15:29:38.075297	2016-05-19 15:29:38.075297
13	42	7	60.74	4	2016-05-19 15:29:38.077304	2016-05-19 15:29:38.077304
14	23	8	82.79	4	2016-05-19 15:29:38.084297	2016-05-19 15:29:38.084297
15	23	8	66.59	5	2016-05-19 15:29:38.090956	2016-05-19 15:29:38.090956
16	23	8	98.42	5	2016-05-19 15:29:38.093817	2016-05-19 15:29:38.093817
17	45	9	18.71	5	2016-05-19 15:29:38.100769	2016-05-19 15:29:38.100769
18	45	9	97.33	9	2016-05-19 15:29:38.10304	2016-05-19 15:29:38.10304
19	45	9	10.82	9	2016-05-19 15:29:38.105071	2016-05-19 15:29:38.105071
20	28	10	91.81	10	2016-05-19 15:29:38.113464	2016-05-19 15:29:38.113464
21	28	10	47.1	10	2016-05-19 15:29:38.11556	2016-05-19 15:29:38.11556
22	15	11	63.04	2	2016-05-19 15:29:38.122474	2016-05-19 15:29:38.122474
23	30	12	19.52	6	2016-05-19 15:29:38.131902	2016-05-19 15:29:38.131902
24	30	12	48.31	10	2016-05-19 15:29:38.134186	2016-05-19 15:29:38.134186
25	30	12	95.51	4	2016-05-19 15:29:38.13634	2016-05-19 15:29:38.13634
26	48	13	47.78	5	2016-05-19 15:29:38.144904	2016-05-19 15:29:38.144904
27	48	13	26.5	8	2016-05-19 15:29:38.147748	2016-05-19 15:29:38.147748
28	48	13	25.16	5	2016-05-19 15:29:38.150415	2016-05-19 15:29:38.150415
29	21	14	37.9	8	2016-05-19 15:29:38.158464	2016-05-19 15:29:38.158464
30	2	15	22.3	2	2016-05-19 15:29:38.165628	2016-05-19 15:29:38.165628
31	2	15	72.88	4	2016-05-19 15:29:38.167649	2016-05-19 15:29:38.167649
32	2	15	95.83	3	2016-05-19 15:29:38.169534	2016-05-19 15:29:38.169534
33	49	16	20.15	2	2016-05-19 15:29:38.176558	2016-05-19 15:29:38.176558
34	49	16	76.88	9	2016-05-19 15:29:38.17891	2016-05-19 15:29:38.17891
35	49	16	42.63	4	2016-05-19 15:29:38.181009	2016-05-19 15:29:38.181009
36	29	17	0.06	5	2016-05-19 15:29:38.187917	2016-05-19 15:29:38.187917
37	25	18	17.53	9	2016-05-19 15:29:38.196135	2016-05-19 15:29:38.196135
38	21	19	0.72	2	2016-05-19 15:29:38.205102	2016-05-19 15:29:38.205102
39	21	19	19.94	1	2016-05-19 15:29:38.208798	2016-05-19 15:29:38.208798
40	1	20	11.3	9	2016-05-19 15:29:38.218154	2016-05-19 15:29:38.218154
41	1	20	18.55	1	2016-05-19 15:29:38.22059	2016-05-19 15:29:38.22059
42	1	20	36.51	8	2016-05-19 15:29:38.222866	2016-05-19 15:29:38.222866
\.


--
-- Name: order_items_id_seq; Type: SEQUENCE SET; Schema: public; Owner: jwo
--

SELECT pg_catalog.setval('order_items_id_seq', 42, true);


--
-- Data for Name: orders; Type: TABLE DATA; Schema: public; Owner: jwo
--

COPY orders (id, token, customer_id, created_at, updated_at) FROM stdin;
1	kYxpEDmL9b9GdbecHDHfoqNM	8	2016-05-19 15:29:37.9332	2016-05-19 15:29:37.9332
2	KEVor2WRBrV7HqCwb2Vt9wQM	5	2016-05-19 15:29:37.986871	2016-05-19 15:29:37.986871
3	rECephwPVbzFKhAxucrsKCpr	5	2016-05-19 15:29:38.008935	2016-05-19 15:29:38.008935
4	D9RTpnSzGkumafPU176W8HC4	6	2016-05-19 15:29:38.019888	2016-05-19 15:29:38.019888
5	jXJEshygSr9DCa81zBJCB8aq	29	2016-05-19 15:29:38.039251	2016-05-19 15:29:38.039251
6	cYB5MG8QeEKQzusajVQuoiE3	18	2016-05-19 15:29:38.061472	2016-05-19 15:29:38.061472
7	Lm8xATdp4iyuWEcrwcRpfriU	28	2016-05-19 15:29:38.070567	2016-05-19 15:29:38.070567
8	cHm79cBS8w7aeDVeRnU2xdDR	1	2016-05-19 15:29:38.081623	2016-05-19 15:29:38.081623
9	NY8pQ3aAwJx42FX3bAdCHNd1	6	2016-05-19 15:29:38.097721	2016-05-19 15:29:38.097721
10	WPDJBbwDJxoQnaiFcDWd6Bi3	1	2016-05-19 15:29:38.11046	2016-05-19 15:29:38.11046
11	aGVbyiQu54e6ptgWt1zPYKM8	12	2016-05-19 15:29:38.119151	2016-05-19 15:29:38.119151
12	deADRRstEG4meQBkFPvXkqjV	3	2016-05-19 15:29:38.128593	2016-05-19 15:29:38.128593
13	ncmpKnWGXRCSNJDU4gtBYQw9	8	2016-05-19 15:29:38.141054	2016-05-19 15:29:38.141054
14	MsMJ3r5YFNvrKykdG7dRhGAa	23	2016-05-19 15:29:38.155177	2016-05-19 15:29:38.155177
15	KgTCYPxtFpEkfGsjCtGouGKL	11	2016-05-19 15:29:38.162853	2016-05-19 15:29:38.162853
16	fVK53GDPCUw5pHLDXncLogU6	20	2016-05-19 15:29:38.173271	2016-05-19 15:29:38.173271
17	ZKMxLPH7RQMVvT31AkS1A7Zg	3	2016-05-19 15:29:38.185258	2016-05-19 15:29:38.185258
18	hR6aEg6GNXT14YzLzGWc3SG1	5	2016-05-19 15:29:38.192733	2016-05-19 15:29:38.192733
19	CUzUoMxYqf8u4Bcriu18ML2W	16	2016-05-19 15:29:38.201451	2016-05-19 15:29:38.201451
20	TSwuUD4LYmv8cC2GqgRemQzY	17	2016-05-19 15:29:38.214698	2016-05-19 15:29:38.214698
\.


--
-- Name: orders_id_seq; Type: SEQUENCE SET; Schema: public; Owner: jwo
--

SELECT pg_catalog.setval('orders_id_seq', 20, true);


--
-- Data for Name: products; Type: TABLE DATA; Schema: public; Owner: jwo
--

COPY products (id, name, inventory, description, active, created_at, updated_at) FROM stdin;
1	Small Plastic Plate	26	You can't navigate the bus without generating the open-source USB panel!	t	2016-05-19 15:29:37.760853	2016-05-19 15:29:37.760853
2	Synergistic Iron Pants	157	We need to calculate the digital TCP capacitor!	t	2016-05-19 15:29:37.770786	2016-05-19 15:29:37.770786
3	Aerodynamic Concrete Chair	160	Try to program the AGP port, maybe it will back up the wireless card!	f	2016-05-19 15:29:37.779105	2016-05-19 15:29:37.779105
4	Ergonomic Steel Car	46	generating the array won't do anything, we need to program the bluetooth CSS hard drive!	f	2016-05-19 15:29:37.782933	2016-05-19 15:29:37.782933
5	Incredible Iron Coat	156	If we program the array, we can get to the XML array through the solid state PNG driver!	t	2016-05-19 15:29:37.786319	2016-05-19 15:29:37.786319
6	Aerodynamic Bronze Wallet	6	The XML alarm is down, reboot the digital pixel so we can reboot the HDD driver!	t	2016-05-19 15:29:37.789834	2016-05-19 15:29:37.789834
7	Fantastic Aluminum Bottle	195	We need to index the multi-byte EXE pixel!	f	2016-05-19 15:29:37.792995	2016-05-19 15:29:37.792995
8	Small Wool Car	200	generating the microchip won't do anything, we need to program the solid state GB circuit!	t	2016-05-19 15:29:37.7965	2016-05-19 15:29:37.7965
9	Aerodynamic Steel Computer	86	I'll index the 1080p SMTP monitor, that should port the PNG alarm!	f	2016-05-19 15:29:37.799808	2016-05-19 15:29:37.799808
10	Intelligent Bronze Lamp	138	You can't input the microchip without calculating the wireless PCI driver!	f	2016-05-19 15:29:37.802348	2016-05-19 15:29:37.802348
11	Gorgeous Paper Wallet	124	Try to quantify the SSL microchip, maybe it will override the virtual application!	f	2016-05-19 15:29:37.80473	2016-05-19 15:29:37.80473
12	Heavy Duty Leather Knife	143	The SMS feed is down, quantify the redundant transmitter so we can override the HDD pixel!	t	2016-05-19 15:29:37.80727	2016-05-19 15:29:37.80727
13	Awesome Silk Keyboard	58	I'll copy the virtual SMS feed, that should sensor the SDD panel!	t	2016-05-19 15:29:37.809557	2016-05-19 15:29:37.809557
14	Ergonomic Granite Clock	48	Try to synthesize the XSS program, maybe it will calculate the cross-platform protocol!	t	2016-05-19 15:29:37.81181	2016-05-19 15:29:37.81181
15	Intelligent Iron Computer	89	Try to input the THX panel, maybe it will copy the online microchip!	t	2016-05-19 15:29:37.818681	2016-05-19 15:29:37.818681
16	Awesome Granite Bench	112	Try to parse the SMS interface, maybe it will connect the primary bus!	f	2016-05-19 15:29:37.821764	2016-05-19 15:29:37.821764
17	Mediocre Steel Coat	139	Try to synthesize the SCSI system, maybe it will reboot the wireless driver!	f	2016-05-19 15:29:37.825277	2016-05-19 15:29:37.825277
18	Durable Leather Keyboard	53	The COM matrix is down, parse the primary interface so we can calculate the COM monitor!	t	2016-05-19 15:29:37.82769	2016-05-19 15:29:37.82769
19	Synergistic Linen Knife	68	I'll generate the mobile AI firewall, that should hard drive the GB monitor!	f	2016-05-19 15:29:37.829909	2016-05-19 15:29:37.829909
20	Ergonomic Silk Chair	161	If we navigate the monitor, we can get to the RAM circuit through the bluetooth SSL interface!	t	2016-05-19 15:29:37.832908	2016-05-19 15:29:37.832908
21	Mediocre Steel Bottle	153	The COM transmitter is down, generate the digital application so we can transmit the HDD feed!	t	2016-05-19 15:29:37.835971	2016-05-19 15:29:37.835971
22	Sleek Paper Chair	143	programming the capacitor won't do anything, we need to reboot the primary TCP interface!	t	2016-05-19 15:29:37.838478	2016-05-19 15:29:37.838478
23	Lightweight Marble Bottle	126	We need to reboot the cross-platform THX array!	t	2016-05-19 15:29:37.841192	2016-05-19 15:29:37.841192
24	Enormous Copper Hat	27	The JSON interface is down, quantify the online program so we can connect the RSS pixel!	t	2016-05-19 15:29:37.843577	2016-05-19 15:29:37.843577
25	Sleek Rubber Pants	199	The XSS capacitor is down, back up the redundant firewall so we can input the SAS capacitor!	f	2016-05-19 15:29:37.84568	2016-05-19 15:29:37.84568
26	Incredible Silk Gloves	130	If we input the matrix, we can get to the SCSI panel through the mobile PCI alarm!	t	2016-05-19 15:29:37.847824	2016-05-19 15:29:37.847824
27	Enormous Concrete Coat	83	If we generate the program, we can get to the HDD pixel through the multi-byte AI firewall!	f	2016-05-19 15:29:37.849882	2016-05-19 15:29:37.849882
28	Enormous Rubber Shirt	39	We need to navigate the open-source CSS bus!	t	2016-05-19 15:29:37.852012	2016-05-19 15:29:37.852012
29	Synergistic Paper Chair	145	If we synthesize the system, we can get to the SAS program through the optical AGP bus!	t	2016-05-19 15:29:37.854361	2016-05-19 15:29:37.854361
30	Synergistic Leather Lamp	123	If we parse the alarm, we can get to the SCSI application through the online TCP bus!	f	2016-05-19 15:29:37.856914	2016-05-19 15:29:37.856914
31	Ergonomic Silk Plate	151	calculating the panel won't do anything, we need to program the solid state COM matrix!	t	2016-05-19 15:29:37.859663	2016-05-19 15:29:37.859663
32	Heavy Duty Cotton Table	144	The SCSI array is down, reboot the haptic port so we can copy the SMS system!	t	2016-05-19 15:29:37.862177	2016-05-19 15:29:37.862177
33	Synergistic Cotton Coat	57	Try to calculate the IB matrix, maybe it will copy the optical firewall!	f	2016-05-19 15:29:37.8645	2016-05-19 15:29:37.8645
34	Enormous Steel Clock	129	backing up the hard drive won't do anything, we need to hack the optical AI application!	t	2016-05-19 15:29:37.867031	2016-05-19 15:29:37.867031
35	Fantastic Leather Coat	118	The PNG array is down, program the neural panel so we can reboot the HTTP feed!	t	2016-05-19 15:29:37.869052	2016-05-19 15:29:37.869052
36	Awesome Wool Pants	136	The RAM program is down, program the bluetooth capacitor so we can override the HTTP driver!	t	2016-05-19 15:29:37.87132	2016-05-19 15:29:37.87132
37	Sleek Copper Computer	93	You can't index the alarm without backing up the back-end AI bus!	t	2016-05-19 15:29:37.874311	2016-05-19 15:29:37.874311
38	Small Bronze Bench	57	The ADP circuit is down, copy the online driver so we can copy the AGP application!	t	2016-05-19 15:29:37.877055	2016-05-19 15:29:37.877055
39	Small Marble Watch	157	backing up the application won't do anything, we need to bypass the optical SAS circuit!	t	2016-05-19 15:29:37.87945	2016-05-19 15:29:37.87945
40	Small Concrete Knife	195	The JBOD card is down, parse the open-source hard drive so we can compress the TCP bandwidth!	f	2016-05-19 15:29:37.881704	2016-05-19 15:29:37.881704
41	Durable Rubber Keyboard	82	If we back up the pixel, we can get to the FTP firewall through the bluetooth JSON bandwidth!	t	2016-05-19 15:29:37.883886	2016-05-19 15:29:37.883886
42	Awesome Cotton Car	91	quantifying the port won't do anything, we need to compress the online EXE card!	f	2016-05-19 15:29:37.885915	2016-05-19 15:29:37.885915
43	Small Aluminum Lamp	82	I'll override the optical USB monitor, that should capacitor the SQL circuit!	f	2016-05-19 15:29:37.888313	2016-05-19 15:29:37.888313
44	Rustic Concrete Table	4	If we parse the matrix, we can get to the HTTP interface through the 1080p FTP circuit!	t	2016-05-19 15:29:37.891557	2016-05-19 15:29:37.891557
45	Awesome Wool Chair	29	Try to synthesize the USB system, maybe it will generate the back-end microchip!	f	2016-05-19 15:29:37.894024	2016-05-19 15:29:37.894024
46	Sleek Leather Plate	176	Try to calculate the PCI matrix, maybe it will synthesize the auxiliary protocol!	t	2016-05-19 15:29:37.896412	2016-05-19 15:29:37.896412
47	Practical Granite Bottle	26	If we input the feed, we can get to the HDD program through the auxiliary SMTP microchip!	f	2016-05-19 15:29:37.899569	2016-05-19 15:29:37.899569
48	Fantastic Cotton Bottle	117	You can't compress the interface without bypassing the digital EXE matrix!	t	2016-05-19 15:29:37.902313	2016-05-19 15:29:37.902313
49	Intelligent Aluminum Knife	48	I'll program the online IB capacitor, that should application the PNG protocol!	f	2016-05-19 15:29:37.904868	2016-05-19 15:29:37.904868
50	Sleek Linen Watch	160	I'll compress the 1080p RSS protocol, that should pixel the SAS bus!	f	2016-05-19 15:29:37.907421	2016-05-19 15:29:37.907421
\.


--
-- Name: products_id_seq; Type: SEQUENCE SET; Schema: public; Owner: jwo
--

SELECT pg_catalog.setval('products_id_seq', 50, true);


--
-- Data for Name: schema_migrations; Type: TABLE DATA; Schema: public; Owner: jwo
--

COPY schema_migrations (version) FROM stdin;
20160519151647
20160519151754
20160519151900
20160519151937
\.


--
-- Name: ar_internal_metadata_pkey; Type: CONSTRAINT; Schema: public; Owner: jwo; Tablespace: 
--

ALTER TABLE ONLY ar_internal_metadata
    ADD CONSTRAINT ar_internal_metadata_pkey PRIMARY KEY (key);


--
-- Name: customers_pkey; Type: CONSTRAINT; Schema: public; Owner: jwo; Tablespace: 
--

ALTER TABLE ONLY customers
    ADD CONSTRAINT customers_pkey PRIMARY KEY (id);


--
-- Name: order_items_pkey; Type: CONSTRAINT; Schema: public; Owner: jwo; Tablespace: 
--

ALTER TABLE ONLY order_items
    ADD CONSTRAINT order_items_pkey PRIMARY KEY (id);


--
-- Name: orders_pkey; Type: CONSTRAINT; Schema: public; Owner: jwo; Tablespace: 
--

ALTER TABLE ONLY orders
    ADD CONSTRAINT orders_pkey PRIMARY KEY (id);


--
-- Name: products_pkey; Type: CONSTRAINT; Schema: public; Owner: jwo; Tablespace: 
--

ALTER TABLE ONLY products
    ADD CONSTRAINT products_pkey PRIMARY KEY (id);


--
-- Name: schema_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: jwo; Tablespace: 
--

ALTER TABLE ONLY schema_migrations
    ADD CONSTRAINT schema_migrations_pkey PRIMARY KEY (version);


--
-- Name: index_order_items_on_order_id; Type: INDEX; Schema: public; Owner: jwo; Tablespace: 
--

CREATE INDEX index_order_items_on_order_id ON order_items USING btree (order_id);


--
-- Name: index_order_items_on_product_id; Type: INDEX; Schema: public; Owner: jwo; Tablespace: 
--

CREATE INDEX index_order_items_on_product_id ON order_items USING btree (product_id);


--
-- Name: index_orders_on_customer_id; Type: INDEX; Schema: public; Owner: jwo; Tablespace: 
--

CREATE INDEX index_orders_on_customer_id ON orders USING btree (customer_id);


--
-- Name: index_orders_on_token; Type: INDEX; Schema: public; Owner: jwo; Tablespace: 
--

CREATE UNIQUE INDEX index_orders_on_token ON orders USING btree (token);


--
-- Name: fk_rails_3dad120da9; Type: FK CONSTRAINT; Schema: public; Owner: jwo
--

ALTER TABLE ONLY orders
    ADD CONSTRAINT fk_rails_3dad120da9 FOREIGN KEY (customer_id) REFERENCES customers(id);


--
-- Name: fk_rails_e3cb28f071; Type: FK CONSTRAINT; Schema: public; Owner: jwo
--

ALTER TABLE ONLY order_items
    ADD CONSTRAINT fk_rails_e3cb28f071 FOREIGN KEY (order_id) REFERENCES orders(id);


--
-- Name: fk_rails_f1a29ddd47; Type: FK CONSTRAINT; Schema: public; Owner: jwo
--

ALTER TABLE ONLY order_items
    ADD CONSTRAINT fk_rails_f1a29ddd47 FOREIGN KEY (product_id) REFERENCES products(id);


--
-- Name: public; Type: ACL; Schema: -; Owner: jwo
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM jwo;
GRANT ALL ON SCHEMA public TO jwo;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--

