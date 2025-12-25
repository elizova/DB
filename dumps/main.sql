--
-- PostgreSQL database dump
--

-- Dumped from database version 16.9 (Debian 16.9-1.pgdg120+1)
-- Dumped by pg_dump version 16.9 (Debian 16.9-1.pgdg120+1)

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
-- Name: alembic_version; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.alembic_version (
    version_num character varying(32) NOT NULL
);


ALTER TABLE public.alembic_version OWNER TO postgres;

--
-- Name: photo; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.photo (
    id integer NOT NULL,
    product_id integer,
    url text
);


ALTER TABLE public.photo OWNER TO postgres;

--
-- Name: photo_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.photo_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.photo_id_seq OWNER TO postgres;

--
-- Name: photo_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.photo_id_seq OWNED BY public.photo.id;


--
-- Name: product; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.product (
    id integer NOT NULL,
    name text,
    url text
);


ALTER TABLE public.product OWNER TO postgres;

--
-- Name: product_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.product_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.product_id_seq OWNER TO postgres;

--
-- Name: product_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.product_id_seq OWNED BY public.product.id;


--
-- Name: property; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.property (
    id integer NOT NULL,
    product_id integer,
    cost double precision,
    weight text,
    work_time text,
    charge_time text,
    lenght_of_work text,
    battery_capacity text,
    voltage text,
    model text,
    material text,
    power text,
    motor text,
    manufactured text,
    warranty text,
    rpm text
);


ALTER TABLE public.property OWNER TO postgres;

--
-- Name: property_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.property_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.property_id_seq OWNER TO postgres;

--
-- Name: property_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.property_id_seq OWNED BY public.property.id;


--
-- Name: photo id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.photo ALTER COLUMN id SET DEFAULT nextval('public.photo_id_seq'::regclass);


--
-- Name: product id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.product ALTER COLUMN id SET DEFAULT nextval('public.product_id_seq'::regclass);


--
-- Name: property id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.property ALTER COLUMN id SET DEFAULT nextval('public.property_id_seq'::regclass);


--
-- Data for Name: alembic_version; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.alembic_version (version_num) FROM stdin;
e4298c5d6e6a
\.


--
-- Data for Name: photo; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.photo (id, product_id, url) FROM stdin;
59	59	https://i.siteapi.org/aHr0--Me-dR8jp2N0A83wQ_uhng=/fit-in/1024x768/center/top/s.siteapi.org/a6596905b2ff451.ru/img/38pbyelofjmskw0scs48ocws8ww4ks
60	60	https://i.siteapi.org/ryIjn1Kqfhh0Vx_Dz3LnE42onik=/fit-in/1024x768/center/top/s.siteapi.org/a6596905b2ff451.ru/img/syjfommsn3kscow4o88ww0cw4ko8kw
61	61	https://i.siteapi.org/c1lhW_nLnfjgiOwQZyshDVxgXUU=/fit-in/1024x768/center/top/s.siteapi.org/a6596905b2ff451.ru/img/40z70xgmhxogo0wgwc44g8sw40840o
62	62	https://i.siteapi.org/wlKN1gXuGXErBJWj-WhTnIONlxw=/fit-in/1024x768/center/top/s.siteapi.org/a6596905b2ff451.ru/img/3edzygydcx8gwowo00g80c8gkwco00
63	63	https://i.siteapi.org/p5IBCrCEq4CTByGQoLK8J6r5qKw=/fit-in/1024x768/center/top/s.siteapi.org/a6596905b2ff451.ru/img/m8cwg9i383kwwokgocs4s0cowo48gc
64	64	https://i.siteapi.org/-eo4wKte0qVOjvpOCsqWEDv-K_0=/fit-in/1024x768/center/top/s.siteapi.org/a6596905b2ff451.ru/img/re1ou1t20c0o4ok8wkogooow8co448
65	65	https://i.siteapi.org/9xDl-HrDYr9a_OaUBOdpR8rm738=/fit-in/1024x768/center/top/s.siteapi.org/a6596905b2ff451.ru/img/2gpoc3ogzaww0gkokko08cw8skkwwc
66	66	https://i.siteapi.org/i8ogqq1hnZwHFV7L7cSf2s74L4I=/fit-in/1024x768/center/top/s.siteapi.org/a6596905b2ff451.ru/img/qin41zumfg0oswoo4cks0ckgw4wgcc
67	67	https://i.siteapi.org/qfCgiBAVSAMmVwUmSnyVLfFkOcs=/fit-in/1024x768/center/top/s.siteapi.org/a6596905b2ff451.ru/img/npww4hgxgkggs8cos4oksgog0ckokg
68	68	https://28opt.ru/images/products/tatu-mashinka-dlja-hudozhestvennoj-tatuirovki-ez-portex-generation-p2s-black-c06.jpg?1754278546
69	69	https://28opt.ru/images/products/rotornaja-tatu-mashinka-ez-filter-v2-plus-silver-45a.jpg?1761289400
70	70	https://28opt.ru/images/products/p4-se-matte-black-baf.jpg?1710913794
71	71	https://28opt.ru/images/products/rotornaja-tatu-mashinka-ez-filter-v2-plus-bronze-dde.jpg?1761289417
72	72	https://28opt.ru/images/products/rotornaja-tatu-mashinka-ez-circle-fed.jpg?1734088991
73	73	https://28opt.ru/images/products/rotornaja-tatu-mashinka-dlja-hudozhestvennoj-tatuirovki-ez-p2-pen-black-1-1c8.jpg?1710913794
74	74	https://fenix-tattoo.ru/upload/iblock/5d7/5cuwpo1okg9wkav4x1c6pe8h1l2ybckk.gif
75	75	https://fenix-tattoo.ru/upload/iblock/86b/rxfloh67xqmvo7lwgdu0qmysc24gnrmj.jpeg
76	76	https://fenix-tattoo.ru/upload/iblock/c39/h3gou1uq1jotc90vknk153eje91dmgna.jpeg
77	77	https://fenix-tattoo.ru/upload/iblock/d34/nhasncrkdviky8h76t1o4joujldwg2lq.webp
78	78	https://fenix-tattoo.ru/upload/iblock/ab6/hv2qpvfqgptfr1fltjmi35eoat68c4hu.jpg
79	79	https://fenix-tattoo.ru/upload/iblock/c79/xtb5yw75hbssqkrycdu6kptr2wkr81nj.jpg
80	80	https://fenix-tattoo.ru/upload/iblock/fb9/430zufzpt2hhnqqunvp6206fdc2i3xxi.jpg
81	81	https://fenix-tattoo.ru/upload/iblock/706/852xs6rmuw8by4kh53bhfeg3phewatsj.jpg
82	82	https://fenix-tattoo.ru/upload/iblock/856/h2gs9mjb3l9e6daacdrjy2d6rlcwzye1.jpg
83	83	https://fenix-tattoo.ru/upload/iblock/594/otlt8czvl9w0mpy7ik2rr62aau2f1uf3.jpg
\.


--
-- Data for Name: product; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.product (id, name, url) FROM stdin;
59	Беспроводная тату машинка EZ P3 Pro 6 Strokes Gloss Gray	https://tatu-shop.ru/products/ez--p3-pro-gloss-gray
60	Беспроводная тату машинка WJX W3 Wireless Pen 7 Strokes Black	https://tatu-shop.ru/products/wireless-tattoo-machine-wjx-black
61	Беспроводная тату машинка EZ Popu Diva PMU 6 Stroke X 2 Power Shadow	https://tatu-shop.ru/products/ez-popu-diva-shadow-machine-2-power
62	Роторная тату машинка Mast P10 Orange	https://tatu-shop.ru/products/mast-p10-orange1
63	Беспроводная тату машинка Dragon PGX-30 blue	https://tatu-shop.ru/products/dragon-pgx-30--blue
64	Роторная тату машинка DragoArt Storm Gold	https://tatu-shop.ru/products/dragoart--storm-gold
65	Беспроводная машинка для татуажа - Mast P20 Permanent With 2.5MM Stroke X 2 Power Blue	https://tatu-shop.ru/products/mast-p20-permanent-2-power-blue
66	Беспроводная тату машинка JACK & ALEXX Easy Pro Strokes 3.5мм	https://tatu-shop.ru/products/jack-alexx-easy-pro-3-5mm
67	Беспроводная тату машинка BRONC V12 MAX Adjustable Wireless Pen 6 Stroke Army Green	https://tatu-shop.ru/products/bronc-v12-army-green
68	Тату-машинка для художественной татуировки EZ Portex Generation P2S, Black	https://28opt.ru/ez-tattoo/tatu-mashinka-dlja-hudozhestvennoj-tatuirovki-ez-portex-generation-p2s-black/
69	Роторная тату-машинка для художественной татуировки EZ Filter V2 Plus, Dark Gray	https://28opt.ru/ez-tattoo/rotornaja-tatu-mashinka-ez-filter-v2-plus-silver/
70	Тату-машинка для художественной татуировки EZ P4 SE, Matte Black	https://28opt.ru/ez-tattoo/p4-se-matte-black/
71	Роторная тату-машинка для художественной татуировки EZ Filter V2 Plus, Bronze	https://28opt.ru/ez-tattoo/rotornaja-tatu-mashinka-ez-filter-v2-plus-bronze/
72	Роторная тату-машинка для художественной татуировки EZ-Circle	https://28opt.ru/ez-tattoo/rotornaja-tatu-mashinka-ez-circle/
73	Роторная тату-машинка для художественной татуировки EZ, Portex Gen2 VERSATILE, Black	https://28opt.ru/ez-tattoo/rotornaja-tatu-mashinka-dlja-hudozhestvennoj-tatuirovki-ez-p2-pen-black-1/
74	EZ P5 Touchscreen Black	https://fenix-tattoo.ru/catalog/tatuirovochnye-mashinki/rotornye-mashinki/ez-p5-touchscreen/?oid=50072#props
75	Eikon Symbeos Lining Machine	https://fenix-tattoo.ru/catalog/tatuirovochnye-mashinki/rotornye-mashinki/eikon-symbeos-lining-machine/#props
76	Inox Prime RUNIC ARCANA	https://fenix-tattoo.ru/catalog/tatuirovochnye-mashinki/rotornye-mashinki/inox-prime-runic-arcana/#props
77	EZ P2 EPIC Black 3.5 mm	https://fenix-tattoo.ru/catalog/tatuirovochnye-mashinki/rotornye-mashinki/ez-p2-epic/?oid=48873#props
78	Mast Tour Black	https://fenix-tattoo.ru/catalog/tatuirovochnye-mashinki/rotornye-mashinki/mast-tour-mini/?oid=34312#props
79	GLOVCON Mini PMU	https://fenix-tattoo.ru/catalog/tatuirovochnye-mashinki/rotornye-mashinki/glovcon-mini-pmu/#props
80	Ambition Ninja Pro Version 2 Gold	https://fenix-tattoo.ru/catalog/tatuirovochnye-mashinki/rotornye-mashinki/ambition-ninja-pro-version-2/?oid=51421#props
81	Equalizer Wireless Neutron Rotary Tattoo Machine 3.5 mm	https://fenix-tattoo.ru/catalog/tatuirovochnye-mashinki/rotornye-mashinki/equalizer-wireless-neutron-rotary-tattoo-machine/?oid=53015#props
82	EZ Filter Freedom Black	https://fenix-tattoo.ru/catalog/tatuirovochnye-mashinki/rotornye-mashinki/ez-filter-freedom/?oid=55837#props
83	ABS Zetton Wireless Black	https://fenix-tattoo.ru/catalog/tatuirovochnye-mashinki/rotornye-mashinki/abs-zetton-wireless/?oid=57434#props
\.


--
-- Data for Name: property; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.property (id, product_id, cost, weight, work_time, charge_time, lenght_of_work, battery_capacity, voltage, model, material, power, motor, manufactured, warranty, rpm) FROM stdin;
109	59	12990	247 г	до 5 часов	2 часа	\N	\N	4-12 V	\N	авиационный алюминий с защитным покрытием	\N	EZ Customized External Rotor Brushless Motor - 12V/10000 об/мин	\N	6 месяцев	\N
110	60	19860	198 г	до 4 часов	2 часа	\N	\N	4-12 V	\N	авиационный алюминий с защитным покрытием	\N	Высокопроизводительный двигатель без сердечника Careless motor 12V/10000 об/мин	\N	6 месяцев	\N
111	61	21480	550 гр	5 -7 ч	2 ч	0 - 4,5 мм	1600 mA/ч	4 - 12V	EZ Popu Diva	авиационный алюминий с защитным покрытием	\N	\N	EZ Tattoo	6 месяцев	\N
112	62	6440	117 г	\N	\N	\N	\N	5 - 8 V 9000 об/мин	\N	алюминий	3 Ватт	Япония	DragonHawk	6 месяцев	\N
113	63	6990	200 г	до 8 часов	\N	от 0 до 4	\N	5-12V	Dragon PGX-30	авиационный алюминий	\N	Япония	Solong Tattoo	\N	10800 об
114	64	2990	114 г	\N	\N	\N	\N	6-8V	\N	авиационный алюминий	\N	Advanced Customization Motor - 10000 об/мин	DragoArt	\N	\N
115	65	11870	122 г	4-6 часов	\N	0-3,5 мм	\N	4-10V	Mast P20	Авиационный алюминий	\N	Mast Special Edition Coreless Motor 10V/10000 об	\N	6 месяцев	\N
116	66	39990	570 гр	до 5 часов	\N	\N	\N	\N	JACK & ALEXX Easy Pro	Авиационный алюминий	\N	\N	\N	1 год	\N
117	67	14990	235 г	до 10 часов	\N	от 0 до 4,5 мм	\N	4-12 V	BRONC V12 MAX	Авиационный алюминий	\N	Швейцарский двигатель 7Вт	\N	6 месяцев	\N
118	68	10580	197 г	\N	\N	3,5 мм	1800 мАч	5-9 В постоянного тока	\N	авиационный алюминий	\N	EZ Customized Swiss Motor	EZ Tattoo (КНР)	6 месяцев	10800 об / мин ± 10%
119	69	5950	\N	\N	\N	3,8 мм	\N	6-11 В	\N	авиационный алюминий	\N	\N	EZ Tattoo (КНР)	\N	\N
120	70	8344	195 г	\N	\N	3,5 мм	\N	\N	\N	авиационный алюминий	\N	\N	EZ Tattoo (КНР)	\N	7000-9000
121	71	5950	\N	\N	\N	3,8 мм	\N	6-11 V	\N	авиационный алюминий	\N	\N	EZ Tattoo (КНР)	\N	\N
122	72	11909	300 г	\N	\N	\N	\N	\N	\N	авиационный алюминий	\N	10 Вт	EZ Tattoo (КНР)	\N	\N
123	73	12035	185 г	\N	\N	3,5 мм	1000 мАч	5-12 В	\N	\N	\N	EZ Customized Swiss Motor	EZ Tattoo (КНР)	6 месяцев	\N
124	74	16112	178	5	2	3.5	1800	\N	\N	Аллюминий	\N	External Rotor Brushless Motor	Китай	6 месяцев	9000
125	75	22797	\N	\N	\N	3.4	\N	\N	\N	\N	\N	Symbeos №4	Канада	\N	\N
126	76	22338	\N	6	2	2.4, 2.7, 3.0, 3.3, 3.6, 3.8, 4.2	1800	\N	\N	\N	9	бесколлекторный Inox Prime	Польша	1 год	11000
127	77	16678	\N	\N	\N	3.5, 4.5	\N	\N	\N	\N	\N	\N	Китай	\N	\N
128	78	6354	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Китай	\N	\N
129	79	28934	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
130	80	12348	\N	7	3	3.5	2400	\N	\N	\N	12	Japan Coreless Motor	Китай	6 месяцев	10500
131	81	52082	\N	\N	\N	3.5, 4.0	\N	\N	\N	\N	\N	\N	\N	\N	\N
132	82	5873	200	5	2	3.5	1500	6 - 9	\N	Аллюминий	12	Coreless Motor	Китай	6 месяцев	10000
133	83	12180	213	6	3	3.5, 4.0	2400	\N	\N	Аллюминий	8	Brushless motor	Китай	6 месяцев	10000
\.


--
-- Name: photo_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.photo_id_seq', 83, true);


--
-- Name: product_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.product_id_seq', 83, true);


--
-- Name: property_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.property_id_seq', 133, true);


--
-- Name: alembic_version alembic_version_pkc; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alembic_version
    ADD CONSTRAINT alembic_version_pkc PRIMARY KEY (version_num);


--
-- Name: photo photo_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.photo
    ADD CONSTRAINT photo_pkey PRIMARY KEY (id);


--
-- Name: product product_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.product
    ADD CONSTRAINT product_pkey PRIMARY KEY (id);


--
-- Name: property property_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.property
    ADD CONSTRAINT property_pkey PRIMARY KEY (id);


--
-- Name: product uq_product_url; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.product
    ADD CONSTRAINT uq_product_url UNIQUE (url);


--
-- Name: uq_product_url_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX uq_product_url_idx ON public.product USING btree (url);


--
-- Name: photo photo_product_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.photo
    ADD CONSTRAINT photo_product_id_fkey FOREIGN KEY (product_id) REFERENCES public.product(id) ON DELETE CASCADE;


--
-- Name: property property_product_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.property
    ADD CONSTRAINT property_product_id_fkey FOREIGN KEY (product_id) REFERENCES public.product(id) ON DELETE CASCADE;


--
-- PostgreSQL database dump complete
--

