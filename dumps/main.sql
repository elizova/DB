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
-- Name: tattoo_machines; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tattoo_machines (
    id integer NOT NULL,
    "Название" text,
    "Цена" text,
    "Вес" text,
    "Время работы" text,
    "Время зарядки" text,
    "Длина хода" text,
    "Емкость батареи" text,
    "Рабочее напряжение" text,
    "Модель" text,
    "Материал" text,
    "Мощность" text,
    "Мотор" text,
    "Производство" text,
    "Гарантия" text,
    "Об / мин" text,
    source text
);


ALTER TABLE public.tattoo_machines OWNER TO postgres;

--
-- Name: tattoo_machines_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.tattoo_machines_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.tattoo_machines_id_seq OWNER TO postgres;

--
-- Name: tattoo_machines_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tattoo_machines_id_seq OWNED BY public.tattoo_machines.id;


--
-- Name: tattoo_machines id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tattoo_machines ALTER COLUMN id SET DEFAULT nextval('public.tattoo_machines_id_seq'::regclass);


--
-- Data for Name: tattoo_machines; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.tattoo_machines (id, "Название", "Цена", "Вес", "Время работы", "Время зарядки", "Длина хода", "Емкость батареи", "Рабочее напряжение", "Модель", "Материал", "Мощность", "Мотор", "Производство", "Гарантия", "Об / мин", source) FROM stdin;
1	Беспроводная тату машинка MAST ARCHER S ULTRA PURPLE	15960	NaN	4-8 часов	50 минут	от 0 до 4,5 мм	NaN	4-12V	MAST Archer S	Авиационный алюминий	NaN	Высокопроизводительный бесщеточный двигатель M-Core	MAST (DragonHawk)	6 месяцев	NaN	tatu-shop
2	Беспроводная тату машинка Yilong X5 Wireless Pen x 2 Power Red	5990	NaN	до 6 часов	NaN	от 0 до 4	NaN	5-12V	Yilong X5	авиационный алюминий	NaN	Customized Premium Coreless Motor (Powerful Motor)	Yilong Tattoo	NaN	5V-5625, 6V-6750, 7V-7875, 8V-9000, 9V-10125, 10V-11250, 11V-12375, 12V-13500 об	tatu-shop
3	Роторная тату машинка Dragon Small-x4 Black	2370	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	Япония	Yilong Tattoo Supply	NaN	NaN	tatu-shop
4	Беспроводная тату машинка Yilong Y15 Battery Tattoo Pen Purple	6990	NaN	до 8 часов	NaN	0-4 мм	NaN	4-12V	Yilong Y15	Авиационный алюминий	NaN	Brush Coreless Motor 12V/11000 об	NaN	NaN	NaN	tatu-shop
5	Роторная тату машинка AVA Pen GTXS Blue	8370	NaN	NaN	NaN	NaN	NaN	5 - 12 V 11000 об/мин	NaN	авиационный алюминий	NaN	Япония	AVA TATTOO MACHINE	6 месяцев	NaN	tatu-shop
6	Беспроводная тату машинка Cobra Morandi 4,2 Stroke Black	9990	NaN	до 7 часов	NaN	NaN	1800 мАч	4,7-13V	Cobra Morandi	Авиационный алюминий	NaN	NaN	Cobra Tattoo	NaN	NaN	tatu-shop
7	Универсальная роторная тату машина Burlak Solo 2 black (32 mm)	23000	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	(11 Вт) 10000 об	Burlak Rotary (Россия)	NaN	NaN	tatu-shop
8	Роторная тату машинка DragoArt Blade Gen II Gold	2990	NaN	NaN	NaN	NaN	NaN	5 - 12 V 10000 об/мин	DragoArt Blade Gen II	авиационный алюминий	NaN	Тайвань (Premium Motor)	DragoArt Tattoo	NaN	NaN	tatu-shop
9	Роторная тату машинка Mast Tour Mini + Power Mast P112 black	9640	NaN	6 часов	NaN	NaN	1200 мАч	5 - 8 В	NaN	алюминий	3 Ватт	Япония 8V 9000 об/мин	DragonHawk	6 месяцев	NaN	tatu-shop
10	Беспроводная тату машинка EZ P2 DotFree Wireless Tattoo Pen Green	11890	NaN	до 5 часов	2 часа	NaN	NaN	5 — 12 V	EZ P2 DotFree	авиационный алюминий	NaN	NaN	EZ Tattoo	6 месяцев	NaN	tatu-shop
11	Беспроводная машинка для татуажа AVA Soulnova Flora E5 PMU Stroke 2.0-3.2mm Black	15380	111 г	3-7 часов	2 часа	NaN	NaN	4,5-12 V	AVA Soulnova Flora E5 PMU	авиационный алюминий	NaN	AVA motor - 9000 об/мин	AVA TATTOO MACHINE	6 месяцев	NaN	tatu-shop
12	Беспроводная тату машинка Yilong F6 Stroke 3,5mm Green	13940	NaN	до 8 часов	2 часа	NaN	NaN	4-12 V	NaN	Авиационный алюминий с защитным покрытием	NaN	Бесщеточный двигатель 12V-10000 об/мин	NaN	NaN	NaN	tatu-shop
13	Беспроводная тату машинка DragonHawk X4 Wireless Pen Pink	11980	NaN	до 4 часов	2 часа	0-4,5 мм	NaN	4-12V	Dragonhawk X4	Авиационный алюминий	NaN	Японский мотор - 12V/10000 об	NaN	6 месяцев	NaN	tatu-shop
14	Беспроводная машинка для татуажа EZ LOLA AIR Pro PMU Wireless 6 Strokes Purple	11980	NaN	4 - 6 ч	2 ч	0 - 3,5 мм	NaN	3 - 10V	EZ LOLA AIR Pro	авиационный алюминий	NaN	NaN	EZ Tattoo	6 месяцев	NaN	tatu-shop
15	Беспроводная тату машинка DragonHawk Elite Versatile	10450	176 гр	до 3 часов	2 часа	NaN	1000 mA/ч	4-12 V	DragonHawk Elite Versatile	Авиационный алюминий	NaN	Coreless Motor 12V - 10000 об/мин	NaN	6 месяцев	NaN	tatu-shop
16	Беспроводная машинка для татуажа EZ LOLA AIR Wireless Battery Silver-Black	10570	NaN	2-3 ч	1,5 ч	0 - 3,5 мм	NaN	5 - 10V	EZ LOLA AIR	авиационный алюминий	NaN	NaN	EZ Tattoo	6 месяцев	NaN	tatu-shop
17	Беспроводная тату машинка Cobra Morandi 4,2 Stroke Light Green	9990	NaN	до 7 часов	NaN	NaN	1800 мАч	4,7-13V	Cobra Morandi	Авиационный алюминий	NaN	NaN	Cobra Tattoo	NaN	NaN	tatu-shop
18	Универсальная роторная тату машинка Skinductor Vertigo 2 Heavy	15000	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	tatu-shop
19	Беспроводная тату машинка EZ INKIN CL2 MAX Wireless Tattoo Pen 3400mAh Green	7920	NaN	7 часов	NaN	от 0 до 4 мм	NaN	5-12V	INKIN CL2 MAX	авиационный алюминий	NaN	Brushless motor - Бесщеточный двигатель	INKIN - EZ Tattoo	6 месяцев	10000 об	tatu-shop
20	Роторная тату машинка Pen Hummingbird Bronc V6 purple	9480	NaN	NaN	NaN	NaN	NaN	6-9 V	Bronc V6	авиационный алюминий	NaN	Япония 5W - 12000 об/мин	NaN	6 месяцев	NaN	tatu-shop
21	Роторная беспроводная тату машинка EZ Portex Gen2 Versatile Red	10580	NaN	до 5 часов	2 часа	от 0 до 4,5 мм (регулировка вылета осуществляется выкручиванием держателя)	NaN	5-12 V	EZ Portex Gen2 Versatile	авиационный алюминий с защитным покрытием	NaN	NaN	EZ Tattoo	6 месяцев	NaN	tatu-shop
22	Беспроводная тату машинка EZ P3 Pro 6 Strokes Gloss Golden	12990	NaN	до 5 часов	2 часа	NaN	NaN	4-12 V	NaN	авиационный алюминий с защитным покрытием	NaN	EZ Customized External Rotor Brushless Motor - 12V/10000 об/мин	NaN	6 месяцев	NaN	tatu-shop
23	Роторная тату машинка SOLONG X100 red	4990	NaN	NaN	NaN	NaN	NaN	8-12 V	SOLONG X100	авиационный алюминий	NaN	Япония 10V-11000 об/мин	NaN	NaN	NaN	tatu-shop
24	Роторная тату машинка ABS-250 gray	1490	NaN	NaN	NaN	(в зависимости от марки картриджей) до 4 мм	NaN	7,5 - 10 V	ABS-250	пластик	NaN	NaN	Yilong Tattoo Supply	NaN	8V - 9000 об	tatu-shop
25	Беспроводная тату машинка BRONC MAGIC Wireless Pen Tattoo & PMU Red	13580	NaN	до 5 часов	NaN	от 0 до 4 мм	NaN	5	BRONC MAGIC wireless tattoo pen	Алюминий	NaN	Швейцарский двигатель 12000 об/мин	NaN	6 месяцев	NaN	tatu-shop
26	Роторная тату машинка MAST Carbon red	6980	NaN	NaN	NaN	NaN	NaN	7-9 V	NaN	авиационный алюминий	NaN	Япония 8V 8000 об/мин	DragonHawk	6 месяцев	NaN	tatu-shop
27	Беспроводная тату машинка AVA GT Pen GTS Adjustable Stroke 2.0-4.5mm Black	19990	NaN	NaN	2 часа	NaN	NaN	4,5-12 V	AVA GT Pen GTS	авиационный алюминий	NaN	AVA Motor Metal Brush DC motor - 10500 об/мин	AVA TATTOO MACHINE	6 месяцев	NaN	tatu-shop
28	Беспроводная тату машинка Mast P60 PMU Stroke 2.2mm-3.2mm X 2Power Gold	16490	NaN	около 3 часов	NaN	0-3,5 мм	900 mA/ч	4-10V	Mast P60	Авиационный алюминий	NaN	Mast Special Edition Mcore-P 11000 об/мин	NaN	6 месяцев	NaN	tatu-shop
29	Беспроводная тату машинка BRONC X1 Wireless Pen 11 Stroke Black	15720	NaN	NaN	NaN	от 0 до 4,5 мм (регулировка вылета осуществляется выкручиванием держателя)	NaN	4-12 V	BRONC X1 Wireless Pen	Авиационный алюминий с защитным покрытием	NaN	Швейцарский двигатель 12V / 11000 об/мин	NaN	6 месяцев	NaN	tatu-shop
30	Беспроводная тату машинка Dragonhawk Atom2 Stroke 2.8mm X 2Power Gold	10390	NaN	3 часа	NaN	0-4,0 мм	800 mA/ч	2-12V	Dragonhawk Atom 2	авиационный алюминий	NaN	Coreless Motor 12V/10000 об/мин	NaN	6 месяцев	NaN	tatu-shop
31			NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	28opt
35	Тату-машинка для художественной татуировки EZ Portex Generation P2S, Black	10580	NaN	NaN	NaN	3,5 мм	1800 мАч	5-9 В постоянного тока	NaN	авиационный алюминий	NaN	EZ Customized Swiss Motor	EZ Tattoo (КНР)	6 месяцев	10800 об / мин ± 10%	28opt
36	Роторная тату-машинка для художественной татуировки EZ Filter V2 Plus, Dark Gray	5950	NaN	NaN	NaN	3,8 мм	NaN	6-11 В	NaN	авиационный алюминий	NaN	NaN	EZ Tattoo (КНР)	NaN	NaN	28opt
37	Тату-машинка для художественной татуировки EZ P4 SE, Matte Black	8344	NaN	NaN	NaN	3,5 мм	NaN	NaN	NaN	авиационный алюминий	NaN	NaN	EZ Tattoo (КНР)	NaN	7000-9000	28opt
38	Роторная тату-машинка для художественной татуировки EZ Filter V2 Plus, Bronze	5950	NaN	NaN	NaN	3,8 мм	NaN	6-11 V	NaN	авиационный алюминий	NaN	NaN	EZ Tattoo (КНР)	NaN	NaN	28opt
39	Роторная тату-машинка для художественной татуировки EZ-Circle	11909	NaN	NaN	NaN	NaN	NaN	NaN	NaN	авиационный алюминий	NaN	10 Вт	EZ Tattoo (КНР)	NaN	NaN	28opt
40	Роторная тату-машинка для художественной татуировки EZ, Portex Gen2 VERSATILE, Black	12035	NaN	NaN	NaN	3,5 мм	1000 мАч	5-12 В	NaN	NaN	NaN	EZ Customized Swiss Motor	EZ Tattoo (КНР)	6 месяцев	NaN	28opt
41	Роторная тату-машинка для художественной татуировки EZ Defender 2 in 1, Matte Black	9512	NaN	NaN	NaN	2,2 мм для косметического татуажа, 3,2 мм для тату	NaN	6-8,5 В	NaN	авиационный алюминий	NaN	Швейцария	EZ Tattoo (КНР)	NaN	7000-9000 об/мин	28opt
42	Роторная тату-машинка для художественной татуировки EZ P4 Mini, Black	7904	NaN	NaN	NaN	3,5 мм	NaN	NaN	NaN	авиационный алюминий	NaN	NaN	EZ Tattoo (КНР)	NaN	8000-10000	28opt
43	Роторная тату-машинка для художественной татуировки EZ Defender 2 in 1, Matte Silver	9512	NaN	NaN	NaN	2,2 мм для перманентного макияжа, 3,2 мм для тату	NaN	6-8,5 В	NaN	авиационный алюминий	NaN	Швейцария	EZ Tattoo (КНР)	NaN	NaN	28opt
44	Роторная тату-машинка для художественной татуировки EZ P4 Mini, Pink	7904	NaN	NaN	NaN	3,5 мм	NaN	NaN	NaN	авиационный алюминий	NaN	NaN	EZ Tattoo (КНР)	NaN	8000-10000	28opt
45	Тату-машинка для художественной татуировки EZ, Evo Tech, Silver	16281	NaN	около 7,5 часов	3,5 часа	3,5 мм	1600 мАч	5,0-12 В	NaN	авиационный алюминий	NaN	NaN	NaN	NaN	NaN	28opt
46	Роторная тату-машинка для художественной татуировки EZ, Portex Gen2 VERSATILE, Red	12035	NaN	NaN	NaN	3,5 мм	1000 мАч	5-12 В	NaN	NaN	NaN	EZ Customized Swiss Motor	EZ Tattoo (КНР)	6 месяцев	NaN	28opt
47	Роторная тату-машинка для художественной татуировки EZ Defender 2 in 1, Matte Grey	9512	NaN	NaN	NaN	2,2 мм для косметического татуажа, 3,2 мм для тату	NaN	6-8,5 В	NaN	авиационный алюминий	NaN	Швейцария	EZ Tattoo (КНР)	NaN	NaN	28opt
48	Роторная машинка для художественной татуировки EZ, ASTR-X, Red	13236	NaN	NaN	NaN	3,5 мм	NaN	5,0-12 В	NaN	корпус машины - поликарбонат	NaN	бесщеточный двигатель с внешним ротором	NaN	NaN	9000 об/мин ±10%	28opt
49	Роторная тату-машинка для художественной татуировки EZ P4 Mini, Grey	7904	NaN	NaN	NaN	3,5 мм	NaN	NaN	NaN	авиационный алюминий	NaN	NaN	EZ Tattoo (КНР)	NaN	8000-10000	28opt
50	Роторная тату-машинка для художественной татуировки EZ Astral, Purple	17107	75 г	NaN	NaN	NaN	NaN	NaN	NaN	авиационный алюминий	NaN	NaN	EZ Tattoo (КНР)	NaN	NaN	28opt
51	Роторная тату-машинка для художественной татуировки EZ Traxex, Purple	17093	50 г	NaN	NaN	NaN	NaN	NaN	NaN	авиационный алюминий	NaN	NaN	EZ Tattoo (КНР)	NaN	NaN	28opt
52	Тату-машинка для художественной татуировки EZ Portex Generation P2S, Red	10580	NaN	NaN	NaN	3,5 мм	1800 мАч	5-9 В постоянного тока	NaN	авиационный алюминий	NaN	EZ Customized Swiss Motor	EZ Tattoo (КНР)	6 месяцев	10800 об / мин ± 10%	28opt
53	Тату-машинка для художественной татуировки EZ, Evo Tech, Black	16281	NaN	приблизительно 7,5 часов	3,5 часа	3,5 мм	1600 мАч	5,0-12 В	NaN	авиационный алюминий	NaN	NaN	NaN	NaN	9000 об/мин ±10%	28opt
54	Роторная тату-машинка для художественной татуировки EZ Filter V2 Plus, Camo	5950	NaN	NaN	NaN	3,8 мм	NaN	6-11 В	NaN	авиационный алюминий	NaN	NaN	EZ Tattoo (КНР)	NaN	NaN	28opt
55	Тату-машинка для художественной татуировки EZ Portex Generation P2S, Green	10580	NaN	NaN	NaN	3,5 мм	1800 мАч	5-9 В	NaN	авиационный алюминий	NaN	EZ Customized Swiss Motor	EZ Tattoo (КНР)	6 месяцев	NaN	28opt
56	Роторная тату-машинка для художественной татуировки EZ, Portex Generation P2S, Purple Gradient	10580	NaN	NaN	NaN	4 мм	1800 мАч	5-9 В	NaN	авиационный алюминий	NaN	EZ Customized Swiss Motor	EZ Tattoo (КНР)	6 месяцев	NaN	28opt
57	Роторная тату-машинка для художественной татуировки EZ P3 Pro, Matte Black	22481	NaN	NaN	NaN	2,0 мм, 2,4 мм, 2,8 мм, 3,3 мм, 3,7 мм, 4,2 мм	1600 мАч	5 - 12 В постоянного тока	NaN	авиационный алюминий	NaN	EZ без сердечника	EZ Tattoo (КНР)	6 месяцев	10000 об / мин ± 10%	28opt
58	Тату-машинка для художественной татуировки EZ Portex Generation P2S, Silver	10580	NaN	NaN	NaN	3,5 мм	1800 мАч	5-9 В	NaN	авиационный алюминий	NaN	EZ Customized Swiss Motor	EZ Tattoo (КНР)	6 месяцев	10800 об / мин ± 10%	28opt
59	Роторная тату-машинка для художественной татуировки EZ Filter V2 Plus, Red	5950	NaN	NaN	NaN	3,8 мм	NaN	6-11 В	NaN	авиационный алюминий	NaN	NaN	EZ Tattoo (КНР)	NaN	NaN	28opt
60	Тату-машинка для художественной татуировки EZ, Portex Generation P2S, Matte Xmas Green	10580	NaN	NaN	NaN	3,5 мм	1800 мАч	5-9 В	NaN	авиационный алюминий	NaN	EZ Customized Swiss Motor	EZ Tattoo (КНР)	6 месяцев	NaN	28opt
61	Ambition Ninja Max Version 2	13608	229	6 - 7	2 - 2,5	3.5, 4.0	2000	NaN	NaN	Аллюминий	12	Custom coreless motor	Китай	6 месяцев	10500	fenix-tattoo
62	Dragonhawk X5	11246	NaN	NaN	NaN	4.0	NaN	NaN	NaN	NaN	NaN	NaN	Китай	6 месяцев	NaN	fenix-tattoo
63	EZ Dagger Y Camo Green	20345	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	Китай	NaN	NaN	fenix-tattoo
64	EQUALISER Drop Pen Black	34977	NaN	NaN	NaN	3.5	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	fenix-tattoo
65	Ambition NINJA RS Blue	10868	145	4,5	2	3.5	1500	NaN	NaN	NaN	9	Ambition Coreless motor	Китай	6 месяцев	10000	fenix-tattoo
66	Ambition Tyrannosaurus Rex III Black	15120	224	6	2	4.0	1950	NaN	NaN	Аллюминий	10	Ambition Coreless Motor	Китай	6 месяцев	9000	fenix-tattoo
67	Bishop Fantom Rotary Tattoo Machine 3.5 mm	40697	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	США	NaN	NaN	fenix-tattoo
68	Ambition Seher Adjustable Stroke Black	15215	NaN	6	3	2.2, 2.6, 3.0, 3.4, 3.8, 4.2	2400	NaN	NaN	NaN	12	Coreless Motor	Китай	6 месяцев	10500	fenix-tattoo
69	Defender Ruby Chromium	29490	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	fenix-tattoo
70	20BAXOV ротор	5929	NaN	NaN	NaN	3.8	NaN	NaN	NaN	Металл	NaN	MFA 5.75w	Россия	NaN	10000	fenix-tattoo
71	Microbeau (FK Irons) Bellar Air Stealth 3.0 mm 1 PowerBolt	109975	107	4 - 5	NaN	2.1, 2.7, 3.0	NaN	NaN	NaN	NaN	NaN	NaN	США	1 год	NaN	fenix-tattoo
72	Ambition C1 Adjustable	7938	237	5	3	2.0, 2.3, 2.6, 3.0, 3.4, 4.2	1900	NaN	NaN	NaN	10	бесколлекторный фирменный Ambition	Китай	6 месяцев	9000	fenix-tattoo
73	Ambition XNET Knight Wireless	13230	202	5	2	4.0	1800	3,7	NaN	Аллюминий	12	Coreless motors	Китай	6 месяцев	10000	fenix-tattoo
74	CNC X-WE Pro Wireless Tattoo Pen	28130	NaN	3,5	1,5	3.0, 3.5, 4.0	1000	NaN	NaN	NaN	NaN	Customized Germany Motor X-II	Китай	6 месяцев	10000	fenix-tattoo
75	Ambition Soldier Pen 2 Black	12380	210	10	3	4.0	2400	NaN	NaN	Аллюминий	12	Japan Coreless Motor	Китай	6 месяцев	9000	fenix-tattoo
76	EQUALIZER FOX BIG V2 Black	42433	NaN	NaN	NaN	1.0, 2.0, 2.6, 3.0, 3.6, 4.0, 4.8, 5.0	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	fenix-tattoo
77	InkJecta Flite Nano Lite Stealth Matte	56259	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	fenix-tattoo
78	Dragonhawk X8 Black	15154	144	3	2	4.0	1500	NaN	NaN	Аллюминий	NaN	Powerful Brushless Motor	Китай	6 месяцев	180 - 9000	fenix-tattoo
79	EQUALISER Proton MX Army Green	35138	NaN	NaN	NaN	3.5	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	fenix-tattoo
80	EZ Avant V2 Adjustable Stroke Black	7464	NaN	NaN	NaN	2.5, 2.6, 2.8, 3.2, 3.6, 4.0	NaN	NaN	NaN	Аллюминий	12	EZ Coreless Motor (бесщеточный)	Китай	6 месяцев	9000	fenix-tattoo
81	Dragonhawk Tattoo Machine Pen Fold Black	15912	201	NaN	NaN	2.4, 2.7, 3.0, 3.3, 3.6, 3.9, 4.2	NaN	NaN	NaN	Аллюминий	8	Coreless Motor	Китай	6 месяцев	6500	fenix-tattoo
82	Skinductor Vertigo NEW	14589	NaN	NaN	NaN	3.5	NaN	NaN	NaN	NaN	NaN	NaN	Россия	NaN	NaN	fenix-tattoo
83	Ambition XNET Claws	10124	184	4	2	4.0, 5.0	1800	NaN	NaN	Аллюминий	9	Brushless Motors	Китай	6 месяцев	10000	fenix-tattoo
84	EZ P3	13776	NaN	NaN	NaN	2.5, 2.6, 2.8, 3.2, 3.6, 4.0	NaN	NaN	NaN	NaN	NaN	NaN	Китай	6 месяцев	NaN	fenix-tattoo
85	JACK & ALEXX Easy 2.0 Pen Alu 3.0 mm	34986	NaN	8	NaN	3.0, 3.5, 4.0, 4.5	1200	NaN	NaN	Аллюминий	5	коллекторный 2610	Беларусь	1 год	NaN	fenix-tattoo
86	EZ Lola Air Black Power Pink Gradient	14954	NaN	NaN	NaN	2.7	NaN	NaN	NaN	NaN	NaN	NaN	Китай	NaN	NaN	fenix-tattoo
87	MT Mustang Tattoo Evolution 2	50815	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	fenix-tattoo
88	Mast Tour Pro	8357	NaN	NaN	NaN	3.6	NaN	NaN	NaN	Аллюминий	7.5	Custom Coreless Motor	Китай	6 месяцев	10000	fenix-tattoo
89	Cheyenne HAWK Spirit Facelift Silver без держателя	24991	NaN	NaN	NaN	2.5	NaN	NaN	NaN	NaN	NaN	Precision DC motor	Германия	1 год	NaN	fenix-tattoo
90	Dragonhawk Atom Rotary Pen Black	4219	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	fenix-tattoo
211	Роторная тату машинка - Stigma BSS-700 black	5964	155 гр	NaN	NaN	NaN	NaN	7-12 V	NaN	авиационный алюминий	NaN	Тайвань - 8V 10000 об/мин	Solong Tattoo	NaN	NaN	tatu-shop
212	Роторная тату машинка Pen - PINK DIAMOND USA Chromium	13990	96 г	NaN	NaN	NaN	NaN	3 - 10V	NaN	авиационный алюминий	NaN	Швейцарский мотор 8W	PINK DIAMOND (США)	6 месяцев	NaN	tatu-shop
213	Роторная тату машинка Dragonhawk Atom M3 black	3380	155 гр	NaN	NaN	NaN	NaN	6-9 V	NaN	авиационный алюминий	NaN	Япония 8V - 10000 об/мин	NaN	6 месяцев	NaN	tatu-shop
214	Беспроводная машинка для татуажа - Defenderr FENIX S PRO Gray	28950	146,4 г	NaN	1,5 часа	NaN	2000 мАч	NaN	NaN	авиационный алюминий с защитным покрытием	NaN	2W - 12000 об	NaN	1 год	NaN	tatu-shop
215	Роторная тату машинка EGO Switch Black	6930	130 гр	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	Япония 8V-9000 об/мин	NaN	6 месяцев	NaN	tatu-shop
829	Роторная тату машинка STIGMA EM-500	5990	151 гр	NaN	NaN	NaN	NaN	7-12 V	STIGMA EM-500	Алюминий	NaN	Япония - 8В - 8000 об/мин	Solong Tattoo	NaN	NaN	tatu-shop
216	Беспроводная тату машинка DragonHawk X20 Pro Wireless Tattoo Pen	9950	216 г	NaN	NaN	от 0 до 4	NaN	4-12V	DragonHawk X20 Pro	Авиационный алюминий	NaN	Powerful Motor MCORE-R1 12V/10000 об/мин	DragonHawk Tattoo	6 месяцев	NaN	tatu-shop
217	Беспроводная тату машинка Yilong Max S-70 Wireless Pen Gold	5990	198г	до 6 часов	NaN	от 0 до 4	NaN	5-12V	Yilong Max S-70	авиационный алюминий	NaN	Vertical disk bearing motor	Yilong Tattoo	NaN	11000 об	tatu-shop
218	Роторная тату машинка Pen Hawk GSH-500 blue	3990	158 гр	NaN	NaN	NaN	NaN	3-10 В	Pen Hawk GSH-500	NaN	NaN	Тайвань	Solong Tattoo	NaN	NaN	tatu-shop
219	Беспроводная тату машинка Skinner Innovation PRO 2.0 Stroke 4,5mm Black Matte	25000	200 гр	до 10 часов	NaN	NaN	2000 мАч	5-13V	Skinner Innovation PRO 2	Авиационный алюминий	NaN	Бесколлекторный двигатель 5	Skinner Tattoo	NaN	NaN	tatu-shop
220	Беспроводная тату машинка BRONC V80 Strokes 2.0 - 4.2mm X 2Power Black	8990	480 гр	до 8 часов	3 часа	от 0 до 4,5 мм (регулировка вылета осуществляется выкручиванием держателя)	NaN	4-12 V	BRONC V80	Авиационный алюминий с защитным покрытием	NaN	Coreless Motor 12V / 10000 об/мин	NaN	6 месяцев	NaN	tatu-shop
221	Беспроводная тату машинка MICEYA MCY-1003 Wireless Tattoo & PMU Pen Pink	15990	149 г	до 7 часов	NaN	от 0 до 4,5 мм	NaN	4V-12V	MICEYA MCY-1003	Авиационный алюминий	NaN	Швейцарский двигатель 12000 об/мин	NaN	6 месяцев	NaN	tatu-shop
222	Беспроводная роторная тату машинка Bronc Seraphic Wireless Pen For PMU & Tattoo Red	12990	175 г	до 7 часов	NaN	от 0 до 4 мм	NaN	4-12 V	Bronc Seraphic Wireless Pen For PMU & Tattoo	Авиационной алюминий	NaN	Swiss motor - Швейцарский двигатель 11000 об/мин	NaN	6 месяцев	NaN	tatu-shop
223	Роторная тату машинка - Defenderr Ruby Gunmetal	15500	165 г	NaN	NaN	NaN	NaN	NaN	NaN	авиационный алюминий с защитным покрытием	NaN	Faulhaber (Германия) - 8000 об	NaN	1 год	NaN	tatu-shop
224	Беспроводная тату машинка BRONC V1 Wireless Tattoo Pen Red	10780	237 г	NaN	NaN	от 0 до 4,5 мм	NaN	4-11 V	BRONC Wireless Pen V1	Авиационный алюминий с защитным покрытием	NaN	Швейцарский двигатель 11000 об/мин	NaN	6 месяцев	NaN	tatu-shop
225	Роторная тату машинка Mast Tour Mini Red	6240	82 г	NaN	NaN	NaN	NaN	5 - 8 В	NaN	авиационный алюминий	3 Ватт	Япония 8V / 9000 об/мин	DragonHawk	6 месяцев	NaN	tatu-shop
226	Беспроводная тату машинка Cobra Morandi 4,2 Stroke Green	9990	175 гр	до 7 часов	NaN	NaN	1800 мАч	4,7-13V	Cobra Morandi	Авиационный алюминий	NaN	NaN	Cobra Tattoo	NaN	NaN	tatu-shop
227	Беспроводная тату машинка - CNC X WE PRO Wireless Tattoo Pen	17430	185 г	до 4 часов	NaN	NaN	NaN	5-12V	NaN	авиационный алюминий	NaN	Германский X-II	CNC Tattoo	6 месяцев	NaN	tatu-shop
228	Беспроводная машинка для татуажа - Defenderr FENIX Gunmetal	23950	135 г	NaN	2,5 часа	NaN	1600 мАч	NaN	NaN	авиационный алюминий с защитным покрытием	NaN	2W - 12000 об	NaN	1 год	NaN	tatu-shop
229	Роторная тату машинка - Solong Tattoo Pen Evolution EM118	5990	197 г	NaN	NaN	до 4,5 мм (регулировка вылета осуществляется выкручиванием держателя)	NaN	5-12 Вольт	Solong Tattoo Pen Evolution EM118	NaN	NaN	10W Япония	Solong Tattoo	NaN	NaN	tatu-shop
230	Роторная тату машинка MAST ATOM M5 ROTARY PEN pink	6980	190 гр	NaN	NaN	от 0 до 4,5 мм (регулировка вылета осуществляется выкручиванием держателя)	NaN	5-12 V	MAST ATOM M5	авиационный алюминий	NaN	Япония 12В	NaN	6 месяцев	NaN	tatu-shop
231	Роторная тату машинка Pen Rocket II version-5, red	3590	140 г	NaN	NaN	до 4,5 мм (регулировка вылета осуществляется выкручиванием держателя)	NaN	NaN	Rocket II version-5	NaN	NaN	МАБУЧИ 8V 9000rpm - 10V 11000rpm	Rocket Tattoo	NaN	NaN	tatu-shop
232	Роторная тату машинка - Defenderr Onyx Gunmetal	13500	76 г	NaN	NaN	NaN	NaN	NaN	NaN	авиационный алюминий с защитным покрытием	NaN	Faulhaber (Германия) - 10000 об	NaN	1 год	NaN	tatu-shop
233	Роторная тату машинка Metis APR 2 АМАКС PEN	16900	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	tatu-shop
234	Роторная тату машинка SOLONG PROTON PRO-2	4990	180 гр	NaN	NaN	NaN	NaN	NaN	SOLONG PROTON PRO-2	алюминий	NaN	Япония	NaN	NaN	NaN	tatu-shop
235	Беспроводная тату машинка DragoArt D-T2 Wireless Tattoo Pen Blue	7490	NaN	4 - 6 часов	NaN	от 0 до 4	NaN	4-12V	DragoArt D-T2 Wireless Tattoo Pen	авиационный алюминий	NaN	Brushless Motor 12V-10000 об	DragoArt Tattoo	NaN	NaN	tatu-shop
236	Беспроводная тату машинка Cobra Morandi 4,2 Stroke Pink	9990	175 гр	до 7 часов	NaN	NaN	1800 мАч	4,7-13V	Cobra Morandi	Авиационный алюминий	NaN	NaN	Cobra Tattoo	NaN	NaN	tatu-shop
237	Беспроводная тату машинка Skinner Innovation PRO 2.0 Stroke 3,8mm Black Gloss	25000	200 гр	до 10 часов	NaN	NaN	2000 мАч	5-13V	Skinner Innovation PRO 2	Авиационный алюминий	NaN	Бесколлекторный двигатель 5	Skinner Tattoo	NaN	NaN	tatu-shop
238	Беспроводная тату машинка EZ Filter Tora Black	4490	196 гр	до 5 часов	2 часа	от 0 до 4,5 мм	1600 mA/ч	5-12V	EZ Filter Tora	Авиационный алюминий с защитным покрытием	NaN	Двигатель без сердечника EZ 12V-10000 об/мин	EZ TATTOO	6 месяцев	NaN	tatu-shop
239	Машинка для татуажа Burlak Elf Pen	24950	87 гр	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	9W	Burlak Rotary (Россия)	NaN	NaN	tatu-shop
240	Беспроводная тату машинка AVA UNI-X Stroke 4.0mm Gold	15380	660 гр	NaN	2 часа	NaN	NaN	4,5-12 V	AVA UNI-X	авиационный алюминий	5W	AVA Motor Brushless Motor - 10500 об/мин	AVA TATTOO MACHINE	6 месяцев	NaN	tatu-shop
241	Роторная тату машинка Mast P10 Blue	6440	117 г	NaN	NaN	NaN	NaN	5 - 8 V 9000 об/мин	NaN	алюминий	3 Ватт	Япония	DragonHawk	6 месяцев	NaN	tatu-shop
242	Беспроводная машинка для перманентного макияжа EZ LOLA Air S PMU X 2 Power Black	10225	105 гр	NaN	2 часа	0 - 3,5 мм	NaN	3 - 10V	EZ LOLA Air S PMU	авиационный алюминий	NaN	NaN	EZ Tattoo	6 месяцев	NaN	tatu-shop
243	Роторная тату машинка SOLONG PROTON X-90 red	4990	133 гр	NaN	NaN	NaN	NaN	NaN	SOLONG PROTON X-90	алюминий	NaN	Япония 5W	NaN	NaN	NaN	tatu-shop
244	Беспроводная тату машинка DragonHawk X4 Wireless Pen Red	11980	120 г	до 4 часов	2 часа	0-4,5 мм	NaN	4-12V	Dragonhawk X4	Авиационный алюминий	NaN	Японский мотор - 12V/10000 об	NaN	6 месяцев	NaN	tatu-shop
245	Роторная тату машинка - EZ Avant V2 Adjustable 6 Stroke black	7860	194 г	NaN	NaN	NaN	NaN	NaN	NaN	авиационный алюминий	NaN	кастомный мотор EZ - 12В / 9000 об/мин	NaN	6 месяцев	NaN	tatu-shop
246	Роторная тату машинка - Defenderr Ruby Chromium	15500	165 г	NaN	NaN	NaN	NaN	NaN	NaN	авиационный алюминий с защитным покрытием	NaN	Faulhaber (Германия) - 8000 об	NaN	1 год	NaN	tatu-shop
247	Беспроводная тату машинка BRONC V1 Wireless Tattoo Pen Silver	10780	237 г	NaN	NaN	от 0 до 4,5 мм	NaN	4-11 V	BRONC Wireless Pen V1	Авиационный алюминий с защитным покрытием	NaN	Швейцарский двигатель 11000 об/мин	NaN	6 месяцев	NaN	tatu-shop
248	Роторная тату машинка BRONC V4 Tattoo & Makeup Black	10360	79 гр	NaN	NaN	NaN	NaN	5-9V (татуаж	Bronc V4	авиационный алюминий	NaN	Швейцария 4,5 Вт	NaN	6 месяцев	NaN	tatu-shop
249	Беспроводная тату машинка BRONC V1 Wireless Tattoo Pen Military Green	10780	237 г	NaN	NaN	от 0 до 4,5 мм	NaN	4-11 V	BRONC Wireless Pen V1	Авиационный алюминий с защитным покрытием	NaN	Швейцарский двигатель 11000 об/мин	NaN	6 месяцев	NaN	tatu-shop
250	Роторная тату машинка Mast Sensor With 4MM Stroke Green	8960	133 г	NaN	NaN	NaN	NaN	6-10V	NaN	авиационный алюминий	NaN	Mcore Бесщеточный 12V 10000 об/мин	DragonHawk	6 месяцев	NaN	tatu-shop
251	Роторная машинка для татуажа EZ POPU OMNI PEN PMU SILVER	6470	80 грамм	NaN	NaN	NaN	NaN	6-8V	EZ POPU OMNI PEN PMU	Авиационный алюминий	NaN	Японский двигатель 6000-8000 об/мин	EZ Tattoo	6 месяцев	NaN	tatu-shop
252	Беспроводная тату машинка Ambition Zetton Black	16490	213 гр	до 8 часов	3 ч	NaN	NaN	4,5-12V	Ambition Zetton	авиационный алюминий	NaN	Brushless Motor 8V - 10000 об/мин	Ambition Tattoo	6 месяцев	NaN	tatu-shop
253	Беспроводная роторная тату машинка - BRONC Wireless Pen V8 red	13790	227 г	от 7 до 9 часов	NaN	от 0 до 4,5 мм	NaN	4,5-11 V	BRONC Wireless Pen V8	Алюминий	NaN	Швейцарский двигатель	NaN	6 месяцев	NaN	tatu-shop
254	Беспроводная тату машинка EZ Portex Generation P2S Pro Red	7950	197 г	до 5 часов	2 часа	NaN	NaN	4-12 V	NaN	авиационный алюминий с защитным покрытием	NaN	EZ Customized Swiss - 12V/10800 об/мин	NaN	6 месяцев	NaN	tatu-shop
255	Роторная тату машинка AVA GT Mini Purple	5860	96 г	NaN	NaN	NaN	NaN	4 - 10 V 11000 об/мин	NaN	авиационный алюминий	NaN	Япония	AVA TATTOO MACHINE	6 месяцев	NaN	tatu-shop
256	Беспроводная тату машинка DragonHawk Elite Versatile X 2Power	14180	500 гр	до 3 часов	2 часа	NaN	1000 mA/ч	4-12 V	DragonHawk Elite Versatile	Авиационный алюминий	NaN	Coreless Motor 12V - 10000 об/мин	NaN	6 месяцев	NaN	tatu-shop
257	Беспроводная роторная тату машинка Mast A2 Wireless Pen 5000mAh	10930	239 г	до 15 часов	7-8 часов	NaN	NaN	4-12 V	машины Mast A2	авиационный алюминий с защитным покрытием	NaN	Brushless Motor - Бесщеточный двигатель	NaN	6 месяцев	NaN	tatu-shop
258	Беспроводная тату машинка MT Mustang Evolution Pen 3 Blood	44990	NaN	до 10 часов	NaN	NaN	NaN	5-13 V	MT Mustang Evolution Pen 3	Авиационный алюминий с защитным покрытием	NaN	Бесколлекторный двигатель	Mustang Tattoo (Россия)	12 месяцев	NaN	tatu-shop
259	Беспроводная тату машинка BRONC V1 Wireless Tattoo Pen Green	10780	237 г	NaN	NaN	от 0 до 4,5 мм	NaN	4-11 V	BRONC Wireless Pen V1	Авиационный алюминий с защитным покрытием	NaN	Швейцарский двигатель 11000 об/мин	NaN	6 месяцев	NaN	tatu-shop
260	Роторная тату машинка AVA GT Mini Grey	5860	96 г	NaN	NaN	NaN	NaN	4 - 10 V 11000 об/мин	NaN	авиационный алюминий	NaN	Япония	AVA TATTOO MACHINE	6 месяцев	NaN	tatu-shop
261	Беспроводная тату машинка MAST Tour SIYA Blue Gradient	12990	133 г	до 5 часов	NaN	0-4 мм	NaN	5-12V	MAST Tour SIYA	Алюминий	NaN	Япония - 8V/10000 об	NaN	6 месяцев	NaN	tatu-shop
262	Беспроводная роторная тату машинка DragonHawk X2 Wireless Pen	7990	210 г	до 7 часов	2 часа	NaN	NaN	5-12 V	DragonHawk X2	авиационный алюминий с защитным покрытием	NaN	IRONCORE Motor 12V/12000 об/мин	NaN	6 месяцев	NaN	tatu-shop
263	Беспроводная тату машинка BRONC MAGIC Wireless Pen Tattoo & PMU Black	13580	137 г	до 5 часов	NaN	от 0 до 4 мм	NaN	5	BRONC MAGIC wireless tattoo pen	Алюминий	NaN	Швейцарский двигатель 12000 об/мин	NaN	6 месяцев	NaN	tatu-shop
264	Роторная тату машинка Pen Hawk GSH-500 gold	3990	158 гр	NaN	NaN	NaN	NaN	3-10 В	Pen Hawk GSH-500	NaN	NaN	Тайвань	Solong Tattoo	NaN	NaN	tatu-shop
265	Роторная тату машинка Dragonhawk M8 Rotary Pen Black	3680	154 гр	NaN	NaN	NaN	NaN	6 - 10 V	NaN	NaN	NaN	Iron Core Motor	NaN	6 месяцев	NaN	tatu-shop
266	Беспроводная тату машинка BRONC V1 Wireless Tattoo Pen Orange	10780	237 г	NaN	NaN	от 0 до 4,5 мм	NaN	4-11 V	BRONC Wireless Pen V1	Авиационный алюминий с защитным покрытием	NaN	Швейцарский двигатель 11000 об/мин	NaN	6 месяцев	NaN	tatu-shop
267	Беспроводная машинка для татуажа - Defenderr FENIX S PRO Pink	28950	146,4 г	NaN	1,5 часа	NaN	2000 мАч	NaN	NaN	авиационный алюминий с защитным покрытием	NaN	2W - 12000 об	NaN	1 год	NaN	tatu-shop
268	Беспроводная тату машинка JACK & ALEXX Easy Pro Strokes 4.5мм	44500	570 гр	до 5 часов	NaN	NaN	NaN	NaN	JACK & ALEXX Easy Pro	Авиационный алюминий	NaN	NaN	NaN	1 год	NaN	tatu-shop
269	Беспроводная тату машинка Dragonhawk Atom2 Stroke 2.8mm X 2Power Red	10390	400 гр	3 часа	NaN	0-4,0 мм	800 mA/ч	2-12V	Dragonhawk Atom 2	авиационный алюминий	NaN	Coreless Motor 12V/10000 об/мин	NaN	6 месяцев	NaN	tatu-shop
270	Роторная тату машинка Pen Hawk GSH-500 purple	3990	158 гр	NaN	NaN	NaN	NaN	3-10 В	Pen Hawk GSH-500	NaN	NaN	Тайвань	Solong Tattoo	NaN	NaN	tatu-shop
271	Универсальная роторная тату машина Burlak Solo Pro Platinum	23000	104 г	NaN	NaN	NaN	NaN	NaN	Burlak Solo Pro	NaN	NaN	(11 Вт) 10000 об	Burlak Rotary (Россия)	NaN	NaN	tatu-shop
272	Роторная тату машинка Pen Hawk GSH-500 green	3990	158 гр	NaN	NaN	NaN	NaN	3-10 В	Pen Hawk GSH-500	NaN	NaN	Тайвань	Solong Tattoo	NaN	NaN	tatu-shop
273	Беспроводная тату машинка EQUALIZER WIRELESS NEUTRON ROTARY	53000	170 г (без батареек)	до 8 часов на одном заряде	2 часа	3,5 мм (прямой привод)	NaN	NaN	Equalizer Wireless Neutron	NaN	NaN	NaN	NaN	NaN	NaN	tatu-shop
274	Роторная тату машинка Dragonhawk Atom M3 red	3380	155 гр	NaN	NaN	NaN	NaN	6-9 V	NaN	авиационный алюминий	NaN	Япония 8V - 10000 об/мин	NaN	6 месяцев	NaN	tatu-shop
275	Беспроводная машинка для татуажа Mast P40 PMU Stroke 2.5mm Pink	9950	120 г	5 часов	NaN	0-3,5 мм	NaN	4-10V	Mast P40	Авиационный алюминий	NaN	Mast Special Edition Coreless Motor 10V/10000 об	NaN	6 месяцев	NaN	tatu-shop
276	Беспроводная тату машинка EZ EvoTech S Wireless 4mm Stroke gray	9240	160 гр	до 4 часов	2 часа	0 - 4,5 мм	NaN	5 - 9V	EZ EvoTech S	авиационный алюминий	NaN	NaN	EZ Tattoo	6 месяцев	NaN	tatu-shop
277	Беспроводная тату машинка AVA GT EP8 Plus Wireless Pen 4.2mm Stroke Grey	10590	NaN	4-8 часов	3 часа	NaN	NaN	4,2-12 V	NaN	авиационный алюминий	NaN	Germany Formula Prcious Metal Brush DC Motor (5W) 12000 rpm	AVA TATTOO MACHINE	6 месяцев	NaN	tatu-shop
278	Роторная тату машинка Mast P10 Pink	6440	117 г	NaN	NaN	NaN	NaN	5 - 8 V 9000 об/мин	NaN	алюминий	3 Ватт	Япония	DragonHawk	6 месяцев	NaN	tatu-shop
279	Беспроводная тату машинка AVA GT EP8 Plus Wireless Pen 4.2mm Stroke Red	10590	NaN	4-8 часов	3 часа	NaN	NaN	4,2-12 V	NaN	авиационный алюминий	NaN	Germany Formula Prcious Metal Brush DC Motor (5W) 12000 rpm	AVA TATTOO MACHINE	6 месяцев	NaN	tatu-shop
478	Роторная тату машинка Mast P30 SMP black	7630	77 г	NaN	NaN	до 4,5 мм (регулировка вылета осуществляется выкручиванием держателя)	NaN	7-9В	NaN	авиационный алюминий	3 Ватт	Япония	DragonHawk	6 месяцев	NaN	tatu-shop
479	Беспроводная тату машинка BRONC V80 Strokes 2.0 - 4.2mm Black	7380	400 гр	до 8 часов	3 часа	от 0 до 4,5 мм (регулировка вылета осуществляется выкручиванием держателя)	NaN	4-12 V	BRONC V80	Авиационный алюминий с защитным покрытием	NaN	Coreless Motor 12V / 10000 об/мин	NaN	6 месяцев	NaN	tatu-shop
480	Роторная тату машинка Dragon Small-x3 orange	1945	110 г	NaN	NaN	NaN	NaN	NaN	Dragon Small-x3	NaN	NaN	Тайвань	Yilong Tattoo Supply	NaN	NaN	tatu-shop
481	Универсальная роторная тату машинка Skinductor Vertigo 2	15000	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	tatu-shop
482	Беспроводная тату машинка MAST Tour Y22 Wireless Purple	10990	138 г	до 4 часов	NaN	0-4 мм	NaN	5-12V	MAST Tour Y22 Wireless	Алюминий	NaN	Япония - 8V/10000 об	NaN	6 месяцев	NaN	tatu-shop
483	Роторная тату машинка Mast Tour Mini + Power Mast P112 red	9640	57 г	6 часов	NaN	NaN	1200 мАч	5 - 8 В	NaN	алюминий	3 Ватт	Япония 8V 9000 об/мин	DragonHawk	6 месяцев	NaN	tatu-shop
484	Беспроводная роторная тату машинка Vlad Blad Ultron 3 Stroke 4.2mm	93000	170 г	до 7 часов	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	Vlad Blad (Россия)	1 год	NaN	tatu-shop
485	Роторная тату машинка Rocket Mini Pen orange	3570	115 г	NaN	NaN	до 4,5 мм (регулировка вылета осуществляется выкручиванием держателя)	NaN	NaN	Rocket Mini Pen	NaN	NaN	8V-10000 об	Rocket Tattoo	NaN	NaN	tatu-shop
486	Беспроводная машинка для татуажа EZ LOLA LIGHT PMU x 2Power Black-Red Gradient	11850	81 гр	3-5 часов	NaN	0-4,5 мм	800 mA/ч	4-12V	EZ LOLA LIGHT	Авиационный алюминий	NaN	Coreless Motor 12V/10000 об/мин	NaN	6 месяцев	NaN	tatu-shop
487	Беспроводная роторная машинка AVA SOULNOVA E2 PERMANENT MAKEUP PEN Grey	9340	105 г	3-7 ч	2 ч	0 - 3,5 мм	NaN	4,5 - 11V	SOULNOVA E2 PERMANENT MAKEUP PEN	авиационный алюминий	NaN	NaN	AVA TATTOO MACHINE	6 месяцев	NaN	tatu-shop
488	Роторная тату машинка Pen - Fox V2 red	2680	130 гр	NaN	NaN	NaN	NaN	5-10 V	Fox V2	авиационный алюминий	NaN	Японский двигатель	Solong Tattoo	NaN	NaN	tatu-shop
489	Беспроводная тату машинка EZ Caster Wireless Gold	3850	171 г	5 часов	NaN	от 0 до 4,5 мм	NaN	5-12V	EZ Caster	авиационный алюминий	NaN	EZ Customized Motor	EZ Tattoo	6 месяцев	NaN	tatu-shop
490	Беспроводная машинка для перманентного макияжа INKin Polar PMU Red	8990	73г	NaN	1,5 ч	0 - 3,5 мм	NaN	5 - 10V	INKin Polar Pmu	авиационный алюминий	NaN	NaN	INKin - EZ Tattoo	6 месяцев	NaN	tatu-shop
491	Беспроводная тату машинка MAST Tour SIYA Black	12990	133 г	до 5 часов	NaN	0-4 мм	NaN	5-12V	MAST Tour SIYA	Алюминий	NaN	Япония - 8V/10000 об	NaN	6 месяцев	NaN	tatu-shop
492	Беспроводная тату машинка Yilong K5 Pro Black	11390	253 г	NaN	NaN	NaN	1900 мАч	5-12 V	NaN	авиационный алюминий	NaN	Бесщеточный двигатель 8000-10000 об/мин	NaN	NaN	NaN	tatu-shop
493	Беспроводная машинка для татуажа - Mast P20 Permanent With 2.5MM Stroke X 2 Power Silver	11870	122 г	4-6 часов	NaN	0-3,5 мм	NaN	4-10V	Mast P20	Авиационный алюминий	NaN	Mast Special Edition Coreless Motor 10V/10000 об	NaN	6 месяцев	NaN	tatu-shop
494	Беспроводная тату машинка EZ Popu Diva PMU 6 Stroke X 2 Power Lavender	21480	550 гр	5 -7 ч	2 ч	0 - 4,5 мм	1600 mA/ч	4 - 12V	EZ Popu Diva	авиационный алюминий с защитным покрытием	NaN	NaN	EZ Tattoo	6 месяцев	NaN	tatu-shop
495	Беспроводная тату машинка MAST Lancer Wireless Red	14990	190 г	до 6 часов	NaN	0-4,5 мм	NaN	5-12V	NaN	Алюминий	NaN	Японский мотор	NaN	6 месяцев	NaN	tatu-shop
496	Беспроводная машинка для перманентного макияжа EZ LOLA Air S PMU X 2 Power Silver	10225	105 гр	NaN	2 часа	0 - 3,5 мм	NaN	3 - 10V	EZ LOLA Air S PMU	авиационный алюминий	NaN	NaN	EZ Tattoo	6 месяцев	NaN	tatu-shop
497	Беспроводная тату машинка EZ Filter Freedom X 2 Power Red	6660	200 г	NaN	NaN	от 0 до 4,5 мм	NaN	5-12V	EZ Filter Freedom	авиационный алюминий	NaN	Coreless Motor	EZ Tattoo	6 месяцев	NaN	tatu-shop
498	Роторная тату машинка Dragon Small-x3 green	1945	110 г	NaN	NaN	NaN	NaN	NaN	Dragon Small-x3	NaN	NaN	Тайвань	Yilong Tattoo Supply	NaN	NaN	tatu-shop
499	Беспроводная машинка для татуажа EZ LOLA AIR Wireless Battery Silver Power-Pink Gradient	10570	85,4 г	2-3 ч	1,5 ч	0 - 3,5 мм	NaN	5 - 10V	EZ LOLA AIR	авиационный алюминий	NaN	NaN	EZ Tattoo	6 месяцев	NaN	tatu-shop
500	Беспроводная машинка для татуажа AVA Soulnova Flora E5 PMU Stroke 2.0-3.2mm Gold	15380	413 г	3-7 часов	2 часа	NaN	NaN	4,5-12 V	AVA Soulnova Flora E5 PMU	авиационный алюминий	5W	AVA motor - 9000 об/мин	AVA TATTOO MACHINE	6 месяцев	NaN	tatu-shop
501	Беспроводная тату машинка Ambition Seher Adjustable Stroke Silver	16490	266 гр	до 8 часов	3 ч	NaN	NaN	4,5-12V	Ambition Seher	авиационный алюминий	NaN	Coreless Motor 10V - 10000 об/мин	Ambition Tattoo	6 месяцев	NaN	tatu-shop
502	Беспроводная тату машинка DragonHawk X7 Wireless Smart Screen AI	13750	NaN	до 7 часов	NaN	NaN	NaN	5-13 V	NaN	авиационный алюминий	NaN	Brushless motor - Бесщеточный двигатель M-core 12V / 10500 об/мин	NaN	6 месяцев	NaN	tatu-shop
503	Роторная тату машинка Mast Magi PM Black	6380	91 г	NaN	NaN	до 4,5 мм (регулировка вылета осуществляется выкручиванием держателя)	NaN	5 - 9 V	Mast Magi	алюминий	NaN	Япония 12В/12000 об	DragonHawk	6 месяцев	NaN	tatu-shop
504	Беспроводная тату машинка EZ Filter X40 Strokes 2.0-4.0mm X 2Power Black	10740	269 гр	до 5 часов	2 часа	от 0 до 4,5 мм	1600 mA/ч	4-12V	EZ Filter X40	Авиационный алюминий	NaN	Двигатель без сердечника EZ 12V-9000 об/мин	EZ TATTOO	6 месяцев	NaN	tatu-shop
505	Беспроводная тату машинка JC JIECIRON BLADE 3,5 Stroke Black	8990	175 гр	до 7 часов	NaN	NaN	1800 мАч	5-12V	JC JIECIRON BLADE	Авиационный алюминий	NaN	NaN	JC JIECIRON	NaN	NaN	tatu-shop
506	Беспроводная тату машинка EZ P3 Pro 6 Strokes 2 Power Gloss Black	15990	247 г	до 5 часов	2 часа	NaN	NaN	5-12 V	NaN	авиационный алюминий с защитным покрытием	NaN	EZ Customized External Rotor Brushless Motor - 12V/10000 об/мин	NaN	6 месяцев	NaN	tatu-shop
507	Беспроводная тату машинка MAST Tour Y22 Wireless Black	10990	138 г	до 4 часов	NaN	0-4 мм	NaN	5-12V	MAST Tour Y22 Wireless	Алюминий	NaN	Япония - 8V/10000 об	NaN	6 месяцев	NaN	tatu-shop
508	Роторная тату машинка DragoArt Storm Black	2990	114 г	NaN	NaN	NaN	NaN	6-8V	NaN	авиационный алюминий	NaN	Advanced Customization Motor - 10000 об/мин	DragoArt	NaN	NaN	tatu-shop
509	Беспроводная тату машинка BRONC V12 MAX Adjustable Wireless Pen 6 Stroke Grey	14990	235 г	до 10 часов	NaN	от 0 до 4,5 мм	NaN	4-12 V	BRONC V12 MAX	Авиационный алюминий	NaN	Швейцарский двигатель 7Вт	NaN	6 месяцев	NaN	tatu-shop
510	Машинка для татуажа WTE Universal Princess 2024 Black & WTE Power Rca	36200	52 г	до 5 часов	NaN	NaN	1300 мАч	NaN	WTE POWER RCA	анодированный алюминий	NaN	NaN	WTE Professional	NaN	NaN	tatu-shop
511	Беспроводная тату машинка EZ Portex Generation P2S Pro x 2 Power Red	10480	197 г	до 5 часов	2 часа	NaN	NaN	4-12 V	NaN	авиационный алюминий с защитным покрытием	NaN	EZ Customized Swiss - 12V/10800 об/мин	NaN	6 месяцев	NaN	tatu-shop
512	Роторная тату машинка Mast Sensor With 4MM Stroke Pink	8960	133 г	NaN	NaN	NaN	NaN	6-10V	NaN	авиационный алюминий	NaN	Mcore Бесщеточный 12V 10000 об/мин	DragonHawk	6 месяцев	NaN	tatu-shop
513	Беспроводная тату машинка Dragonhawk L3 Wireless Tattoo Gun 7 Strokes Black	13700	222 г	до 7 часов	2 часа	NaN	NaN	4-12 V	Dragonhawk L3	Авиационный алюминий с защитным покрытием	NaN	Powerful Motor MCORE 8V / 6500 об/мин	NaN	6 месяцев	NaN	tatu-shop
514	Роторная тату машинка Rocket Mini Pen & Wireless Battery red	5690	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	tatu-shop
515	Беспроводная машинка Mast P60 PMU And Tattoo Adjustable 2.2mm-3.2mm Stroke Pink	11540	121 г	около 3 часов	NaN	0-3,5 мм	NaN	4-10V	Mast P60	Авиационный алюминий	NaN	Mast Special Edition Mcore-P 11000 об/мин	NaN	6 месяцев	NaN	tatu-shop
516	Беспроводная тату машинка EZ Filter X40 Strokes 2.0-4.0mm X 2Power Grey	10740	269 гр	до 5 часов	2 часа	от 0 до 4,5 мм	1600 mA/ч	4-12V	EZ Filter X40	Авиационный алюминий	NaN	Двигатель без сердечника EZ 12V-9000 об/мин	EZ TATTOO	6 месяцев	NaN	tatu-shop
517	Роторная тату машинка Pen Hawk GSH-500 black	3990	158 гр	NaN	NaN	NaN	NaN	3-10 В	Pen Hawk GSH-500	NaN	NaN	Тайвань	Solong Tattoo	NaN	NaN	tatu-shop
518	Беспроводная машинка для татуажа EZ LOLA AIR Wireless Battery Black Power-Pink Gradient	10570	85,4 г	2-3 ч	1,5 ч	0 - 3,5 мм	NaN	5 - 10V	EZ LOLA AIR	авиационный алюминий	NaN	NaN	EZ Tattoo	6 месяцев	NaN	tatu-shop
519	Универсальная роторная тату машина Burlak Solo Pro Ring	23000	104 г	NaN	NaN	NaN	NaN	NaN	Burlak Solo Pro	NaN	NaN	(11 Вт) 10000 об	Burlak Rotary (Россия)	NaN	NaN	tatu-shop
830	Роторная тату машинка EQUALISER DROP PEN BLACK	35150	180 г	NaN	NaN	от 0 до 4,5 мм	NaN	NaN	EQUALISER Drop Pen	Алюминий	NaN	Equalizer 6W	NaN	NaN	NaN	tatu-shop
520	Беспроводная тату машинка BRONC V12 MAX Adjustable Wireless Pen 6 Stroke Black	14990	235 г	до 10 часов	NaN	от 0 до 4,5 мм	NaN	4-12 V	BRONC V12 MAX	Авиационный алюминий	NaN	Швейцарский двигатель 7Вт	NaN	6 месяцев	NaN	tatu-shop
521	Беспроводная тату машинка MAST Riviera Frequency 4mm Stroke Black	10400	325 гр	до 6 часов	2 часа	NaN	1800 mA/ч	NaN	MAST Riviera	Авиационный алюминий	NaN	Brushless speed regulating motor - бесщеточный двигатель	NaN	6 месяцев	NaN	tatu-shop
522	Беспроводная тату машинка MAST FLIP 3 Wireless 7 Strokes	13740	395 гр	до 8 часов	до 2 часов	NaN	NaN	NaN	NaN	Авиационный алюминий	NaN	Coreless Motor Mcore 12В-10000 об/мин	NaN	6 месяцев	NaN	tatu-shop
523	Беспроводная тату машинка DragoArt Magic Wand Purple	6980	150 г	4-8 часов	NaN	от 0 до 4	NaN	6-11V	Magic Wand	авиационный алюминий	NaN	Япония	DragoArt Tattoo	NaN	12800 об	tatu-shop
524	Беспроводная тату машинка EZ Caster S Wireless Gold	3850	171 г	5 часов	NaN	от 0 до 4,5 мм	NaN	5-12V	EZ Caster S	авиационный алюминий	NaN	EZ Customized Motor	EZ Tattoo	6 месяцев	NaN	tatu-shop
525	Беспроводная тату машинка MICEYA MCY-1003 Wireless Tattoo & PMU Pen Black	15990	149 г	до 7 часов	NaN	от 0 до 4,5 мм	NaN	4V-12V	MICEYA MCY-1003	Авиационный алюминий	NaN	Швейцарский двигатель 12000 об/мин	NaN	6 месяцев	NaN	tatu-shop
526	Беспроводная тату машинка Skinner Innovation PRO 2.0 Stroke 3,8mm Silver	25000	200 гр	до 10 часов	NaN	NaN	2000 мАч	5-13V	Skinner Innovation PRO 2	Авиационный алюминий	NaN	Бесколлекторный двигатель 5	Skinner Tattoo	NaN	NaN	tatu-shop
527	Беспроводная роторная тату машинка - BRONC Wireless Pen V8 silver	13790	227 г	от 7 до 9 часов	NaN	от 0 до 4,5 мм	NaN	4,5-11 V	BRONC Wireless Pen V8	Алюминий	NaN	Швейцарский двигатель	NaN	6 месяцев	NaN	tatu-shop
528	Беспроводная машинка для татуажа - Mast P20 Permanent With 2.5MM Stroke X 2 Power Pink	11870	122 г	4-6 часов	NaN	0-3,5 мм	NaN	4-10V	Mast P20	Авиационный алюминий	NaN	Mast Special Edition Coreless Motor 10V/10000 об	NaN	6 месяцев	NaN	tatu-shop
529	Беспроводная машинка для татуажа EZ LOLA AIR Pro PMU Wireless 6 Strokes Red	11980	111 г	4 - 6 ч	2 ч	0 - 3,5 мм	NaN	3 - 10V	EZ LOLA AIR Pro	авиационный алюминий	NaN	NaN	EZ Tattoo	6 месяцев	NaN	tatu-shop
530	Беспроводная машинка для тату и татуажа Cobra Magi P9 Multi-Mode Stroke 3.0mm Black	7990	170 гр	до 4 часов	1 час	NaN	NaN	2	Cobra Magi P9 Multi-Mode	Авиационный алюминий	NaN	NaN	Cobra Tattoo	NaN	NaN	tatu-shop
531	Беспроводная машинка для татуажа EZ LOLA LIGHT PMU Black	9890	81 гр	3-5 часов	NaN	0-4,5 мм	800 mA/ч	4-12V	EZ LOLA LIGHT	Авиационный алюминий	NaN	Coreless Motor 12V/10000 об/мин	NaN	6 месяцев	NaN	tatu-shop
532	Роторная тату машинка EX3 red	2990	110 гр	NaN	NaN	NaN	NaN	5 - 10 V	NaN	NaN	NaN	Тайвань	Solong Tattoo	NaN	NaN	tatu-shop
533	Беспроводная тату машинка Big Wasp Meteorix PRO Adjustable Wireless Pen Red	12690	245 г	до 9 часов	NaN	NaN	NaN	5-11 V	Big Wasp Meteorix PRO Adjustable Wireless Pen	авиационный алюминий	NaN	DC-motor Swiss Motor - Швейцарский двигатель	NaN	6 месяцев	NaN	tatu-shop
534	Беспроводная тату машинка Yilong Y15 Battery Tattoo Pen Coral Red	6990	142 г	до 8 часов	NaN	0-4 мм	NaN	4-12V	Yilong Y15	Авиационный алюминий	NaN	Brush Coreless Motor 12V/11000 об	NaN	NaN	NaN	tatu-shop
535	Беспроводная тату машинка Ambition Soldier MAX Gold	15990	201г	до 10 часов	NaN	NaN	NaN	4-12V	Ambition Soldier Max	Авиационный алюминий	NaN	Custom Coreless Motor 12V-13000 об/мин	Ambition Tattoo	6 месяцев	NaN	tatu-shop
536	Беспроводная тату машинка EZ P3 Pro 6 Strokes 2 Power Matte Gray	15990	247 г	до 5 часов	2 часа	NaN	NaN	4-12 V	NaN	авиационный алюминий с защитным покрытием	NaN	EZ Customized External Rotor Brushless Motor - 12V/10000 об/мин	NaN	6 месяцев	NaN	tatu-shop
537	Беспроводная тату машинка Yilong Boxter Stroke 3,5mm Black	5450	170 г	до 5 часов	2 часа	NaN	NaN	4-12 V	NaN	Авиационный алюминий с защитным покрытием	NaN	12V-10000 об/мин	NaN	NaN	NaN	tatu-shop
538	Беспроводная тату машинка WOS E70 Pro Adjustable Stroke 3.0-5.0mm Gray	16490	775 гр	NaN	2-3 часа	NaN	1900 мАч	4,5-12 V	WOS E70 Pro	авиационный алюминий	7	WOS Brushless Motor - 10500 об/мин	WOS Tattoo	6 месяцев	NaN	tatu-shop
539	Беспроводная роторная тату машинка Flux HM-900 red	7990	99 г	до 4 часов	NaN	от 0 до 4	NaN	5-9 V	Flux HM-900	авиационный алюминий	NaN	Япония 12V-12000 об/мин	Solong Tattoo	NaN	NaN	tatu-shop
540	Беспроводная тату машинка EZ INKIN CL2 MAX Wireless Tattoo Pen 3400mAh Black	7920	161 г	7 часов	NaN	от 0 до 4 мм	NaN	5-12V	INKIN CL2 MAX	авиационный алюминий	NaN	Brushless motor - Бесщеточный двигатель	INKIN - EZ Tattoo	6 месяцев	10000 об	tatu-shop
541	Беспроводная тату машинка MAST ARCHER S ULTRA GREEN	15960	169 г	4-8 часов	50 минут	от 0 до 4,5 мм	NaN	4-12V	MAST Archer S	Авиационный алюминий	NaN	Высокопроизводительный бесщеточный двигатель M-Core	MAST (DragonHawk)	6 месяцев	NaN	tatu-shop
542	Беспроводная тату машинка Dragonhawk X8 Tunable Frequency 4mm Stroke Green	11800	144г	до 3 часов	2 часа	NaN	NaN	NaN	NaN	авиационный алюминий	NaN	Brushless motor - бесщеточный двигатель	NaN	6 месяцев	NaN	tatu-shop
543	Беспроводная тату машинка AVA DUKE V3 Wireless Pen Blue	7380	250 г	4-8 часов	2 часа	NaN	NaN	4,5-12 V	NaN	авиационный алюминий	NaN	Carbon Brush Motor (3	AVA TATTOO MACHINE	6 месяцев	NaN	tatu-shop
544	Беспроводная тату машинка - Pen Dragonhawk Armor Wireless Rotary pink	13380	186 г	до 6 часов	NaN	от 0 до 4	NaN	5-12V	NaN	Алюминий	NaN	Японский мотор	NaN	6 месяцев	NaN	tatu-shop
3398	Mast Wraith	24063	NaN	NaN	NaN	3.5	NaN	NaN	NaN	NaN	NaN	NaN	Китай	6 месяцев	NaN	fenix-tattoo
545	Беспроводная машинка для татуажа EZ LOLA AIR Wireless Battery Black Power-Purple Gradient	10570	85,4 г	2-3 ч	1,5 ч	0 - 3,5 мм	NaN	5 - 10V	EZ LOLA AIR	авиационный алюминий	NaN	NaN	EZ Tattoo	6 месяцев	NaN	tatu-shop
546	Роторная тату машинка Mast Tour 2 Tattoo Gun With Thin Pink	4980	59 грамм	NaN	NaN	NaN	NaN	4-12V	Mast Tour 2 Tattoo Gun With Thin	Авиационный алюминий	NaN	Mcore Coreless Motor 12V/10000 об/мин	MAST (DragonHawk)	6 месяцев	NaN	tatu-shop
547	Тату машинка Dragonhawk Tour Y23 Adjustable Stroke 2.0-3.3mm	6240	93 г	NaN	NaN	NaN	NaN	NaN	NaN	авиационный алюминий	NaN	Coreless Motor 12V-10000 об/мин	NaN	6 месяцев	NaN	tatu-shop
548	Беспроводная тату машинка EZ Portex Generation P2S Pro x 2 Power Green	10480	197 г	до 5 часов	2 часа	NaN	NaN	4-12 V	NaN	авиационный алюминий с защитным покрытием	NaN	EZ Customized Swiss - 12V/10800 об/мин	NaN	6 месяцев	NaN	tatu-shop
549	Роторная тату машинка EZ Dagger D-Pack Black (в блистере)	1295	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	tatu-shop
550	Беспроводная тату машинка - Pen Dragonhawk Armor Wireless Rotary black	13380	186 г	до 6 часов	NaN	от 0 до 4	NaN	5-12V	NaN	Алюминий	NaN	Японский мотор	NaN	6 месяцев	NaN	tatu-shop
551	Роторная тату машинка Dragon Extreme EX7 red	3890	127 гр	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	Японский 8V - 8000 об/мин	DragonHawk	6 месяцев	NaN	tatu-shop
552	Роторная тату машинка Vlad Blad ULTRON PEN PMU	18870	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	Vlad Blad (Россия)	1 год	NaN	tatu-shop
553	Универсальная роторная тату машина Burlak Solo 2 black	23000	117 г	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	(11 Вт) 10000 об	Burlak Rotary (Россия)	NaN	NaN	tatu-shop
554	Беспроводная тату машинка BRONC X2 Adjustable Stroke 11 Options Blue	17950	550 гр	NaN	NaN	от 0 до 4,5 мм (регулировка вылета осуществляется выкручиванием держателя)	NaN	4-12 V	BRONC X2	Авиационный алюминий с защитным покрытием	NaN	Швейцарский двигатель 12V / 11000 об/мин	NaN	6 месяцев	NaN	tatu-shop
555	Роторная машинка для татуажа Mast Tour Air PMU 2.3mm Stroke Black	5990	45 грамм	NaN	NaN	NaN	NaN	5-9V	Mast Tour Air PMU	Авиационный алюминий	NaN	Mcore Coreless Motor 12V /10000 об/мин	MAST	6 месяцев	NaN	tatu-shop
556	Беспроводная тату машинка MAST Archer 2 Max With Color Screen Bluetooth Grey	11450	460 гр	до 8 часов	NaN	от 0 до 4,5 мм	NaN	4-12V	MAST Archer 2 Max	Авиационный алюминий	NaN	Brushless Motor M-core - Бесщеточный двигатель 12V/10000 об/мин	MAST (DragonHawk)	6 месяцев	NaN	tatu-shop
557	Беспроводная тату машинка EZ EvoTech S Wireless 3,5mm Stroke black	9240	160 гр	до 4 часов	2 часа	0 - 4,5 мм	NaN	5 - 9V	EZ EvoTech S	авиационный алюминий	NaN	NaN	EZ Tattoo	6 месяцев	NaN	tatu-shop
558	Беспроводная тату машинка - DragonHawk Pen AION 2 battery	13700	180 г	6 часов	NaN	0 - 4,5 мм	NaN	5-12V	DragonHawk Pen AION 2 battery	Алюминий	NaN	Япония 12V-9900 об/мин	NaN	6 месяцев	NaN	tatu-shop
559	Роторная тату машинка Bronc STPS-021 black	4750	85 г	NaN	NaN	NaN	NaN	NaN	Bronc STPS-021	NaN	NaN	Тайвань	Yilong Tattoo Supply	NaN	NaN	tatu-shop
560	Беспроводная тату машинка BRONC V12 MAX Adjustable Wireless Pen 6 Stroke Red	14990	235 г	до 10 часов	NaN	от 0 до 4,5 мм	NaN	4-12 V	BRONC V12 MAX	Авиационный алюминий	NaN	Швейцарский двигатель 7Вт	NaN	6 месяцев	NaN	tatu-shop
561	Беспроводная тату машинка WJX W3 Wireless Pen 7 Strokes Silver	19860	198 г	до 4 часов	2 часа	NaN	NaN	4-12 V	NaN	авиационный алюминий с защитным покрытием	NaN	Высокопроизводительный двигатель без сердечника Careless motor 12V/10000 об/мин	NaN	6 месяцев	NaN	tatu-shop
562	Беспроводная тату машинка Yilong Alligator Strokes 2.7-4.5mm X 2 Power Black	8990	500 гр	до 5 часов	2 часа	NaN	NaN	4-12 V	Yilong Alligator	Авиационный алюминий с защитным покрытием	NaN	Brushless Motor 12V-12000 об/мин	NaN	NaN	NaN	tatu-shop
563	Роторная тату машинка Mast P10 Ultra Stroke 3.5mm x WX-6 Pro Tattoo Battery	7990	51 г	до 6 часов	2-3 часа	до 4 мм (регулировка вылета осуществляется выкручиванием держателя)	1300 мАч	5-10 V	WX-6 Pro	алюминий	NaN	Японский мотор	MAST - DragonHawk	6 месяцев	NaN	tatu-shop
564	Беспроводная машинка для татуажа EZ LOLA LIGHT PMU Rose Gold	9890	81 гр	3-5 часов	NaN	0-4,5 мм	800 mA/ч	4-12V	EZ LOLA LIGHT	Авиационный алюминий	NaN	Coreless Motor 12V/10000 об/мин	NaN	6 месяцев	NaN	tatu-shop
565	Беспроводная машинка для татуажа EZ LOLA LIGHT PMU x 2Power Rose Gold	11850	81 гр	3-5 часов	NaN	0-4,5 мм	800 mA/ч	4-12V	EZ LOLA LIGHT	Авиационный алюминий	NaN	Coreless Motor 12V/10000 об/мин	NaN	6 месяцев	NaN	tatu-shop
566	Беспроводная машинка для татуажа - Defenderr FENIX Chromium	23950	135 г	NaN	2,5 часа	NaN	1600 мАч	NaN	NaN	авиационный алюминий с защитным покрытием	NaN	2W - 12000 об	NaN	1 год	NaN	tatu-shop
567	Роторная тату машинка Dragon Rex CV-400 pink	4990	180 гр	NaN	NaN	NaN	NaN	6-9 V	NaN	авиационный алюминий	NaN	Mabuchi - 12000 об/мин	Solong Tattoo	NaN	NaN	tatu-shop
568	Роторная тату машинка Mast P10 Ultra Stroke 2.5mm x WX-6 Pro Tattoo Battery	7990	51 г	до 6 часов	2-3 часа	до 4 мм (регулировка вылета осуществляется выкручиванием держателя)	1300 мАч	5-10 V	WX-6 Pro	алюминий	NaN	Японский мотор	MAST - DragonHawk	6 месяцев	NaN	tatu-shop
569	Беспроводная тату машинка MICEYA MCY-1003 Wireless Tattoo & PMU Pen Silver	15990	149 г	до 7 часов	NaN	от 0 до 4,5 мм	NaN	4V-12V	MICEYA MCY-1003	Авиационный алюминий	NaN	Швейцарский двигатель 12000 об/мин	NaN	6 месяцев	NaN	tatu-shop
909	Машинка для перманентного макияжа и мини тату WTE Universal Princess Pen 2024 Black	29950	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	tatu-shop
570	Беспроводная тату машинка BRONC V77 Strokes 2.0 - 4.2mm Green	6990	410 гр	до 8 часов	3 часа	от 0 до 4,5 мм (регулировка вылета осуществляется выкручиванием держателя)	NaN	4-12 V	BRONC V77	Авиационный алюминий с защитным покрытием	NaN	Coreless Motor 12V / 9500 об/мин	NaN	6 месяцев	NaN	tatu-shop
571	Беспроводная тату машинка Cobra Morandi 3,5 Stroke Yellow	9990	175 гр	до 7 часов	NaN	NaN	1800 мАч	4,7-13V	Cobra Morandi	Авиационный алюминий	NaN	NaN	Cobra Tattoo	NaN	NaN	tatu-shop
572	Беспроводная тату машинка DragoArt Magic Wand Black	6980	150 г	4-8 часов	NaN	от 0 до 4	NaN	6-11V	Magic Wand	авиационный алюминий	NaN	Япония	DragoArt Tattoo	NaN	12800 об	tatu-shop
573	Беспроводная тату машинка EZ P3 Pro Lumina 6 Strokes X 2 Power Black	16380	480 гр	до 5 часов	2 часа	NaN	1600 mA/ч	4-12 V	EZ P3 Pro Lumina	авиационный алюминий с защитным покрытием	NaN	EZ Customized External Rotor Brushless Motor 12V-10000 об/мин	NaN	6 месяцев	NaN	tatu-shop
574	Роторная тату машинка MAST-NANO 800 mini pink	7740	82 г	NaN	NaN	до 4,5 мм (регулировка вылета осуществляется выкручиванием держателя)	NaN	5 - 8 В	MAST-NANO 800 mini	авиационный алюминий	NaN	Япония 8V	DragonHawk	6 месяцев	NaN	tatu-shop
575	Роторная тату машинка Stigma Rotary Tattoo Pen EM125 Black	3990	124 гр	NaN	NaN	NaN	NaN	6-11 V	Stigma Rotary Tattoo Pen EM125	авиационный алюминий	NaN	Япония	NaN	NaN	NaN	tatu-shop
576	Беспроводная тату машинка EZ Filter Freedom Silver	5180	200 г	5 часов	NaN	от 0 до 4,5 мм	NaN	5-12V	EZ Filter Freedom	авиационный алюминий	NaN	Coreless Motor	EZ Tattoo	6 месяцев	NaN	tatu-shop
577	Роторная тату машинка DragoArt Blade Gen II Silver	2990	138 гр	NaN	NaN	NaN	NaN	5 - 12 V 10000 об/мин	DragoArt Blade Gen II	авиационный алюминий	NaN	Тайвань (Premium Motor)	DragoArt Tattoo	NaN	NaN	tatu-shop
578	Беспроводная машинка для тату и татуажа Cobra Magi P9 Multi-Mode Stroke 3.0mm Blue	7990	170 гр	до 4 часов	1 час	NaN	NaN	2	Cobra Magi P9 Multi-Mode	Авиационный алюминий	NaN	NaN	Cobra Tattoo	NaN	NaN	tatu-shop
580	Беспроводная тату машинка BRONC V12 MAX Adjustable Wireless Pen 6 Stroke Green	14990	235 г	до 10 часов	NaN	от 0 до 4,5 мм	NaN	4-12 V	BRONC V12 MAX	Авиационный алюминий	NaN	Швейцарский двигатель 7Вт	NaN	6 месяцев	NaN	tatu-shop
581	Беспроводная тату машинка DragonHawk X4 Wireless Pen Green	11980	120 г	до 4 часов	2 часа	0-4,5 мм	NaN	4-12V	Dragonhawk X4	Авиационный алюминий	NaN	Японский мотор - 12V/10000 об	NaN	6 месяцев	NaN	tatu-shop
582	Беспроводная тату машинка EZ Filter Freedom Black	5180	200 г	5 часов	NaN	от 0 до 4,5 мм	NaN	5-12V	EZ Filter Freedom	авиационный алюминий	NaN	Coreless Motor	EZ Tattoo	6 месяцев	NaN	tatu-shop
583	Беспроводная тату машинка Ambition VIBE Black	12790	185 гр	до 10 часов	около 3 ч	NaN	NaN	4,5-12V	Ambition VIBE	Алюминий	NaN	Ambition Custom Motors 10000 оборотов в минуту	Ambition Tattoo	6 месяцев	NaN	tatu-shop
584	Беспроводная тату машинка BRONC TOUGH Wireless Pen 11 Stroke Army Green	15790	267 г	до 10 часов	2,5 часа	от 0 до 4,5 мм (регулировка вылета осуществляется выкручиванием держателя)	NaN	4-12 V	BRONC TOUGH	Авиационный алюминий с защитным покрытием	NaN	DC Swiss Motor - 11000 об/мин	NaN	6 месяцев	NaN	tatu-shop
585	Беспроводная тату машинка MAST Tour SIYA Pink Gradient	12990	133 г	до 5 часов	NaN	0-4 мм	NaN	5-12V	MAST Tour SIYA	Алюминий	NaN	Япония - 8V/10000 об	NaN	6 месяцев	NaN	tatu-shop
586	Беспроводная тату машинка DragonHawk SEA Capsule Shape 4.2mm Stroke Black	17380	1210 гр	3-4 часа	40 минут	от 0 до 4,5 мм	1050 mA/ч	4-12V	SEA Capsule Shape	Авиационный алюминий	NaN	Высокопроизводительный Brushless motor SEA 12V-11500 об/мин	DragonHawk Tattoo	6 месяцев	NaN	tatu-shop
587	Роторная тату машинка EZ INKIN MATO	5250	136 г	NaN	NaN	от 0 до 4	NaN	6 - 9V	EZ INKIN MATO	авиационный алюминий	NaN	Japan Coreless Motor	EZ Tattoo	6 месяцев	NaN	tatu-shop
588	Беспроводная тату машинка Cobra Morandi 3,5 Stroke Blue	9990	175 гр	до 7 часов	NaN	NaN	1800 мАч	4,7-13V	Cobra Morandi	Авиационный алюминий	NaN	NaN	Cobra Tattoo	NaN	NaN	tatu-shop
589	Роторная тату машинка Mast Magi PM Red	6380	91 г	NaN	NaN	до 4,5 мм (регулировка вылета осуществляется выкручиванием держателя)	NaN	5 - 9 V	Mast Magi	алюминий	NaN	Япония 12В/12000 об	DragonHawk	6 месяцев	NaN	tatu-shop
590	Роторная тату машинка Mast P15 Pen Machine Purple	6470	74 г	NaN	NaN	до 4 мм (регулировка вылета осуществляется выкручиванием держателя)	NaN	5 - 9 V	Mast P15	Авиационный алюминий	NaN	Японский двигатель без сердечника 9В/8000 об	DragonHawk	6 месяцев	NaN	tatu-shop
591	Беспроводная тату машинка AVA UNi-B Adjustable stroke 2.5-4.5mm Gold	15490	600 г	6-8 часов	2 часа	NaN	NaN	4,5-12 V	AVA UNi-B	авиационный алюминий	5 W	AVA motor Metal Brush DC motor - 10500 об/мин	AVA TATTOO MACHINE	6 месяцев	NaN	tatu-shop
592	Беспроводная тату машинка Defenderr INFINITY Army Green	22990	210 г	NaN	2,5 часа	NaN	1800 мАч	NaN	NaN	авиационный алюминий с защитным покрытием	NaN	V10 MAX - 6500 об	NaN	1 год	NaN	tatu-shop
593	Роторная тату машинка Pen Hawk GSX-900 gold	3990	155 гр	NaN	NaN	NaN	NaN	4-10 V	Pen Hawk GSX-900	NaN	NaN	Тайвань	Solong Tattoo	NaN	NaN	tatu-shop
594	Беспроводная тату машинка DragonHawk X4 Wireless Pen Black	11980	120 г	до 4 часов	2 часа	0-4,5 мм	NaN	4-12V	Dragonhawk X4	Авиационный алюминий	NaN	Японский мотор - 12V/10000 об	NaN	6 месяцев	NaN	tatu-shop
595	Роторная тату машинка EZ P4 Mini Gray	7990	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	tatu-shop
3399	Ambition Blade	14581	NaN	NaN	NaN	4.0	NaN	NaN	NaN	NaN	NaN	NaN	Китай	NaN	NaN	fenix-tattoo
596	Беспроводная машинка для татуажа AVA Soulnova Flora E5 PMU Stroke 2.0-3.2mm Purple	15380	413 г	3-7 часов	2 часа	NaN	NaN	4,5-12 V	AVA Soulnova Flora E5 PMU	авиационный алюминий	5W	AVA motor - 9000 об/мин	AVA TATTOO MACHINE	6 месяцев	NaN	tatu-shop
597	Беспроводная тату машинка EZ Filter X40 Strokes 2.0-4.0mm Black	8580	269 гр	до 5 часов	2 часа	от 0 до 4,5 мм	1600 mA/ч	4-12V	EZ Filter X40	Авиационный алюминий	NaN	Двигатель без сердечника EZ 12V-9000 об/мин	EZ TATTOO	6 месяцев	NaN	tatu-shop
598	Роторная машинка для татуажа EZ POPU TH015 Champagne	4240	66 грамм	NaN	NaN	NaN	NaN	6-8V	EZ POPU TH015	Авиационный алюминий	NaN	Японский двигатель 6000-8000 об/мин	EZ Tattoo	6 месяцев	NaN	tatu-shop
599	Беспроводная тату машинка Yilong K5 Pro Gray	11390	253 г	NaN	NaN	NaN	1900 мАч	5-12 V	NaN	авиационный алюминий	NaN	Бесщеточный двигатель 8000-10000 об/мин	NaN	NaN	NaN	tatu-shop
600	Беспроводная тату машинка BRONC V80 Strokes 2.0 - 4.2mm X 2Power Green	8990	480 гр	до 8 часов	3 часа	от 0 до 4,5 мм (регулировка вылета осуществляется выкручиванием держателя)	NaN	4-12 V	BRONC V80	Авиационный алюминий с защитным покрытием	NaN	Coreless Motor 12V / 10000 об/мин	NaN	6 месяцев	NaN	tatu-shop
601	Беспроводная роторная тату машинка Big Wasp Arrow RTM-114 Wireless Pen Grey	8590	240 г	от 7 до 9 часов	NaN	от 0 до 4 мм	NaN	5-11 V	Big Wasp Arrow RTM-114 Wireless Pen	Авиационный алюминий	NaN	DC-motor Swiss Motor - Швейцарский двигатель	NaN	6 месяцев	NaN	tatu-shop
602	Беспроводная тату машинка Cobra Morandi 3,5 Stroke Black	9990	175 гр	до 7 часов	NaN	NaN	1800 мАч	4,7-13V	Cobra Morandi	Авиационный алюминий	NaN	NaN	Cobra Tattoo	NaN	NaN	tatu-shop
603	Беспроводная машинка для татуажа - Mast P20 Permanent With 2.5MM Stroke Silver	9980	122 г	4-6 часов	NaN	0-3,5 мм	NaN	4-10V	Mast P20	Авиационный алюминий	NaN	Mast Special Edition Coreless Motor 10V/10000 об	NaN	6 месяцев	NaN	tatu-shop
604	Роторная тату машинка Pen Hawk GSX-900 red	3990	155 гр	NaN	NaN	NaN	NaN	4-10 V	Pen Hawk GSX-900	NaN	NaN	Тайвань	Solong Tattoo	NaN	NaN	tatu-shop
605	Роторная тату машинка BRONC V4 Tattoo & Makeup Gray	10360	79 гр	NaN	NaN	NaN	NaN	5-9V (татуаж	Bronc V4	авиационный алюминий	NaN	Швейцария 4,5 Вт	NaN	6 месяцев	NaN	tatu-shop
606	Роторная тату машинка Pen - Fox V2 black	2680	130 гр	NaN	NaN	NaN	NaN	5-10 V	Fox V2	авиационный алюминий	NaN	Японский двигатель	Solong Tattoo	NaN	NaN	tatu-shop
607	Беспроводная тату машинка MAST Tour SIYA Purple Gradient	12990	133 г	до 5 часов	NaN	0-4 мм	NaN	5-12V	MAST Tour SIYA	Алюминий	NaN	Япония - 8V/10000 об	NaN	6 месяцев	NaN	tatu-shop
608	Беспроводная тату машинка Flux Wireless Pen S11 Red	7990	210 г	до 6 часов	NaN	0-4 мм	NaN	4	Flux Wireless Pen S11	Алюминий	NaN	Япония 12V-12000 об/мин	Solong Tattoo	NaN	NaN	tatu-shop
609	Беспроводная тату машинка Yilong KUSH Strokes 2.4-4.2mm x 2 Power Black	8990	445 гр	до 5 часов	2 часа	NaN	1800 mA/ч	4-12 V	Yilong KUSH	Авиационный алюминий с защитным покрытием	NaN	Brushless Motor 12V-12000 об/мин	NaN	NaN	NaN	tatu-shop
610	Беспроводная тату машинка Skinner Innovation PRO 2.0 Stroke 4,5mm Silver	25000	200 гр	до 10 часов	NaN	NaN	2000 мАч	5-13V	Skinner Innovation PRO 2	Авиационный алюминий	NaN	Бесколлекторный двигатель 5	Skinner Tattoo	NaN	NaN	tatu-shop
611	Роторная тату машинка Mast FLEX WQ386	6430	150 г	NaN	NaN	NaN	NaN	от 6 до 8	NaN	авиационный алюминий	NaN	5 Ватт 8V - 11000 об/мин	DragonHawk	6 месяцев	NaN	tatu-shop
612	Беспроводная тату машинка Dragon PGX-30 black	6990	200 г	до 8 часов	NaN	от 0 до 4	NaN	5-12V	Dragon PGX-30	авиационный алюминий	NaN	Япония	Solong Tattoo	NaN	10800 об	tatu-shop
613	Беспроводная роторная тату машинка Big Wasp Arrow RTM-114 Wireless Pen Army Green	8590	240 г	от 7 до 9 часов	NaN	от 0 до 4 мм	NaN	5-11 V	Big Wasp Arrow RTM-114 Wireless Pen	Авиационный алюминий	NaN	DC-motor Swiss Motor - Швейцарский двигатель	NaN	6 месяцев	NaN	tatu-shop
614	Беспроводная роторная машинка AVA SOULNOVA E3 PERMANENT MAKEUP PEN Champagne	9390	105 г	3-7 ч	2 ч	0 - 3,5 мм	NaN	4,5 - 11V	SOULNOVA E3 PERMANENT MAKEUP PEN	авиационный алюминий	NaN	NaN	AVA TATTOO MACHINE	NaN	NaN	tatu-shop
615	Роторная беспроводная тату машинка EZ Portex Gen2 Versatile 2 Power Red	13340	176 г / 196 г (с блоком и без)	до 5 часов	2 часа	от 0 до 4,5 мм (регулировка вылета осуществляется выкручиванием держателя)	NaN	5-12 V	EZ Portex Gen2 Versatile	авиационный алюминий с защитным покрытием	NaN	NaN	EZ Tattoo	6 месяцев	NaN	tatu-shop
616	Машинка для татуажа WTE Universal Princess 2024 Red & WTE Power Rca	36200	52 г	до 5 часов	NaN	NaN	1300 мАч	NaN	WTE POWER RCA	анодированный алюминий	NaN	NaN	WTE Professional	NaN	NaN	tatu-shop
617	Беспроводная тату машинка DragoArt Tuner Strokes 2.5 - 4.5mm Black	10990	615г	7-10 часов	NaN	от 0 до 4	NaN	4-12V	DragoArt Tuner	авиационный алюминий с защитным покрытием	NaN	Brushless Motor 12V-12000 об	DragoArt Tattoo	NaN	NaN	tatu-shop
618	Беспроводная тату машинка NB Needle Bee Wireless Tattoo Pen WR-35A	4840	176 г	до 5 часов	NaN	0-4 мм	NaN	3-12V	NB Needle Bee WR-35A	Авиационный алюминий	NaN	Японский двигатель Mabuchi Motor 12V/12000 об	NaN	NaN	NaN	tatu-shop
619	Беспроводная роторная тату машинка Bronc Seraphic Wireless Pen For PMU & Tattoo Blue	12990	175 г	до 7 часов	NaN	от 0 до 4 мм	NaN	4-12 V	Bronc Seraphic Wireless Pen For PMU & Tattoo	Авиационной алюминий	NaN	Swiss motor - Швейцарский двигатель 11000 об/мин	NaN	6 месяцев	NaN	tatu-shop
988	Беспроводная тату машинка -  Dragonhawk Armor Pro Wireless	14990	192 г	до 6 часов	NaN	0-4,5 мм	NaN	5-12V	NaN	Алюминий	NaN	Японский мотор	NaN	6 месяцев	NaN	tatu-shop
620	Беспроводная роторная тату машинка Bronc Seraphic Wireless Pen For PMU & Tattoo Grey	12990	175 г	до 7 часов	NaN	от 0 до 4 мм	NaN	4-12 V	Bronc Seraphic Wireless Pen For PMU & Tattoo	Авиационной алюминий	NaN	Swiss motor - Швейцарский двигатель 11000 об/мин	NaN	6 месяцев	NaN	tatu-shop
621	Беспроводная тату машинка DragonHawk Fold 3 Wireless 7 Strokes	11330	213 г	до 5 часов	1,5 часа	NaN	NaN	4-12 V	NaN	авиационный алюминий	NaN	Coreless Motor 8V/6500 об/мин	NaN	6 месяцев	NaN	tatu-shop
622	Роторная машинка AVA SOULNOVA MAKEUP PEN Black	5930	82 г	NaN	NaN	NaN	NaN	4 - 10 V 11000 об/мин	NaN	авиационный алюминий	NaN	Япония	AVA TATTOO MACHINE	6 месяцев	NaN	tatu-shop
623	Машинка для перманентного макияжа и мини тату WTE Universal Princess V4 Pro	29950	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	tatu-shop
624	Беспроводная тату машинка EZ Filter Freedom X 2 Power Black	6660	200 г	NaN	NaN	от 0 до 4,5 мм	NaN	5-12V	EZ Filter Freedom	авиационный алюминий	NaN	Coreless Motor	EZ Tattoo	6 месяцев	NaN	tatu-shop
625	Роторная тату машинка BRONC V4 Tattoo & Makeup Red	10360	79 гр	NaN	NaN	NaN	NaN	5-9V (татуаж	Bronc V4	авиационный алюминий	NaN	Швейцария 4,5 Вт	NaN	6 месяцев	NaN	tatu-shop
626	Беспроводная тату машинка MAST Fold 2 Pro 2.4-4.2mm Strokes Gold	14480	400 гр	до 7 часов	2 часа	NaN	NaN	4-12 V	MAST Fold 2 Pro	Авиационный алюминий с защитным покрытием	NaN	Coreless motor 8V-6500 об/мин	NaN	6 месяцев	NaN	tatu-shop
627	Беспроводная роторная тату машинка Bronc Seraphic Wireless Pen For PMU & Tattoo Purple	12990	175 г	до 7 часов	NaN	от 0 до 4 мм	NaN	4-12 V	Bronc Seraphic Wireless Pen For PMU & Tattoo	Авиационной алюминий	NaN	Swiss motor - Швейцарский двигатель 11000 об/мин	NaN	6 месяцев	NaN	tatu-shop
628	Беспроводная роторная тату машинка Vlad Blad Ultron 3 Stroke 4.7mm	93000	170 г	до 7 часов	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	Vlad Blad (Россия)	1 год	NaN	tatu-shop
629	Роторная тату машинка Mast Tour Pro Plus Brushless 4MM Stroke	9540	118г	NaN	NaN	NaN	NaN	5-12V	NaN	авиационный алюминий	NaN	Brushless motor mcore-r1	DragonHawk	6 месяцев	NaN	tatu-shop
630	Роторная тату машинка EZ Defender 2-in-1 Matte Pink	5520	95 г	NaN	NaN	от 0 до 4	NaN	6 - 8,5V	EZ Defender 2-in-1	авиационный алюминий	NaN	EZ Custom Swiss Motors (Швейцария)	EZ Tattoo	6 месяцев	NaN	tatu-shop
631	Беспроводная тату машинка MAST Mini Pro 3.6mm Stroke Blue	9590	210 гр	до 8 часов	1,5 часа	NaN	1600 mA/ч	4-12 V	MAST Mini Pro	Авиационный алюминий	NaN	Coreless motor 12V - 12000 об/мин	NaN	6 месяцев	NaN	tatu-shop
632	Роторная тату машинка Rocket Mini Pen gray	3570	115 г	NaN	NaN	до 4,5 мм (регулировка вылета осуществляется выкручиванием держателя)	NaN	NaN	Rocket Mini Pen	NaN	NaN	8V-10000 об	Rocket Tattoo	NaN	NaN	tatu-shop
633	Беспроводная тату машинка EZ P2 MT Multi-Touch Red and White	14680	227 г	до 5 часов	2,5 часа	NaN	NaN	5 — 12 V	EZ P2 MT Multi-Touch	авиационный алюминий	NaN	NaN	EZ Tattoo	6 месяцев	10000 об/мин ± 10%	tatu-shop
634	Беспроводная тату машинка DragonHawk SEA Capsule Shape 4.2mm Stroke Rose Pink	17380	1210 гр	3-4 часа	40 минут	от 0 до 4,5 мм	1050 mA/ч	4-12V	SEA Capsule Shape	Авиационный алюминий	NaN	Высокопроизводительный Brushless motor SEA 12V-11500 об/мин	DragonHawk Tattoo	6 месяцев	NaN	tatu-shop
635	Роторная тату машинка DragoArt Atomic II Black	2760	147 гр	NaN	NaN	NaN	NaN	5 - 12 V 10000 об/мин	DragoArt Atomic II	авиационный алюминий	NaN	Тайвань (Premium Motor)	DragoArt Tattoo	NaN	NaN	tatu-shop
636	Беспроводная тату машинка NB Needle Bee Wireless Tattoo Pen WR-36 Black-Red	4840	180 г	до 5 часов	NaN	0-4 мм	NaN	3-12V	NB Needle Bee WR-36	Авиационный алюминий	NaN	Японский двигатель Mabuchi Motor 12V/12000 об	NaN	NaN	NaN	tatu-shop
637	Роторная тату машинка Mast P10 Red	6440	117 г	NaN	NaN	NaN	NaN	5 - 8 V 9000 об/мин	NaN	алюминий	3 Ватт	Япония	DragonHawk	6 месяцев	NaN	tatu-shop
638	Беспроводная машинка для татуажа - Mast P20 Permanent With 2.5MM Stroke Pink	9980	122 г	4-6 часов	NaN	0-3,5 мм	NaN	4-10V	Mast P20	Авиационный алюминий	NaN	Mast Special Edition Coreless Motor 10V/10000 об	NaN	6 месяцев	NaN	tatu-shop
639	Беспроводная тату машинка - MAST Amy With 4MM Stroke Pink	13990	115 г	до 3 часов	NaN	0-4 мм	NaN	4-12V	MAST Amy	Алюминий	NaN	Mast Special Edition Coreless Motor 9V/10400 об	NaN	6 месяцев	NaN	tatu-shop
640	Беспроводная роторная тату машинка DragonHawk W20 Wireless Pen	7830	196 г	до 4 часов	2 часа	NaN	NaN	5-12 V	DragonHawk W20	авиационный алюминий с защитным покрытием	NaN	Brushless motor - бесщеточный двигатель 12V/10000 об/мин	NaN	6 месяцев	NaN	tatu-shop
641	Беспроводная тату машинка Ambition Seher Adjustable Stroke Black	16490	266 гр	до 8 часов	3 ч	NaN	NaN	4,5-12V	Ambition Seher	авиационный алюминий	NaN	Coreless Motor 10V - 10000 об/мин	Ambition Tattoo	6 месяцев	NaN	tatu-shop
642	Беспроводная тату машинка JACK & ALEXX Easy Pro Strokes 3.0мм	44500	570 гр	до 5 часов	NaN	NaN	NaN	NaN	JACK & ALEXX Easy Pro	Авиационный алюминий	NaN	NaN	NaN	1 год	NaN	tatu-shop
643	Беспроводная тату машинка MAST Lancer Wireless Pen with 3.5mm Stroke Black	14990	190 г	до 6 часов	NaN	0-4,5 мм	NaN	5-12V	NaN	Алюминий	NaN	Японский мотор	NaN	6 месяцев	NaN	tatu-shop
644	Беспроводная тату машинка - Defenderr VECTOR Chromium	28500	188 г	NaN	2 часа	NaN	1500 мАч	NaN	NaN	авиационный алюминий с защитным покрытием	NaN	Faulhaber (Германия) - 6800 об	NaN	1 год	NaN	tatu-shop
645	Беспроводная тату машинка Dragonhawk Atom2 Stroke 2.8mm Gold	8960	300 гр	3 часа	NaN	0-4,0 мм	800 mA/ч	2-12V	Dragonhawk Atom 2	авиационный алюминий	NaN	Coreless Motor 12V/10000 об/мин	NaN	6 месяцев	NaN	tatu-shop
646	Роторная тату машинка - Defenderr Iron S Pink	9990	150 г	NaN	NaN	NaN	NaN	NaN	NaN	авиационный алюминий с защитным покрытием	NaN	Faulhaber (Германия) - 8000 об	NaN	1 год	NaN	tatu-shop
647	Беспроводная роторная тату машинка - BRONC Short Wireless Tattoo Pen Black	9990	151 г	от 4 до 7 часов	NaN	от 0 до 4,5 мм	NaN	4-11 V	BRONC SHORT	Алюминий	NaN	Швейцарский двигатель 11000 об/мин	NaN	6 месяцев	NaN	tatu-shop
648	Беспроводная роторная тату машинка Vlad Blad Ultron 3 MAX Stroke 4.2mm	99850	201 г	до 11 часов	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	Vlad Blad (Россия)	1 год	NaN	tatu-shop
649	Беспроводная машинка для татуажа - Defenderr ONYX AIR Gunmetal	16990	120 г	NaN	1,5 часа	NaN	750 мАч	NaN	NaN	авиационный алюминий с защитным покрытием	NaN	V10 MAX - 6500 об	NaN	1 год	NaN	tatu-shop
650	Беспроводная тату машинка EZ P3 Adjustable 6 Stroke black	11480	228 г	3-5 часов	NaN	NaN	NaN	5-12 V	NaN	авиационный алюминий	NaN	EZ Custom made Swiss / 10000 об/мин	NaN	6 месяцев	NaN	tatu-shop
651	Беспроводная тату машинка BRONC X2 Adjustable Stroke 11 Options Green	17950	550 гр	NaN	NaN	от 0 до 4,5 мм (регулировка вылета осуществляется выкручиванием держателя)	NaN	4-12 V	BRONC X2	Авиационный алюминий с защитным покрытием	NaN	Швейцарский двигатель 12V / 11000 об/мин	NaN	6 месяцев	NaN	tatu-shop
652	Беспроводная машинка для татуажа EZ LOLA AIR Wireless Battery Silver Black Power-Pink Gradient	10570	85,4 г	2-3 ч	1,5 ч	0 - 3,5 мм	NaN	5 - 10V	EZ LOLA AIR	авиационный алюминий	NaN	NaN	EZ Tattoo	6 месяцев	NaN	tatu-shop
653	Беспроводная тату машинка Dragonhawk L3 Wireless Tattoo Gun 7 Strokes Gray	13700	222 г	до 7 часов	2 часа	NaN	NaN	4-12 V	Dragonhawk L3	Авиационный алюминий с защитным покрытием	NaN	Powerful Motor MCORE 8V / 6500 об/мин	NaN	6 месяцев	NaN	tatu-shop
654	Машинка для татуажа WTE Universal Princess 2024 Red & RCA корд WTE Premium	36750	90 гр	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	WTE (Россия)	NaN	NaN	tatu-shop
655	Беспроводная тату машинка EZ P3 Pro 6 Strokes Matte Golden	12990	247 г	до 5 часов	2 часа	NaN	NaN	4-12 V	NaN	авиационный алюминий с защитным покрытием	NaN	EZ Customized External Rotor Brushless Motor - 12V/10000 об/мин	NaN	6 месяцев	NaN	tatu-shop
656	Роторная тату машинка Pen Rocket II version-5, pink	3590	140 г	NaN	NaN	до 4,5 мм (регулировка вылета осуществляется выкручиванием держателя)	NaN	NaN	Rocket II version-5	NaN	NaN	МАБУЧИ 8V 9000rpm - 10V 11000rpm	Rocket Tattoo	NaN	NaN	tatu-shop
657	Беспроводная машинка для татуажа - Defenderr ONYX AIR Pink	16990	120 г	NaN	1,5 часа	NaN	750 мАч	NaN	NaN	авиационный алюминий с защитным покрытием	NaN	V10 MAX - 6500 об	NaN	1 год	NaN	tatu-shop
658	Роторная тату машинка Mast P10 Orange	6440	117 г	NaN	NaN	NaN	NaN	5 - 8 V 9000 об/мин	NaN	алюминий	3 Ватт	Япония	DragonHawk	6 месяцев	NaN	tatu-shop
659	Беспроводная тату машинка Yilong K5 Pro Blue	11390	253 г	NaN	NaN	NaN	1900 мАч	5-12 V	NaN	авиационный алюминий	NaN	Бесщеточный двигатель 8000-10000 об/мин	NaN	NaN	NaN	tatu-shop
660	Роторная тату машинка Mast Tour Mini Black	6240	82 г	NaN	NaN	NaN	NaN	5 - 8 В	NaN	авиационный алюминий	3 Ватт	Япония 8V / 9000 об/мин	DragonHawk	6 месяцев	NaN	tatu-shop
661	Беспроводная тату машинка Yilong KUSH Strokes 2.4-4.2mm Black	6990	330 гр	до 5 часов	2 часа	NaN	1800 mA/ч	4-12 V	Yilong KUSH	Авиационный алюминий с защитным покрытием	NaN	Brushless Motor 12V-12000 об/мин	NaN	NaN	NaN	tatu-shop
662	Беспроводная роторная машинка AVA SOULNOVA E3 PERMANENT MAKEUP PEN Red	9390	105 г	3-7 ч	2 ч	0 - 3,5 мм	NaN	4,5 - 11V	SOULNOVA E3 PERMANENT MAKEUP PEN	авиационный алюминий	NaN	NaN	AVA TATTOO MACHINE	6 месяцев	NaN	tatu-shop
663	Беспроводная тату машинка EZ P2 MT Multi-Touch Silver and Black	14680	227 г	до 5 часов	2,5 часа	NaN	NaN	5 — 12 V	EZ P2 MT Multi-Touch	авиационный алюминий	NaN	NaN	EZ Tattoo	6 месяцев	10000 об/мин ± 10%	tatu-shop
664	Роторная тату машинка EZ Defender 2-in-1 Matte Black	5520	95 г	NaN	NaN	от 0 до 4	NaN	6 - 8,5V	EZ Defender 2-in-1	авиационный алюминий	NaN	EZ Custom Swiss Motors (Швейцария)	EZ Tattoo	6 месяцев	NaN	tatu-shop
665	Беспроводная тату машинка - Pen MAST Archer Wireless Battery purple	13750	189 г	до 8 часов	NaN	0-4,5 мм	NaN	5-12V	MAST Archer	Алюминий	NaN	Япония 10V-8750 об/мин	NaN	6 месяцев	NaN	tatu-shop
666	Беспроводная тату машинка EZ P3 Pro Turbo 2.0 Black	14790	195 г	до 5 часов	2 часа	NaN	1600 mA/ч	4-12 V	NaN	Авиационный алюминий с защитным покрытием	NaN	Upgraded EZ Customized External Rotor Brushless Motor - 12V/11000 об/мин	NaN	6 месяцев	NaN	tatu-shop
667	Беспроводная тату машинка EZ P3 Pro 6 Strokes 2 Power Matte Red	15990	247 г	до 5 часов	2 часа	NaN	NaN	4-12 V	NaN	авиационный алюминий с защитным покрытием	NaN	EZ Customized External Rotor Brushless Motor - 12V/10000 об/мин	NaN	6 месяцев	NaN	tatu-shop
668	Беспроводная тату машинка DragoArt Hammer Black	9465	610г	4-6 часов	NaN	от 0 до 4	NaN	3-12V	DragoArt Hammer	авиационный алюминий	NaN	Brushless Motor 12V-10000 об	DragoArt Tattoo	NaN	NaN	tatu-shop
669	Беспроводная машинка для татуажа EZ LOLA LIGHT PMU x 2Power Black	11850	81 гр	3-5 часов	NaN	0-4,5 мм	800 mA/ч	4-12V	EZ LOLA LIGHT	Авиационный алюминий	NaN	Coreless Motor 12V/10000 об/мин	NaN	6 месяцев	NaN	tatu-shop
670	Роторная тату машинка AVA GT Mini Red	5860	96 г	NaN	NaN	NaN	NaN	4 - 10 V 11000 об/мин	NaN	авиационный алюминий	NaN	Япония	AVA TATTOO MACHINE	6 месяцев	NaN	tatu-shop
774	Роторная тату машинка Stigma Rotary Tattoo Pen EM125 Rose Gold	3990	124 гр	NaN	NaN	NaN	NaN	6-11 V	Stigma Rotary Tattoo Pen EM125	авиационный алюминий	NaN	Япония	NaN	NaN	NaN	tatu-shop
671	Беспроводная тату машинка Yilong F6 Stroke 3,5mm Red	13940	200 г	до 8 часов	2 часа	NaN	NaN	4-12 V	NaN	Авиационный алюминий с защитным покрытием	NaN	Бесщеточный двигатель 12V-10000 об/мин	NaN	NaN	NaN	tatu-shop
672	Беспроводная тату машинка BRONC SHORT-X Wireless Pen Red	10580	166 г	до 7 часов	2 часа	от 0 до 4,5 мм (регулировка вылета осуществляется выкручиванием держателя)	NaN	4-12 V	BRONC SHORT-X	Авиационный алюминий с защитным покрытием	NaN	DC Swiss Motor - 11000 об/мин	NaN	6 месяцев	NaN	tatu-shop
673	Роторная тату машинка Dragon Small-L5	2990	120 г	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	Тайвань	Solong Tattoo	NaN	NaN	tatu-shop
674	Беспроводная тату машинка Ambition VIBE Gold	12790	185 гр	до 10 часов	около 3 ч	NaN	NaN	4,5-12V	Ambition VIBE	Алюминий	NaN	Ambition Custom Motors 10000 оборотов в минуту	Ambition Tattoo	6 месяцев	NaN	tatu-shop
675	Роторная тату машинка - Defenderr Onyx Chromium	13500	76 г	NaN	NaN	NaN	NaN	NaN	NaN	авиационный алюминий с защитным покрытием	NaN	Faulhaber (Германия) - 10000 об	NaN	1 год	NaN	tatu-shop
676	Беспроводная тату машинка Big Wasp Meteorix PRO Adjustable Wireless Pen Black	12690	245 г	до 9 часов	NaN	NaN	NaN	5-11 V	Big Wasp Meteorix PRO Adjustable Wireless Pen	авиационный алюминий	NaN	DC-motor Swiss Motor - Швейцарский двигатель	NaN	6 месяцев	NaN	tatu-shop
677	Беспроводная тату машинка Cobra Morandi 3,5 Stroke White	9990	175 гр	до 7 часов	NaN	NaN	1800 мАч	4,7-13V	Cobra Morandi	Авиационный алюминий	NaN	NaN	Cobra Tattoo	NaN	NaN	tatu-shop
678	Роторная тату машинка Pen Hawk GSH-300 red	3280	150 гр	NaN	NaN	NaN	NaN	3-10 В	Pen Hawk GSH-300	NaN	NaN	NaN	Solong Tattoo	NaN	NaN	tatu-shop
679	Роторная тату машинка WJX Carved Maxson	18700	180 г	NaN	NaN	NaN	NaN	от 6 до 12	NaN	авиационный алюминий	NaN	Швейцарский двигатель Maxon	DragonHawk	6 месяцев	NaN	tatu-shop
680	Роторная тату машинка MAST-5000 exclusive	3585	135 гр	NaN	NaN	NaN	NaN	6 - 12 V 9000 об/мин	NaN	авиационный алюминий	NaN	Япония	DragonHawk	6 месяцев	NaN	tatu-shop
681	Машинка для перманентного макияжа и мини тату WTE Universal Princess V4 Pro & RCA корд WTE Premium	36750	90 гр	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	WTE (Россия)	NaN	NaN	tatu-shop
682	Машинка для перманентного макияжа и мини тату WTE Universal Princess V4 Pro & WTE Power Rca	36200	52 г	до 5 часов	NaN	NaN	1300 мАч	NaN	WTE POWER RCA	анодированный алюминий	NaN	NaN	WTE Professional	NaN	NaN	tatu-shop
683	Роторная тату машинка DragoArt Cavalier Blue	2760	140 гр	NaN	NaN	NaN	NaN	5 - 12 V 10000 об/мин	DragoArt Cavalier	авиационный алюминий	NaN	Тайвань (Premium Motor)	DragoArt Tattoo	NaN	NaN	tatu-shop
684	Беспроводная машинка для перманентного макияжа EZ LOLA Air S PMU Black	7555	105 гр	4-6 часов	2 часа	0 - 3,5 мм	NaN	3 - 10V	EZ LOLA Air S PMU	авиационный алюминий	NaN	NaN	EZ Tattoo	6 месяцев	NaN	tatu-shop
685	Беспроводная тату машинка Yilong Alligator Strokes 2.7-4.5mm Black	6995	335 гр	до 5 часов	2 часа	NaN	NaN	4-12 V	Yilong Alligator	Авиационный алюминий с защитным покрытием	NaN	Brushless Motor 12V-12000 об/мин	NaN	NaN	NaN	tatu-shop
686	Беспроводная тату машинка EZ EvoTech Pro Wireless Battery Tattoo Pen Silver	10630	NaN	до 7 часов	2,5 часа	NaN	NaN	5-12 V	EZ EvoTech Pro	авиационный алюминий с защитным покрытием	NaN	NaN	EZ Tattoo	6 месяцев	NaN	tatu-shop
687	Беспроводная тату машинка Skinner Innovation PRO 2.0 Stroke 3,8mm Black Matte	25000	200 гр	до 10 часов	NaN	NaN	2000 мАч	5-13V	Skinner Innovation PRO 2	Авиационный алюминий	NaN	Бесколлекторный двигатель 5	Skinner Tattoo	NaN	NaN	tatu-shop
688	Беспроводная тату машинка Skinner Innovation PRO 3,8 Stroke Lollipop - Limited Edition	30000	200 гр	до 10 часов	NaN	NaN	1800 мАч	5-13V	Skinner Innovation PRO	Алюминий	NaN	Бесколлекторный на 5	Skinner Tattoo	NaN	NaN	tatu-shop
689	Роторная тату машинка MAST Pen Space WQ102	5190	117 гр	NaN	NaN	NaN	NaN	NaN	MAST Pen WQ102	NaN	NaN	Японский 6-9V / 10000 об/мин	DragonHawk	6 месяцев	NaN	tatu-shop
690	Роторная тату машинка Dragon Small-x3 black	1945	110 г	NaN	NaN	NaN	NaN	NaN	Dragon Small-x3	NaN	NaN	Тайвань	Yilong Tattoo Supply	NaN	NaN	tatu-shop
691	Беспроводная роторная тату машинка - Pen Dragon Flux HM-630	6990	210 г	до 6 часов	NaN	от 0 до 4,5 мм	NaN	5-12 V	Dragon Flux HM-630	Алюминий	NaN	Япония 9V-12000 об/мин	Solong Tattoo	NaN	NaN	tatu-shop
692	Беспроводная роторная тату машинка EZ Defender X Black Stock 4.0 mm	11970	174г	до 5 часов	2 часа	0 - 4,5 мм	NaN	5 - 12V	EZ Defender X	авиационный алюминий	NaN	NaN	EZ Tattoo	6 месяцев	NaN	tatu-shop
693	Роторная тату машинка ARASHI-660 RED	3390	165 гр	NaN	NaN	NaN	NaN	7-9 v	NaN	Алюминий	NaN	Япония 9V-9000 об/мин	NaN	6 месяцев	NaN	tatu-shop
694	Беспроводная машинка для татуажа - Defenderr ONYX AIR Teal	16990	120 г	NaN	1,5 часа	NaN	750 мАч	NaN	NaN	авиационный алюминий с защитным покрытием	NaN	V10 MAX - 6500 об	NaN	1 год	NaN	tatu-shop
695	Универсальная роторная тату машинка Skinductor Vertigo	15000	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	tatu-shop
696	Беспроводная тату машинка EZ Portex Generation P2S Pro Green	7950	197 г	до 5 часов	2 часа	NaN	NaN	4-12 V	NaN	авиационный алюминий с защитным покрытием	NaN	EZ Customized Swiss - 12V/10800 об/мин	NaN	6 месяцев	NaN	tatu-shop
697	Роторная тату машинка - Poseidon v2 mini pen gold	5990	90 г	NaN	NaN	NaN	NaN	5 - 12V	Poseidon v2 mini pen	авиационный алюминий	NaN	Швейцарский мотор 12W	Solong Tattoo	NaN	NaN	tatu-shop
828	Роторная тату машинка Arena SMP PMU	9930	85 г	NaN	NaN	NaN	NaN	6 - 13 V	NaN	авиационный алюминий	NaN	Япония	Arena - DragonHawk	6 месяцев	NaN	tatu-shop
698	Беспроводная тату машинка Dragonhawk X8 Tunable Frequency 4mm Stroke Red	11800	144г	до 3 часов	2 часа	NaN	NaN	NaN	NaN	авиационный алюминий	NaN	Brushless motor - бесщеточный двигатель	NaN	6 месяцев	NaN	tatu-shop
699	Беспроводная тату машинка - FK Flux EXO V5 Wireless Battery Pen Matte Black	11990	NaN	до 6 часов	NaN	от 0 до 4,5 мм	NaN	5-12V	FK Flux EXO V5	Алюминий	NaN	Japanese Coreless Motor 12V-12000 об/мин	Solong Tattoo	NaN	NaN	tatu-shop
700	Беспроводная тату машинка BRONC SHORT-X Wireless Pen Army Green	10580	166 г	до 7 часов	2 часа	от 0 до 4,5 мм (регулировка вылета осуществляется выкручиванием держателя)	NaN	4-12 V	BRONC SHORT-X	Авиационный алюминий с защитным покрытием	NaN	DC Swiss Motor - 11000 об/мин	NaN	6 месяцев	NaN	tatu-shop
701	Беспроводная тату машинка EZ P3 Pro 6 Strokes 2 Power Gloss Gray	15990	247 г	до 5 часов	2 часа	NaN	NaN	4-12 V	NaN	авиационный алюминий с защитным покрытием	NaN	EZ Customized External Rotor Brushless Motor - 12V/10000 об/мин	NaN	6 месяцев	NaN	tatu-shop
702	Роторная тату машинка RONKAY Professional RT-550 silver	4990	167 гр	NaN	NaN	NaN	NaN	6-10 V	NaN	авиационный алюминий	NaN	Япония - 9V 9000 об/мин	Solong Tattoo	NaN	NaN	tatu-shop
703	Беспроводная тату машинка - Pen MAST Archer Wireless Battery red	13750	189 г	до 8 часов	NaN	0-4,5 мм	NaN	5-12V	MAST Archer	Алюминий	NaN	Япония 10V-8750 об/мин	NaN	6 месяцев	NaN	tatu-shop
704	Беспроводная тату машинка AVA DUKE V3 Wireless Pen Black	7380	250 г	4-8 часов	2 часа	NaN	NaN	4,5-12 V	NaN	авиационный алюминий	NaN	Carbon Brush Motor (3	AVA TATTOO MACHINE	6 месяцев	NaN	tatu-shop
705	Беспроводная роторная машинка AVA SOULNOVA E2 PERMANENT MAKEUP PEN Champagne	9340	105 г	3-7 ч	2 ч	0 - 3,5 мм	NaN	4,5 - 11V	SOULNOVA E2 PERMANENT MAKEUP PEN	авиационный алюминий	NaN	NaN	AVA TATTOO MACHINE	6 месяцев	NaN	tatu-shop
706	Беспроводная тату машинка Defenderr INFINITY Gunmetal	22990	210 г	NaN	2,5 часа	NaN	1800 мАч	NaN	NaN	авиационный алюминий с защитным покрытием	NaN	V10 MAX - 6500 об	NaN	1 год	NaN	tatu-shop
707	Беспроводная тату машинка MAST Saber Wireless Red	14450	189 г	до 8 часов	NaN	0-4,5 мм (зависит от фирмы картриджей)	NaN	5-10V	MAST Saber Wireless	Алюминий	NaN	Япония 10V-8750 об/мин	NaN	6 месяцев	NaN	tatu-shop
708	Роторная тату машинка Mast Tour Mini Blue	6240	82 г	NaN	NaN	NaN	NaN	5 - 8 В	NaN	авиационный алюминий	3 Ватт	Япония 8V / 9000 об/мин	DragonHawk	6 месяцев	NaN	tatu-shop
709	Беспроводная тату машинка EZ Filter X30 Strokes 2.0-4.0mm Black	7490	242 гр	до 7 часов	2 часа	от 0 до 4,5 мм	1600 mA/ч	4-12V	EZ Filter X30	Авиационный алюминий	NaN	Двигатель без сердечника EZ 12V-9500 об/мин	EZ TATTOO	6 месяцев	NaN	tatu-shop
710	Роторная тату машинка MAST P10 Gray	6440	117 г	NaN	NaN	NaN	NaN	5 - 8 V 9000 об/мин	NaN	алюминий	3 Ватт	Япония	DragonHawk	6 месяцев	NaN	tatu-shop
711	Роторная тату машинка - CNC Cannibal Flower gold	9350	160 г	NaN	NaN	NaN	NaN	6-14 V	NaN	авиационный алюминий	NaN	Германский мотор	CNC	6 месяцев	NaN	tatu-shop
712	Беспроводная тату машинка WOS E70 Pro Adjustable Stroke 3.0-5.0mm Black	16490	775 гр	NaN	2-3 часа	NaN	1900 мАч	4,5-12 V	WOS E70 Pro	авиационный алюминий	7	WOS Brushless Motor - 10500 об/мин	WOS Tattoo	6 месяцев	NaN	tatu-shop
713	Беспроводная тату машинка Ambition Zetton Gold	16490	213 гр	до 8 часов	3 ч	NaN	NaN	4,5-12V	Ambition Zetton	авиационный алюминий	NaN	Brushless Motor 8V - 10000 об/мин	Ambition Tattoo	6 месяцев	NaN	tatu-shop
714	Беспроводная тату машинка BRONC SHORT-X Wireless Pen Green	10580	166 г	до 7 часов	2 часа	от 0 до 4,5 мм (регулировка вылета осуществляется выкручиванием держателя)	NaN	4-12 V	BRONC SHORT-X	Авиационный алюминий с защитным покрытием	NaN	DC Swiss Motor - 11000 об/мин	NaN	6 месяцев	NaN	tatu-shop
715	Беспроводная тату машинка Yilong KUSH Strokes 2.4-4.2mm Red	6990	330 гр	до 5 часов	2 часа	NaN	1800 mA/ч	4-12 V	Yilong KUSH	Авиационный алюминий с защитным покрытием	NaN	Brushless Motor 12V-12000 об/мин	NaN	NaN	NaN	tatu-shop
716	Беспроводная машинка для татуажа EZ LOLA AIR Pro PMU Wireless 6 Strokes  X 2 Power Red	14990	111 г	4 - 6 ч	2 ч	0 - 3,5 мм	NaN	3 - 10V	EZ LOLA AIR Pro	авиационный алюминий	NaN	NaN	EZ Tattoo	6 месяцев	NaN	tatu-shop
717	Беспроводная тату машинка BRONC V12 MAX Adjustable Wireless Pen 6 Stroke Army Green	14990	235 г	до 10 часов	NaN	от 0 до 4,5 мм	NaN	4-12 V	BRONC V12 MAX	Авиационный алюминий	NaN	Швейцарский двигатель 7Вт	NaN	6 месяцев	NaN	tatu-shop
718	Беспроводная тату машинка MICEYA MCY-1003 Wireless Tattoo & PMU Pen Red	15990	149 г	до 7 часов	NaN	от 0 до 4,5 мм	NaN	4V-12V	MICEYA MCY-1003	Авиационный алюминий	NaN	Швейцарский двигатель 12000 об/мин	NaN	6 месяцев	NaN	tatu-shop
719	Беспроводная тату машинка BRONC V1 Wireless Tattoo Pen Blue	10780	237 г	NaN	NaN	от 0 до 4,5 мм	NaN	4-11 V	BRONC Wireless Pen V1	Авиационный алюминий с защитным покрытием	NaN	Швейцарский двигатель 11000 об/мин	NaN	6 месяцев	NaN	tatu-shop
720	Беспроводная тату машинка MAST Fold 2 Pro 2.4-4.2mm Strokes X 2 Power Gold	16990	400 гр	до 7 часов	2 часа	NaN	NaN	4-12 V	MAST Fold 2 Pro	Авиационный алюминий с защитным покрытием	NaN	Coreless motor 8V-6500 об/мин	NaN	6 месяцев	NaN	tatu-shop
721	Роторная тату машинка Skinductor Vertigo GO! Soft	15000	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	tatu-shop
722	Беспроводная тату машинка EZ P3 Pro 6 Strokes Matte Gray	12990	247 г	до 5 часов	2 часа	NaN	NaN	4-12 V	NaN	авиационный алюминий с защитным покрытием	NaN	EZ Customized External Rotor Brushless Motor - 12V/10000 об/мин	NaN	6 месяцев	NaN	tatu-shop
723	Беспроводная тату машинка Defenderr INFINITY 2 Power Gunmetal	27500	210 г	NaN	2,5 часа	NaN	1800 мАч	NaN	NaN	авиационный алюминий с защитным покрытием	NaN	V10 MAX - 6500 об	NaN	1 год	NaN	tatu-shop
724	Беспроводная тату машинка NB Needle Bee Wireless Tattoo Pen WR-36 Black	4840	180 г	до 5 часов	NaN	0-4 мм	NaN	3-12V	NB Needle Bee WR-36	Авиационный алюминий	NaN	Японский двигатель Mabuchi Motor 12V/12000 об	NaN	NaN	NaN	tatu-shop
725	Беспроводная тату машинка EZ Filter Tora Red	4490	196 гр	до 5 часов	2 часа	от 0 до 4,5 мм	1600 mA/ч	5-12V	EZ Filter Tora	Авиационный алюминий с защитным покрытием	NaN	Двигатель без сердечника EZ 12V-10000 об/мин	EZ TATTOO	6 месяцев	NaN	tatu-shop
726	Беспроводная тату машинка Ambition VIBE Silver	12790	185 гр	до 10 часов	около 3 ч	NaN	NaN	4,5-12V	Ambition VIBE	Алюминий	NaN	Ambition Custom Motors 10000 оборотов в минуту	Ambition Tattoo	6 месяцев	NaN	tatu-shop
727	Беспроводная тату машинка NB Needle Bee Wireless Tattoo Pen WR-37 Black	4840	180 г	до 5 часов	NaN	0-4,5 мм	NaN	3-12V	NB Needle Bee WR-37	Авиационный алюминий	NaN	Японский двигатель Mabuchi Motor 12V/12000 об	NaN	NaN	NaN	tatu-shop
728	Беспроводная тату машинка - MAST Amy With 4MM Stroke Green	13990	115 г	до 3 часов	NaN	0-4 мм	NaN	4-12V	MAST Amy	Алюминий	NaN	Mast Special Edition Coreless Motor 9V/10400 об	NaN	6 месяцев	NaN	tatu-shop
729	Беспроводная машинка для татуажа - Defenderr FENIX S PRO Stealth	28950	146,4 г	NaN	1,5 часа	NaN	2000 мАч	NaN	NaN	авиационный алюминий с защитным покрытием	NaN	2W - 12000 об	NaN	1 год	NaN	tatu-shop
730	Беспроводная машинка для татуажа EZ LOLA LIGHT PMU Black-Red Gradient	9890	81 гр	3-5 часов	NaN	0-4,5 мм	800 mA/ч	4-12V	EZ LOLA LIGHT	Авиационный алюминий	NaN	Coreless Motor 12V/10000 об/мин	NaN	6 месяцев	NaN	tatu-shop
731	Беспроводная роторная машинка AVA SOULNOVA E3 PERMANENT MAKEUP PEN Black	9390	105 г	3-7 ч	2 ч	0 - 3,5 мм	NaN	4,5 - 11V	SOULNOVA E3 PERMANENT MAKEUP PEN	авиационный алюминий	NaN	NaN	AVA TATTOO MACHINE	6 месяцев	NaN	tatu-shop
732	Роторная тату машинка Pen Cobra Storm Black	3190	126 гр	NaN	NaN	NaN	NaN	7 - 12 V	NaN	авиационный алюминий	NaN	Тайвань	Cobra Tattoo	NaN	NaN	tatu-shop
733	Роторная тату машинка - Defenderr Iron S Chromium	9990	150 г	NaN	NaN	NaN	NaN	NaN	NaN	авиационный алюминий с защитным покрытием	NaN	Faulhaber (Германия) - 8000 об	NaN	1 год	NaN	tatu-shop
734	Беспроводная тату машинка - Defenderr VECTOR Gunmetal	28500	188 г	NaN	2 часа	NaN	1500 мАч	NaN	NaN	авиационный алюминий с защитным покрытием	NaN	Faulhaber (Германия) - 6800 об	NaN	1 год	NaN	tatu-shop
735	Беспроводная роторная тату машинка - DiRK Pen Battery M800 black	7990	210 г	до 7 часов	NaN	от 0 до 4,5 мм	NaN	5-12 V	DiRK M800	Алюминий	NaN	Япония 9V-12000 об/мин	Solong Tattoo	NaN	NaN	tatu-shop
736	Беспроводная тату машинка AVA DUKE V3 Wireless Pen Green	7380	250 г	4-8 часов	2 часа	NaN	NaN	4,5-12 V	NaN	авиационный алюминий	NaN	Carbon Brush Motor (3	AVA TATTOO MACHINE	6 месяцев	NaN	tatu-shop
737	Беспроводная тату машинка Cobra Morandi 4,2 Stroke Blue	9990	175 гр	до 7 часов	NaN	NaN	1800 мАч	4,7-13V	Cobra Morandi	Авиационный алюминий	NaN	NaN	Cobra Tattoo	NaN	NaN	tatu-shop
738	Беспроводная роторная тату машинка DragonHawk X20 Wireless Pen X 2 Power	10450	174 г	до 4 часов	2 часа	NaN	NaN	5-12 V	DragonHawk X20	авиационный алюминий с защитным покрытием	NaN	Mcore-A Motor 12V/10000 об/мин	NaN	6 месяцев	NaN	tatu-shop
739	Беспроводная тату машинка EZ Filter X40 Strokes 2.0-4.0mm Grey	8580	269 гр	до 5 часов	2 часа	от 0 до 4,5 мм	1600 mA/ч	4-12V	EZ Filter X40	Авиационный алюминий	NaN	Двигатель без сердечника EZ 12V-9000 об/мин	EZ TATTOO	6 месяцев	NaN	tatu-shop
740	Роторная тату машинка Dragonhawk M6 Super Rotary 4mm Black	5840	175 г	NaN	NaN	NaN	NaN	5 - 12 V	NaN	авиационный алюминий	NaN	Япония 12V-10500 об/мин	DragonHawk	6 месяцев	NaN	tatu-shop
741	Роторная тату машинка Pen Rocket II version-1, black	3450	140 г	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	Тайвань - 10V 11000rpm	Rocket Tattoo	NaN	NaN	tatu-shop
742	Беспроводная тату машинка Dragonhawk Atom2 Stroke 2.8mm Red	8960	300 гр	3 часа	NaN	0-4,0 мм	800 mA/ч	2-12V	Dragonhawk Atom 2	авиационный алюминий	NaN	Coreless Motor 12V/10000 об/мин	NaN	6 месяцев	NaN	tatu-shop
743	Роторная тату машинка ARASHI-700 BLACK	3850	165 гр	NaN	NaN	NaN	NaN	5-10V	NaN	Алюминий	NaN	Японский мотор	NaN	6 месяцев	NaN	tatu-shop
744	Беспроводная машинка для татуажа Mast Crown P35 Permanent Makeup Pen Pink	9500	93 г	до 3 часов	NaN	0-3,5 мм	NaN	4,5-12V	Mast P35	Авиационный алюминий	NaN	Mast Special Edition Coreless Motor 12V/12000 об	NaN	6 месяцев	NaN	tatu-shop
745	Беспроводная машинка для татуажа Mast Crown P35 Permanent Makeup Pen Black	9500	93 г	до 3 часов	NaN	0-3,5 мм	NaN	4,5-12V	Mast P35	Авиационный алюминий	NaN	Mast Special Edition Coreless Motor 12V/12000 об	NaN	6 месяцев	NaN	tatu-shop
746	Машинка для татуажа WTE Universal Princess 2024 Red & Эксцентрики 2.6 и 3.0мм	34700	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	tatu-shop
747	Универсальная тату машинка Burlak ELF PRO 3.5mm Strokes	26950	104 гр	NaN	NaN	до 4,5 мм (регулировка вылета осуществляется выкручиванием держателя)	NaN	NaN	Burlak ELF PRO 3	NaN	NaN	(11 Вт) 10000 об	Burlak Rotary (Россия)	NaN	NaN	tatu-shop
748	Беспроводная тату машинка AVA UNI-X Stroke 4.0mm Pink	15380	660 гр	NaN	2 часа	NaN	NaN	4,5-12 V	AVA UNI-X	авиационный алюминий	5W	AVA Motor Brushless Motor - 10500 об/мин	AVA TATTOO MACHINE	6 месяцев	NaN	tatu-shop
1016	Роторная тату машинка Skinductor Vertigo GO! Hard	15000	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	tatu-shop
749	Беспроводная тату машинка EZ P3 Pro Touch 6 Strokes Black	13990	270 гр	8-10 часов	2 часа	от 0 до 4,5 мм	2000 mA/ч	4-12V	EZ P3 Pro Touch	Авиационный алюминий	NaN	Двигатель без сердечника EZ 12V-10000 об/мин	EZ TATTOO	6 месяцев	NaN	tatu-shop
750	Роторная тату машинка - CNC Q5 Grenade Pen	9980	147 г	NaN	NaN	NaN	NaN	7-12V	NaN	авиационный алюминий	NaN	Японский	CNC	6 месяцев	NaN	tatu-shop
751	Беспроводная тату машинка MAST FLIP 2 Wireless 7 Strokes 2.4-4.2mm	12450	213г (с аккумулятором), 200г (с RCA)	до 6 часов	до 3 часов	NaN	NaN	NaN	NaN	авиационный алюминий	NaN	Двигатель Mcore 12В / 9500 об/мин	NaN	NaN	NaN	tatu-shop
752	Беспроводная тату машинка Yilong K5 Pro Smoke Blue	11390	253 г	NaN	NaN	NaN	1900 мАч	5-12 V	NaN	авиационный алюминий	NaN	Бесщеточный двигатель 8000-10000 об/мин	NaN	NaN	NaN	tatu-shop
753	Беспроводная тату машинка - FK Flux EXO V5 Wireless Battery Pen Black	13735	NaN	до 6 часов	NaN	от 0 до 4,5 мм	NaN	5-12V	FK Flux EXO V5	Алюминий	NaN	Japanese Coreless Motor 12V-12000 об/мин	Solong Tattoo	NaN	NaN	tatu-shop
754	Беспроводная тату машинка Yilong KUSH Strokes 2.4-4.2mm x 2 Power Red	8990	445 гр	до 5 часов	2 часа	NaN	1800 mA/ч	4-12 V	Yilong KUSH	Авиационный алюминий с защитным покрытием	NaN	Brushless Motor 12V-12000 об/мин	NaN	NaN	NaN	tatu-shop
755	Беспроводная тату машинка - CNC X-WE Wireless Tattoo Pen	11480	NaN	от 3 часов до 9 часов по результатам тестов	NaN	NaN	NaN	NaN	NaN	Авиационный алюминий	NaN	DC-motor Германия 10060 rpm	CNC Tattoo	6 месяцев	NaN	tatu-shop
756	Беспроводная тату машинка MICEYA MCY-1003 Wireless Tattoo & PMU Pen Green	15990	149 г	до 7 часов	NaN	от 0 до 4,5 мм	NaN	4V-12V	MICEYA MCY-1003	Авиационный алюминий	NaN	Швейцарский двигатель 12000 об/мин	NaN	6 месяцев	NaN	tatu-shop
757	Беспроводная тату машинка BRONC TOUGH Wireless Pen 11 Stroke Green	15790	267 г	до 10 часов	2,5 часа	от 0 до 4,5 мм (регулировка вылета осуществляется выкручиванием держателя)	NaN	4-12 V	BRONC TOUGH	Авиационный алюминий с защитным покрытием	NaN	DC Swiss Motor - 11000 об/мин	NaN	6 месяцев	NaN	tatu-shop
758	Роторная тату машинка Dragon Small-x4 Silver	2370	110 г	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	Япония	Yilong Tattoo Supply	NaN	NaN	tatu-shop
759	Беспроводная тату машинка EZ P5 Touchscreen Bluetooth footswitch Silver	15990	178 г	до 5 часов	2,5 часа	NaN	NaN	5 — 12 V	EZ P5 Touchscreen Bluetooth	авиационный алюминий	NaN	NaN	EZ Tattoo	6 месяцев	9000 об/мин ± 10%	tatu-shop
760	Роторная тату машинка Pen Hawk GSR-70 red	3990	155 гр	NaN	NaN	NaN	NaN	4-10 V	Pen Hawk GSR-70	NaN	NaN	Тайвань	Solong Tattoo	NaN	NaN	tatu-shop
761	Беспроводная тату машинка EZ P3 Pro Lumina 6 Strokes Purple	13330	420 гр	до 5 часов	2 часа	NaN	1600 mA/ч	4-12 V	EZ P3 Pro Lumina	авиационный алюминий с защитным покрытием	NaN	EZ Customized External Rotor Brushless Motor 12V-10000 об/мин	NaN	6 месяцев	NaN	tatu-shop
762	Беспроводная машинка для тату и татуажа Cobra Magi P9 Multi-Mode Stroke 3.0mm Rose Gold	7990	170 гр	до 4 часов	1 час	NaN	NaN	2	Cobra Magi P9 Multi-Mode	Авиационный алюминий	NaN	NaN	Cobra Tattoo	NaN	NaN	tatu-shop
763	Роторная тату машинка SOLONG PROTON X-90 galaxy	4990	133 гр	NaN	NaN	NaN	NaN	NaN	SOLONG PROTON X-90	алюминий	NaN	Япония 5W	NaN	NaN	NaN	tatu-shop
764	Беспроводная роторная тату машинка Bronc Seraphic Wireless Pen For PMU & Tattoo Brown	12990	175 г	до 7 часов	NaN	от 0 до 4 мм	NaN	4-12 V	Bronc Seraphic Wireless Pen For PMU & Tattoo	Авиационной алюминий	NaN	Swiss motor - Швейцарский двигатель 11000 об/мин	NaN	6 месяцев	NaN	tatu-shop
765	Беспроводная роторная тату машинка Mast A1 New Generation Wireless Pen	8920	185 г	8 часов	2 часа	NaN	NaN	5-12 V	NaN	авиационный алюминий	NaN	Mcore-A с чипом 12В 12000 об/мин	NaN	6 месяцев	NaN	tatu-shop
766	Роторные тату машинки EZ NANO - Pack of 2	9870	67 г	NaN	NaN	от 0 до 4	NaN	6 - 8,5V	EZ NANO - Pack of 2	авиационный алюминий	NaN	EZ Custom Swiss Motors (Швейцария)	EZ Tattoo	6 месяцев	NaN	tatu-shop
767	Беспроводная тату машинка MAST Tour SIYA Green Gradient	12990	133 г	до 5 часов	NaN	0-4 мм	NaN	5-12V	MAST Tour SIYA	Алюминий	NaN	Япония - 8V/10000 об	NaN	6 месяцев	NaN	tatu-shop
768	Беспроводная тату машинка BRONC V77 Strokes 2.0 - 4.2mm X 2Power Black	8490	480 гр	до 8 часов	3 часа	от 0 до 4,5 мм (регулировка вылета осуществляется выкручиванием держателя)	NaN	4-12 V	BRONC V77	Авиационный алюминий с защитным покрытием	NaN	Coreless Motor 12V / 9500 об/мин	NaN	6 месяцев	NaN	tatu-shop
769	Беспроводная тату машинка BRONC Bullet Wireless Pen Silver	12760	229 г	NaN	NaN	от 0 до 4,5 мм	NaN	5-11 V	BRONC Bullet	Авиационный алюминий с защитным покрытием	NaN	Швейцарский двигатель мощностью 6W	NaN	6 месяцев	NaN	tatu-shop
770	Беспроводная тату машинка BRONC X1 Wireless Pen 11 Stroke Silver	15720	NaN	NaN	NaN	от 0 до 4,5 мм (регулировка вылета осуществляется выкручиванием держателя)	NaN	4-12 V	BRONC X1 Wireless Pen	Авиационный алюминий с защитным покрытием	NaN	Швейцарский двигатель 12V / 11000 об/мин	NaN	6 месяцев	NaN	tatu-shop
772	Беспроводная тату машинка Ambition Soldier MAX Black	15990	201г	до 10 часов	NaN	NaN	NaN	4-12V	Ambition Soldier Max	Авиационный алюминий	NaN	Custom Coreless Motor 12V-13000 об/мин	Ambition Tattoo	6 месяцев	NaN	tatu-shop
773	Роторная тату машинка Mast Tour S	6380	105 г	NaN	NaN	NaN	NaN	5 - 8 В	NaN	авиационный алюминий	NaN	Япония 8V 9000 об/мин	DragonHawk	6 месяцев	NaN	tatu-shop
3393	FKirons ЕХО Ops Stealth 3.2 mm Без PowerBolt	62843	NaN	NaN	NaN	3.2, 4.0	NaN	NaN	NaN	NaN	NaN	NaN	США	1 год	NaN	fenix-tattoo
775	Беспроводная тату машинка DragonHawk Fold 3 Wireless 7 Strokes X 2 Power	13990	213 г	до 5 часов	1,5 часа	NaN	NaN	4-12 V	NaN	авиационный алюминий	NaN	Coreless Motor 8V/6500 об/мин	NaN	6 месяцев	NaN	tatu-shop
776	Роторная тату машинка Mast P30 SMP red	7630	77 г	NaN	NaN	до 4,5 мм (регулировка вылета осуществляется выкручиванием держателя)	NaN	7-9В	NaN	авиационный алюминий	3 Ватт	Япония	DragonHawk	6 месяцев	NaN	tatu-shop
777	Беспроводная тату машинка Defenderr INFINITY 2 Power Stealth	27500	210 г	NaN	2,5 часа	NaN	1800 мАч	NaN	NaN	авиационный алюминий с защитным покрытием	NaN	V10 MAX - 6500 об	NaN	1 год	NaN	tatu-shop
778	Беспроводная тату машинка Dragonhawk X8 Tunable Frequency 4mm Stroke Pink	11800	144г	до 3 часов	2 часа	NaN	NaN	NaN	NaN	авиационный алюминий	NaN	Brushless motor - бесщеточный двигатель	NaN	6 месяцев	NaN	tatu-shop
779	Беспроводная тату машинка Dragonhawk Fold Pro Year of Snake Edition	26470	1000 гр	до 10 часов	2 часа	NaN	NaN	4-12 V	Dragonhawk Fold Pro	Авиационный алюминий с защитным покрытием	NaN	Coreless Motor 8V-6500 об/мин	NaN	6 месяцев	NaN	tatu-shop
780	Роторная тату машинка Ambition & SunShine gray	4990	122 г	NaN	NaN	NaN	NaN	5 - 10 V	Ambition & SunShine	алюминий	NaN	Япония	Solong Tattoo	NaN	NaN	tatu-shop
781	Беспроводная тату машинка Cobra Morandi 3,5 Stroke Pink	9990	175 гр	до 7 часов	NaN	NaN	1800 мАч	4,7-13V	Cobra Morandi	Авиационный алюминий	NaN	NaN	Cobra Tattoo	NaN	NaN	tatu-shop
782	Роторная тату машинка Fox V8 black	3890	135 гр	NaN	NaN	NaN	NaN	6-12 V	NaN	авиационный алюминий	NaN	Япония	Solong Tattoo	NaN	NaN	tatu-shop
783	Роторная тату машинка - CNC Cannibal Flower red	9350	160 г	NaN	NaN	NaN	NaN	6-14 V	NaN	авиационный алюминий	NaN	Германский мотор	CNC	6 месяцев	NaN	tatu-shop
784	Роторная тату машинка - EZ Avant V2 Adjustable 6 Stroke green	7860	194 г	NaN	NaN	NaN	NaN	NaN	NaN	авиационный алюминий	NaN	кастомный мотор EZ - 12В / 9000 об/мин	NaN	6 месяцев	NaN	tatu-shop
785	Беспроводная машинка для татуажа Mast P40 PMU Stroke 2.5mm Rose Gold	9950	120 г	5 часов	NaN	0-3,5 мм	NaN	4-10V	Mast P40	Авиационный алюминий	NaN	Mast Special Edition Coreless Motor 10V/10000 об	NaN	6 месяцев	NaN	tatu-shop
786	Беспроводная тату машинка AVA GT EP8 Plus Wireless Pen 4.2mm Stroke Green	10590	NaN	4-8 часов	3 часа	NaN	NaN	4,2-12 V	NaN	авиационный алюминий	NaN	Germany Formula Prcious Metal Brush DC Motor (5W) 12000 rpm	AVA TATTOO MACHINE	6 месяцев	NaN	tatu-shop
787	Роторная тату машинка BRONC V4 Tattoo & Makeup Green	10360	79 гр	NaN	NaN	NaN	NaN	5-9V (татуаж	Bronc V4	авиационный алюминий	NaN	Швейцария 4,5 Вт	NaN	6 месяцев	NaN	tatu-shop
788	Беспроводная роторная тату машинка Bronc Seraphic Wireless Pen For PMU & Tattoo Green	12990	175 г	до 7 часов	NaN	от 0 до 4 мм	NaN	4-12 V	Bronc Seraphic Wireless Pen For PMU & Tattoo	Авиационной алюминий	NaN	Swiss motor - Швейцарский двигатель 11000 об/мин	NaN	6 месяцев	NaN	tatu-shop
789	Роторная тату машинка Mast Sensor With 4MM Stroke Purple	8960	133 г	NaN	NaN	NaN	NaN	6-10V	NaN	авиационный алюминий	NaN	Mcore Бесщеточный 12V 10000 об/мин	DragonHawk	6 месяцев	NaN	tatu-shop
790	Универсальная роторная тату машинка Vlad Blad Ultron 2 Big Light Grip 35мм	24170	120 г	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	10,5 Вт	Vlad Blad (Россия)	1 год	NaN	tatu-shop
791	Роторная тату машинка MAST ATOM M5 ROTARY PEN BLACK	6980	190 гр	NaN	NaN	от 0 до 4,5 мм (регулировка вылета осуществляется выкручиванием держателя)	NaN	5-12 V	MAST ATOM M5	авиационный алюминий	NaN	Япония 12В	NaN	6 месяцев	NaN	tatu-shop
792	Беспроводная машинка для татуажа - Defenderr ONYX AIR Stealth	16990	120 г	NaN	1,5 часа	NaN	750 мАч	NaN	NaN	авиационный алюминий с защитным покрытием	NaN	V10 MAX - 6500 об	NaN	1 год	NaN	tatu-shop
793	Беспроводная тату машинка AVA UNi-B Adjustable stroke 2.5-4.5mm Red	14990	600 г	6-8 часов	2 часа	NaN	NaN	4,5-12 V	AVA UNi-B	авиационный алюминий	5 W	AVA motor Metal Brush DC motor - 10500 об/мин	AVA TATTOO MACHINE	6 месяцев	NaN	tatu-shop
794	Беспроводная тату машинка Yilong Max S-70 Wireless Pen Black	5990	198г	до 6 часов	NaN	от 0 до 4	NaN	5-12V	Yilong Max S-70	авиационный алюминий	NaN	Vertical disk bearing motor	Yilong Tattoo	NaN	11000 об	tatu-shop
795	Роторная тату машинка MAST Carbon gray	6980	127 гр	NaN	NaN	NaN	NaN	7-9 V	NaN	авиационный алюминий	NaN	Япония 8V 8000 об/мин	DragonHawk	6 месяцев	NaN	tatu-shop
796	Беспроводная машинка для татуажа - Defenderr FENIX S Pink	26950	135 г	NaN	2,5 часа	NaN	1600 мАч	NaN	NaN	авиационный алюминий с защитным покрытием	NaN	2W - 12000 об	NaN	1 год	NaN	tatu-shop
797	Беспроводная тату машинка MAST Tour Y22 Pro Wireless Bluetooth Verison White	11550	126 г	до 6 часов	NaN	0-3,5 мм	1300 mA/ч	2-12V	MAST Tour Y22 Pro	Авиационный алюминий	NaN	Mast Special Edition Mcore-P 10000 об/мин	NaN	6 месяцев	NaN	tatu-shop
798	Роторная тату машинка Mast Magi PM White	6380	91 г	NaN	NaN	до 4,5 мм (регулировка вылета осуществляется выкручиванием держателя)	NaN	5 - 9 V	Mast Magi	алюминий	NaN	Япония 12В/12000 об	DragonHawk	NaN	NaN	tatu-shop
799	Беспроводная тату машинка MAST Saber Wireless Black	14450	189 г	до 8 часов	NaN	0-4,5 мм (зависит от фирмы картриджей)	NaN	5-10V	MAST Saber Wireless	Алюминий	NaN	Япония 10V-8750 об/мин	NaN	6 месяцев	NaN	tatu-shop
800	Беспроводная машинка для перманентного макияжа EZ LOLA Air S PMU Rose	7555	105 гр	4-6 часов	2 часа	0 - 3,5 мм	NaN	3 - 10V	EZ LOLA Air S PMU	авиационный алюминий	NaN	NaN	EZ Tattoo	6 месяцев	NaN	tatu-shop
4630	Skinductor Vertigo	14589	NaN	NaN	NaN	3.5	NaN	NaN	NaN	NaN	NaN	NaN	Россия	NaN	NaN	fenix-tattoo
801	Беспроводная тату машинка AVA GT Pen GTR Adjustable Stroke 2.5-5.0mm Black	21990	1435 гр	NaN	2 часа	NaN	NaN	4,5-12 V	AVA GT Pen GTR	авиационный алюминий	5W	AVA Servo Brushless Motor - 11000 об/мин	AVA TATTOO MACHINE	6 месяцев	NaN	tatu-shop
802	Беспроводная тату машинка EZ Caster S Wireless Green	3850	171 г	5 часов	NaN	от 0 до 4,5 мм	NaN	5-12V	EZ Caster S	авиационный алюминий	NaN	EZ Customized Motor	EZ Tattoo	6 месяцев	NaN	tatu-shop
803	Беспроводная тату машинка Mast P60 PMU Stroke 2.2mm-3.2mm X 2Power Purple	16490	121 г	около 3 часов	NaN	0-3,5 мм	900 mA/ч	4-10V	Mast P60	Авиационный алюминий	NaN	Mast Special Edition Mcore-P 11000 об/мин	NaN	6 месяцев	NaN	tatu-shop
804	Беспроводная тату машинка BRONC MAGIC Wireless Pen Tattoo & PMU Rose Red	13580	137 г	до 5 часов	NaN	от 0 до 4 мм	NaN	5	BRONC MAGIC wireless tattoo pen	Алюминий	NaN	Швейцарский двигатель 12000 об/мин	NaN	6 месяцев	NaN	tatu-shop
805	Роторная тату машинка Rocket Mini Pen & Wireless Battery black	5690	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	tatu-shop
806	Беспроводная тату машинка AVA DUKE V3 Wireless Pen Purple	7380	250 г	4-8 часов	2 часа	NaN	NaN	4,5-12 V	NaN	авиационный алюминий	NaN	Carbon Brush Motor (3	AVA TATTOO MACHINE	6 месяцев	NaN	tatu-shop
807	Роторная тату машинка Skinductor Vertigo S	15000	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	tatu-shop
808	Беспроводная тату машинка BRONC MAGIC Wireless Pen Tattoo & PMU Army Green	13580	137 г	до 5 часов	NaN	от 0 до 4 мм	NaN	5	BRONC MAGIC wireless tattoo pen	Алюминий	NaN	Швейцарский двигатель 12000 об/мин	NaN	6 месяцев	NaN	tatu-shop
809	Роторная тату машинка Mast Tour Mini Orange	5990	82 г	NaN	NaN	NaN	NaN	5 - 8 В	NaN	авиационный алюминий	3 Ватт	Япония 8V / 9000 об/мин	DragonHawk	6 месяцев	NaN	tatu-shop
810	Беспроводная тату машинка DragoArt Hammer Green	9465	610г	4-6 часов	NaN	от 0 до 4	NaN	3-12V	DragoArt Hammer	авиационный алюминий	NaN	Brushless Motor 12V-10000 об	DragoArt Tattoo	NaN	NaN	tatu-shop
811	Роторная тату машинка Mast Nano Wireless Rotary Pen WQP-006	9480	64г	до 6 часов	NaN	NaN	1200mAh	6-11V	NaN	алюминий	NaN	Япония 8V 9000 об/мин	DragonHawk	NaN	NaN	tatu-shop
812	Беспроводная машинка для перманентного макияжа INKin Polar PMU Black	8990	73г	NaN	1,5 ч	0 - 3,5 мм	NaN	5 - 10V	INKin Polar Pmu	авиационный алюминий	NaN	NaN	INKin - EZ Tattoo	6 месяцев	NaN	tatu-shop
813	Роторная машинка для татуажа Mast Tour Air PMU 2.3mm Stroke Pink	5990	45 грамм	NaN	NaN	NaN	NaN	5-9V	Mast Tour Air PMU	Авиационный алюминий	NaN	Mcore Coreless Motor 12V /10000 об/мин	MAST	6 месяцев	NaN	tatu-shop
814	Беспроводная тату машинка MAST Lancer Wireless Pen with 4.2mm Stroke Black	14990	190 г	до 6 часов	NaN	0-4,5 мм	NaN	5-12V	NaN	Алюминий	NaN	Японский мотор	NaN	NaN	NaN	tatu-shop
815	Беспроводная тату машинка AVA UNi-B Adjustable stroke 2.5-4.5mm Green	14990	600 г	6-8 часов	2 часа	NaN	NaN	4,5-12 V	AVA UNi-B	авиационный алюминий	5 W	AVA motor Metal Brush DC motor - 10500 об/мин	AVA TATTOO MACHINE	6 месяцев	NaN	tatu-shop
816	Роторная тату машинка Pen Hummingbird Bronc V9 red	9990	150 гр	NaN	NaN	NaN	NaN	6-9 V	NaN	авиационный алюминий	NaN	Швейцария 8W, 12000 об/мин	NaN	6 месяцев	NaN	tatu-shop
817	Беспроводная роторная тату машинка Mast Racer Wireless Pen 4.0mm Strokes Red	16930	149 г	до 6 часов	2 часа	NaN	NaN	5-12 В	NaN	Авиационный алюминий	NaN	Бесщеточный двигатель	DragonHawk	6 месяцев	NaN	tatu-shop
818	Роторная тату машинка - Defenderr Ruby Stealth	15500	165 г	NaN	NaN	NaN	NaN	NaN	NaN	авиационный алюминий с защитным покрытием	NaN	Faulhaber (Германия) - 8000 об	NaN	1 год	NaN	tatu-shop
819	Беспроводная тату машинка EZ P3 Adjustable 6 Stroke green	11480	228 г	3-5 часов	NaN	NaN	NaN	5-12 V	NaN	авиационный алюминий	NaN	EZ Custom made Swiss / 10000 об/мин	NaN	6 месяцев	NaN	tatu-shop
820	Беспроводная роторная тату машинка BRONC Conductor RTM-111 Wireless Pen Black	10720	239 г	от 7 до 9 часов	NaN	от 0 до 4 мм	NaN	5-11 V	BRONC Conductor RTM-111 Wireless Pen	Авиационный алюминий	NaN	DC-motor Swiss Motor - Швейцарский двигатель	NaN	6 месяцев	NaN	tatu-shop
821	Беспроводная тату машинка BRONC MAGIC Wireless Pen Tattoo & PMU Purple	13580	137 г	до 5 часов	NaN	от 0 до 4 мм	NaN	5	BRONC MAGIC wireless tattoo pen	Алюминий	NaN	Швейцарский двигатель 12000 об/мин	NaN	6 месяцев	NaN	tatu-shop
822	Роторная тату машинка - Defenderr Iron S Stealth	9990	150 г	NaN	NaN	NaN	NaN	NaN	NaN	авиационный алюминий с защитным покрытием	NaN	Faulhaber (Германия) - 8000 об	NaN	1 год	NaN	tatu-shop
823	Беспроводная роторная тату машинка Mast Racer Wireless Pen 4.0mm Strokes x 2 Power Orange	19750	149 г	до 6 часов	2 часа	NaN	NaN	5-12 В	NaN	Авиационный алюминий	NaN	Бесщеточный двигатель	DragonHawk	6 месяцев	NaN	tatu-shop
824	Роторная тату машинка EZ Avant Flex Soft Hard red	7350	159 г	NaN	NaN	NaN	NaN	NaN	NaN	авиационный алюминий	NaN	Coreless Motor - 12В / 9000 об/мин	NaN	6 месяцев	NaN	tatu-shop
825	Роторная тату машинка Mast Magi PM Pink	6380	91 г	NaN	NaN	до 4,5 мм (регулировка вылета осуществляется выкручиванием держателя)	NaN	5 - 9 V	Mast Magi	алюминий	NaN	Япония 12В/12000 об	DragonHawk	6 месяцев	NaN	tatu-shop
826	Роторная машинка для татуажа EZ POPU TH015 Pink	4240	66 грамм	NaN	NaN	NaN	NaN	6-8V	EZ POPU TH015	Авиационный алюминий	NaN	Японский двигатель 6000-8000 об/мин	EZ Tattoo	6 месяцев	NaN	tatu-shop
827	Роторная тату машинка Mast Magi PM Rose gold	6380	91 г	NaN	NaN	до 4,5 мм (регулировка вылета осуществляется выкручиванием держателя)	NaN	5 - 9 V	Mast Magi	алюминий	NaN	Япония 12В/12000 об	DragonHawk	6 месяцев	NaN	tatu-shop
831	Беспроводная роторная тату машинка Mast Racer Wireless Pen 4.0mm Strokes Orange	16930	149 г	до 6 часов	2 часа	NaN	NaN	5-12 В	NaN	Авиационный алюминий	NaN	Бесщеточный двигатель	DragonHawk	6 месяцев	NaN	tatu-shop
832	Роторная тату машинка Dragon Small-x3 pink	1945	110 г	NaN	NaN	NaN	NaN	NaN	Dragon Small-x3	NaN	NaN	Тайвань	Yilong Tattoo Supply	NaN	NaN	tatu-shop
833	Роторная тату машинка MAST-NANO 800 mini black	7740	82 г	NaN	NaN	до 4,5 мм (регулировка вылета осуществляется выкручиванием держателя)	NaN	5 - 8 В	MAST-NANO 800 mini	авиационный алюминий	NaN	Япония 8V	DragonHawk	6 месяцев	NaN	tatu-shop
834	Беспроводная тату машинка EZ Caster Wireless Green	3850	171 г	5 часов	NaN	от 0 до 4,5 мм	NaN	5-12V	EZ Caster	авиационный алюминий	NaN	EZ Customized Motor	EZ Tattoo	6 месяцев	NaN	tatu-shop
835	Роторная тату машинка Mast P10 Ultra Pen 2.5mm Stroke	6980	100 г	NaN	NaN	NaN	NaN	5-10 V	NaN	авиационный алюминий	NaN	Японский мотор	DragonHawk	6 месяцев	NaN	tatu-shop
836	Машинка для татуажа WTE Universal Princess 2024 Red & WTE Power Rca & эксцентрики 2.6 и 3.0мм	40980	52 г	до 5 часов	NaN	NaN	1300 мАч	NaN	WTE POWER RCA	анодированный алюминий	NaN	NaN	WTE Professional	NaN	NaN	tatu-shop
837	Роторная тату машинка ABS-250 red	1490	70 г	NaN	NaN	(в зависимости от марки картриджей) до 4 мм	NaN	7,5 - 10 V	ABS-250	пластик	NaN	NaN	Yilong Tattoo Supply	NaN	8V - 9000 об	tatu-shop
838	Роторная тату машинка Pen Cobra Cometa Black	3195	138 гр	NaN	NaN	NaN	NaN	6 - 9 V	NaN	авиационный алюминий	NaN	Тайвань	Cobra Tattoo	NaN	NaN	tatu-shop
839	Роторная тату машинка - Poseidon v2 mini pen pink	5990	90 г	NaN	NaN	NaN	NaN	5 - 12V	Poseidon v2 mini pen	авиационный алюминий	NaN	Швейцарский мотор 12W	Solong Tattoo	NaN	NaN	tatu-shop
840	Беспроводная машинка для татуажа - Defenderr FENIX Red	23950	135 г	NaN	2,5 часа	NaN	1600 мАч	NaN	NaN	авиационный алюминий с защитным покрытием	NaN	2W - 12000 об	NaN	1 год	NaN	tatu-shop
841	Беспроводная тату машинка EZ P3 Pro 6 Strokes 2 Power Matte Black	15990	247 г	до 5 часов	2 часа	NaN	NaN	4-12 V	NaN	авиационный алюминий с защитным покрытием	NaN	EZ Customized External Rotor Brushless Motor - 12V/10000 об/мин	NaN	6 месяцев	NaN	tatu-shop
842	Роторная тату машинка AVA GT Mini Black	5860	96 г	NaN	NaN	NaN	NaN	4 - 10 V 11000 об/мин	NaN	авиационный алюминий	NaN	Япония	AVA TATTOO MACHINE	6 месяцев	NaN	tatu-shop
843	Беспроводная машинка для перманентного макияжа EZ LOLA Air S PMU Silver	7555	105 гр	4-6 часов	2 часа	0 - 3,5 мм	NaN	3 - 10V	EZ LOLA Air S PMU	авиационный алюминий	NaN	NaN	EZ Tattoo	6 месяцев	NaN	tatu-shop
844	Беспроводная тату машинка - MAST Amy With 4MM Stroke Black	13990	115 г	до 3 часов	NaN	0-4 мм	NaN	4-12V	MAST Amy	Алюминий	NaN	Mast Special Edition Coreless Motor 9V/10400 об	NaN	6 месяцев	NaN	tatu-shop
845	Беспроводная роторная тату машинка DragonHawk X20 Wireless Pen	7990	174 г	до 4 часов	2 часа	NaN	NaN	5-12 V	DragonHawk X20	авиационный алюминий с защитным покрытием	NaN	Mcore-A Motor 12V/10000 об/мин	NaN	6 месяцев	NaN	tatu-shop
846	Роторная тату машинка Yilong Mini Short Pen black	1970	109 г	NaN	NaN	до 4,5 мм (регулировка вылета осуществляется выкручиванием держателя)	NaN	NaN	Yilong Mini Short Pen	NaN	NaN	8V-9000 об	Yilong Tattoo	NaN	NaN	tatu-shop
847	Беспроводная роторная тату машинка BRONC Conductor RTM-111 Wireless Pen Red	10720	239 г	от 7 до 9 часов	NaN	от 0 до 4 мм	NaN	5-11 V	BRONC Conductor RTM-111 Wireless Pen	Авиационный алюминий	NaN	DC-motor Swiss Motor - Швейцарский двигатель	NaN	6 месяцев	NaN	tatu-shop
848	Беспроводная тату машинка AVA GT EP9 WIRELESS PEN 3.5mm Black	12340	NaN	до 6 часов	3-4 часа	NaN	NaN	NaN	AVA GT EP9	авиационный алюминий	5 Вт	AVA OEM Japanese Motor (бесщеточный двигатель постоянного тока)	AVA TATTOO MACHINE	6 месяцев	NaN	tatu-shop
849	Беспроводная тату машинка EZ P3 Pro Touch 6 Strokes X 2Power Black	16990	270 гр	8-10 часов	2 часа	от 0 до 4,5 мм	2000 mA/ч	4-12V	EZ P3 Pro Touch	Авиационный алюминий	NaN	Двигатель без сердечника EZ 12V-10000 об/мин	EZ TATTOO	6 месяцев	NaN	tatu-shop
850	Роторная тату машинка AVA Pen GTXS Red	8370	173 г	NaN	NaN	NaN	NaN	5 - 12 V 11000 об/мин	NaN	авиационный алюминий	NaN	Япония	AVA TATTOO MACHINE	6 месяцев	NaN	tatu-shop
851	Роторная тату машинка NB Needle Bee Wireless RTM-1003 black	3490	50 г	NaN	NaN	NaN	NaN	5-8 V	NaN	авиационный алюминий	NaN	Япония 10000 об/мин	NB Needle Bee Tattoo	NaN	NaN	tatu-shop
852	Беспроводная тату машинка EZ P2 MT Multi-Touch Silver	14680	227 г	до 5 часов	2,5 часа	NaN	NaN	5 — 12 V	EZ P2 MT Multi-Touch	авиационный алюминий	NaN	NaN	EZ Tattoo	6 месяцев	10000 об/мин ± 10%	tatu-shop
853	Беспроводная тату машинка WJX W3 Wireless Pen 7 Strokes Black	19860	198 г	до 4 часов	2 часа	NaN	NaN	4-12 V	NaN	авиационный алюминий с защитным покрытием	NaN	Высокопроизводительный двигатель без сердечника Careless motor 12V/10000 об/мин	NaN	6 месяцев	NaN	tatu-shop
854	Роторная тату машинка - CNC PFARRER	9980	160 г	NaN	NaN	NaN	NaN	5-12V	NaN	авиационный алюминий	NaN	Японский	CNC	6 месяцев	NaN	tatu-shop
855	Беспроводная тату машинка Yilong Max Pro Black	8560	229 г	6-10 часов	2 часа	NaN	NaN	4-12 V	NaN	авиационный алюминий	NaN	Бесщëточный двигатель 11000 об/мин	NaN	NaN	NaN	tatu-shop
882	Беспроводная тату машинка EZ Filter Freedom X 2 Power Green	6660	200 г	NaN	NaN	от 0 до 4,5 мм	NaN	5-12V	EZ Filter Freedom	авиационный алюминий	NaN	Coreless Motor	EZ Tattoo	6 месяцев	NaN	tatu-shop
856	Роторная тату машинка Mast P15 Pen Machine Red	6470	74 г	NaN	NaN	до 4 мм (регулировка вылета осуществляется выкручиванием держателя)	NaN	5 - 9 V	Mast P15	Авиационный алюминий	NaN	Японский двигатель без сердечника 9В/8000 об	DragonHawk	6 месяцев	NaN	tatu-shop
857	Роторная тату машинка Metis APR 3 АМАКС PEN	15850	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	tatu-shop
858	Беспроводная тату машинка EZ P3 Pro 6 Strokes Gloss Gray	12990	247 г	до 5 часов	2 часа	NaN	NaN	4-12 V	NaN	авиационный алюминий с защитным покрытием	NaN	EZ Customized External Rotor Brushless Motor - 12V/10000 об/мин	NaN	6 месяцев	NaN	tatu-shop
859	Роторная тату машинка - Defenderr Onyx Stealth	13500	76 г	NaN	NaN	NaN	NaN	NaN	NaN	авиационный алюминий с защитным покрытием	NaN	Faulhaber (Германия) - 10000 об	NaN	1 год	NaN	tatu-shop
860	Беспроводная тату машинка EZ Popu Diva PMU 6 Stroke Seraph	18990	487 гр	5 -7 ч	2 ч	0 - 4,5 мм	1600 mA/ч	4 - 12V	EZ Popu Diva	авиационный алюминий с защитным покрытием	NaN	NaN	EZ Tattoo	6 месяцев	NaN	tatu-shop
861	Беспроводная машинка для тату и татуажа Cobra Magi P9 Multi-Mode Stroke 3.0mm X 2Power Black	9990	200 гр	до 4 часов	1 час	NaN	NaN	2	Cobra Magi P9 Multi-Mode	Авиационный алюминий	NaN	NaN	Cobra Tattoo	NaN	NaN	tatu-shop
862	Беспроводная тату машинка INOX PRIME WIRELESS GOLD STROKE 4.2mm	79950	217 гр	до 8 часов	до 3 часов	NaN	NaN	NaN	INOX PRIME WIRELESS GOLD	Авиационный алюминий	NaN	фирменный бесщеточный от KWADRON	NaN	NaN	NaN	tatu-shop
863	Роторная тату машинка Pen Hawk GSR-70 gold	3990	155 гр	NaN	NaN	NaN	NaN	4-10 V	Pen Hawk GSR-70	NaN	NaN	Тайвань	Solong Tattoo	NaN	NaN	tatu-shop
864	Роторная машинка для татуажа EZ POPU OMNI PEN PMU PINK	6470	80 грамм	NaN	NaN	NaN	NaN	6-8V	EZ POPU OMNI PEN PMU	Авиационный алюминий	NaN	Японский двигатель 6000-8000 об/мин	EZ Tattoo	6 месяцев	NaN	tatu-shop
865	Роторная тату машинка - MAST ATOM black	3380	135 гр	NaN	NaN	NaN	NaN	5-13V	NaN	авиационный алюминий	NaN	Япония 12V - 10000/мин	DragonHawk	6 месяцев	NaN	tatu-shop
866	Роторная тату машинка Pen Cobra Barrel Black	3150	120 г	NaN	NaN	NaN	NaN	NaN	Cobra Barrel	NaN	NaN	Тайвань	Cobra Tattoo	NaN	NaN	tatu-shop
867	Беспроводная машинка Mast P60 PMU And Tattoo Adjustable 2.2mm-3.2mm Stroke Gold	11540	121 г	около 3 часов	NaN	0-3,5 мм	NaN	4-10V	Mast P60	Авиационный алюминий	NaN	Mast Special Edition Mcore-P 11000 об/мин	NaN	6 месяцев	NaN	tatu-shop
868	Беспроводная тату машинка BRONC V80 Strokes 2.0 - 4.2mm Green	7380	400 гр	до 8 часов	3 часа	от 0 до 4,5 мм (регулировка вылета осуществляется выкручиванием держателя)	NaN	4-12 V	BRONC V80	Авиационный алюминий с защитным покрытием	NaN	Coreless Motor 12V / 10000 об/мин	NaN	6 месяцев	NaN	tatu-shop
869	Роторная тату машинка Dragonhawk M6 Super Rotary 4mm Red	5840	175 г	NaN	NaN	NaN	NaN	5 - 12 V	NaN	авиационный алюминий	NaN	Япония 12V-10500 об/мин	DragonHawk	6 месяцев	NaN	tatu-shop
870	Беспроводная тату машинка Dragonhawk X8 Tunable Frequency 4mm Stroke Black	11800	144г	до 3 часов	2 часа	NaN	NaN	NaN	NaN	авиационный алюминий	NaN	Brushless motor - бесщеточный двигатель	NaN	6 месяцев	NaN	tatu-shop
871	Роторная тату машинка - Dragonhawk Fold Batpen 7 Strokes Length black	12200	201 г	NaN	NaN	NaN	NaN	NaN	NaN	авиационный алюминий	NaN	8V / 6500 об/мин	NaN	6 месяцев	NaN	tatu-shop
872	Беспроводная машинка для татуажа EZ LOLA AIR Pro PMU Wireless 6 Strokes Pink	11980	111 г	4 - 6 ч	2 ч	0 - 3,5 мм	NaN	3 - 10V	EZ LOLA AIR Pro	авиационный алюминий	NaN	NaN	EZ Tattoo	6 месяцев	NaN	tatu-shop
873	Беспроводная тату машинка AVA UNI-X Stroke 4.5mm Black	15380	660 гр	NaN	2 часа	NaN	NaN	4,5-12 V	AVA UNI-X	авиационный алюминий	5W	AVA Motor Brushless Motor - 10500 об/мин	AVA TATTOO MACHINE	6 месяцев	NaN	tatu-shop
874	Беспроводная роторная тату машинка Big Wasp Arrow RTM-114 Wireless Pen Green	8590	240 г	от 7 до 9 часов	NaN	от 0 до 4 мм	NaN	5-11 V	Big Wasp Arrow RTM-114 Wireless Pen	Авиационный алюминий	NaN	DC-motor Swiss Motor - Швейцарский двигатель	NaN	6 месяцев	NaN	tatu-shop
875	Беспроводная тату машинка - Arena A-power Wireless 2 Batteries	19990	181 г	до 8 часов	NaN	0 - 4,5 мм	NaN	4-12V	Arena A-power Wireless	Авиационный алюминий	NaN	Япония 8V-11000об/мин	NaN	6 месяцев	NaN	tatu-shop
876	Беспроводная тату машинка EZ Filter Freedom Red	5180	200 г	5 часов	NaN	от 0 до 4,5 мм	NaN	5-12V	EZ Filter Freedom	авиационный алюминий	NaN	Coreless Motor	EZ Tattoo	6 месяцев	NaN	tatu-shop
877	Роторная тату машинка Pen "Rocket V3" black	4980	155 г	NaN	NaN	NaN	NaN	NaN	NaN	Алюминий	NaN	Японский - 8 V-9000 об	Rocket Tattoo	NaN	NaN	tatu-shop
878	Роторная тату машинка EZ P4 Mini Red	7990	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	tatu-shop
879	Беспроводная тату машинка BRONC TOUGH Wireless Pen 11 Stroke Red	15790	267 г	до 10 часов	2,5 часа	от 0 до 4,5 мм (регулировка вылета осуществляется выкручиванием держателя)	NaN	4-12 V	BRONC TOUGH	Авиационный алюминий с защитным покрытием	NaN	DC Swiss Motor - 11000 об/мин	NaN	6 месяцев	NaN	tatu-shop
880	Беспроводная машинка для татуажа - Defenderr FENIX S Gunmetal	26950	135 г	NaN	2,5 часа	NaN	1600 мАч	NaN	NaN	авиационный алюминий с защитным покрытием	NaN	2W - 12000 об	NaN	1 год	NaN	tatu-shop
881	Беспроводная роторная тату машинка Vlad Blad Ultron 3 MAX Stroke 3.7mm	99850	201 г	до 11 часов	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	Vlad Blad (Россия)	1 год	NaN	tatu-shop
908	Роторная тату машинка Pen - Fox V2 gold	2680	130 гр	NaN	NaN	NaN	NaN	5-10 V	Fox V2	авиационный алюминий	NaN	Японский двигатель	Solong Tattoo	NaN	NaN	tatu-shop
883	Роторная тату машинка - Hybrid Pen H-100	4570	140 г	NaN	NaN	до 4,5 мм (регулировка вылета осуществляется выкручиванием держателя)	NaN	7-11 Вольт	Hybrid Pen H-100	NaN	NaN	Япония	Solong Tattoo	NaN	NaN	tatu-shop
884	Беспроводная роторная тату машинка Big Wasp Arrow RTM-114 Wireless Pen Black	8590	240 г	от 7 до 9 часов	NaN	от 0 до 4 мм	NaN	5-11 V	Big Wasp Arrow RTM-114 Wireless Pen	Авиационный алюминий	NaN	DC-motor Swiss Motor - Швейцарский двигатель	NaN	6 месяцев	NaN	tatu-shop
885	Беспроводная тату машинка Yilong F3 Adjustable 6 Stroke Black	16450	230 г	до 8 часов	2 часа	NaN	NaN	4-12 V	NaN	Авиационный алюминий с защитным покрытием	NaN	Бесщеточный двигатель 12V-10000 об/мин	NaN	NaN	NaN	tatu-shop
886	Беспроводная тату машинка AVA UNi-B Adjustable stroke 2.5-4.5mm Black	15490	600 г	6-8 часов	2 часа	NaN	NaN	4,5-12 V	AVA UNi-B	авиационный алюминий	5 W	AVA motor Metal Brush DC motor - 10500 об/мин	AVA TATTOO MACHINE	6 месяцев	NaN	tatu-shop
887	Беспроводная тату машинка Ambition VIBE-2 Strokes 3.5 - 4.0mm Black	13950	166 гр	5-6 часов	2 часа	NaN	NaN	4-12V	Ambition VIBE-2	Авиационный алюминий	NaN	Ambition Brushless Motor 12V/10000 об/мин	Ambition Tattoo	6 месяцев	NaN	tatu-shop
888	Беспроводная тату машинка AVA GT EP9 WIRELESS PEN 3.5mm Green	12340	NaN	до 6 часов	3-4 часа	NaN	NaN	NaN	AVA GT EP9	авиационный алюминий	5 Вт	AVA OEM Japanese Motor (бесщеточный двигатель постоянного тока)	AVA TATTOO MACHINE	6 месяцев	NaN	tatu-shop
889	Беспроводная тату машинка - Pen MAST Archer Wireless Battery black	13750	189 г	до 8 часов	NaN	0-4,5 мм	NaN	5-12V	MAST Archer	Алюминий	NaN	Япония 10V-8750 об/мин	NaN	6 месяцев	NaN	tatu-shop
890	Беспроводная тату машинка BRONC X1 Wireless Pen 11 Stroke Green	15720	NaN	NaN	NaN	от 0 до 4,5 мм (регулировка вылета осуществляется выкручиванием держателя)	NaN	4-12 V	BRONC X1 Wireless Pen	Авиационный алюминий с защитным покрытием	NaN	Швейцарский двигатель 12V / 11000 об/мин	NaN	6 месяцев	NaN	tatu-shop
891	Беспроводная машинка для татуажа EZ LOLA LIGHT PMU Purple	9890	81 гр	3-5 часов	NaN	0-4,5 мм	800 mA/ч	4-12V	EZ LOLA LIGHT	Авиационный алюминий	NaN	Coreless Motor 12V/10000 об/мин	NaN	6 месяцев	NaN	tatu-shop
892	Беспроводная роторная тату машинка Hello Soldier V1 Pen Gold	7990	200 г	до 6 часов	NaN	от 0 до 4,5 мм	NaN	5-12 V (1 режим 5V, 2 режим 6V, 3 режим 7V, 4 режим 8V, 5 режим 9V, 6 режим 10V, 7 режим 11V, 8 режим 12V)	Hello Soldier V1	Алюминий	NaN	Япония 8V-12000 об/мин	Solong Tattoo	NaN	NaN	tatu-shop
893	Беспроводная тату машинка EZ P3 Pro Lumina 6 Strokes X 2 Power Purple	16380	480 гр	до 5 часов	2 часа	NaN	1600 mA/ч	4-12 V	EZ P3 Pro Lumina	авиационный алюминий с защитным покрытием	NaN	EZ Customized External Rotor Brushless Motor 12V-10000 об/мин	NaN	6 месяцев	NaN	tatu-shop
894	Роторная тату машинка EZ P4 Mini pink	7990	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	tatu-shop
895	Беспроводная роторная тату машинка - BRONC Short Wireless Tattoo Pen Silver	9990	151 г	от 4 до 7 часов	NaN	от 0 до 4,5 мм	NaN	4-11 V	BRONC SHORT	Алюминий	NaN	Швейцарский двигатель 11000 об/мин	NaN	6 месяцев	NaN	tatu-shop
896	Универсальная роторная тату машинка Skinductor Vertigo Heavy	15000	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	tatu-shop
897	Беспроводная тату машинка MAST ARCHER S ULTRA PINK	15960	169 г	4-8 часов	50 минут	от 0 до 4,5 мм	NaN	4-12V	MAST Archer S	Авиационный алюминий	NaN	Высокопроизводительный бесщеточный двигатель M-Core	MAST (DragonHawk)	6 месяцев	NaN	tatu-shop
898	Беспроводная роторная машинка AVA SOULNOVA E3 PERMANENT MAKEUP PEN Grey	9390	105 г	3-7 ч	2 ч	0 - 3,5 мм	NaN	4,5 - 11V	SOULNOVA E3 PERMANENT MAKEUP PEN	авиационный алюминий	NaN	NaN	AVA TATTOO MACHINE	6 месяцев	NaN	tatu-shop
899	Беспроводная тату машинка BRONC V77 Strokes 2.0 - 4.2mm X 2Power Green	8490	480 гр	до 8 часов	3 часа	от 0 до 4,5 мм (регулировка вылета осуществляется выкручиванием держателя)	NaN	4-12 V	BRONC V77	Авиационный алюминий с защитным покрытием	NaN	Coreless Motor 12V / 9500 об/мин	NaN	6 месяцев	NaN	tatu-shop
900	Беспроводная тату машинка EZ INKIN HOVER FM Dotwork Wireless Tattoo Pen Black	10990	226 г	до 5 часов	2 часа	NaN	NaN	5 — 12 V	EZ INKIN HOVER FM Dotwork	Авиационный алюминий	NaN	NaN	EZ Tattoo	6 месяцев	NaN	tatu-shop
901	Роторная тату машинка DragoArt Atomic II Gold	2760	147 гр	NaN	NaN	NaN	NaN	5 - 12 V 10000 об/мин	DragoArt Atomic II	авиационный алюминий	NaN	Тайвань (Premium Motor)	DragoArt Tattoo	NaN	NaN	tatu-shop
902	Роторная тату машинка AVA Pen GTXS Purple	8370	173 г	NaN	NaN	NaN	NaN	5 - 12 V 11000 об/мин	NaN	авиационный алюминий	NaN	Япония	AVA TATTOO MACHINE	6 месяцев	NaN	tatu-shop
903	Роторная тату машинка EZ P4 Mini Black	7990	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	tatu-shop
904	Беспроводная машинка для татуажа - Mast P20 Permanent With 2.5MM Stroke Purple	9980	122 г	4-6 часов	NaN	0-3,5 мм	NaN	4-10V	Mast P20	Авиационный алюминий	NaN	Mast Special Edition Coreless Motor 10V/10000 об	NaN	6 месяцев	NaN	tatu-shop
905	Беспроводная тату машинка Mast Archer S Ultra Professional Bundle With Bluetooth Pedal	20990	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	tatu-shop
906	Беспроводная тату машинка Yilong Max Pro Gold	8560	229 г	6-10 часов	2 часа	NaN	NaN	4-12 V	NaN	авиационный алюминий	NaN	Бесщëточный двигатель 11000 об/мин	NaN	NaN	NaN	tatu-shop
907	Роторная тату машинка Dragon Small-x3 blue	1945	110 г	NaN	NaN	NaN	NaN	NaN	Dragon Small-x3	NaN	NaN	Тайвань	Yilong Tattoo Supply	NaN	NaN	tatu-shop
4627	Mast Archer 2	13405	NaN	6	2	3.5	2000	NaN	NaN	NaN	NaN	бесщеточный Mcore	Китай	6 месяцев	NaN	fenix-tattoo
910	Беспроводная тату машинка AVA GT Pen GTS Adjustable Stroke 2.0-4.5mm Gray	19990	1400 гр	NaN	2 часа	NaN	NaN	4,5-12 V	AVA GT Pen GTS	авиационный алюминий	5W	AVA Motor Metal Brush DC motor - 10500 об/мин	AVA TATTOO MACHINE	6 месяцев	NaN	tatu-shop
911	Роторная тату машинка EZ Avant Flex Soft Hard gold	7350	159 г	NaN	NaN	NaN	NaN	NaN	NaN	авиационный алюминий	NaN	Coreless Motor - 12В / 9000 об/мин	NaN	6 месяцев	NaN	tatu-shop
912	Беспроводная роторная тату машинка Hello Soldier V1 Pen Black	7990	200 г	до 6 часов	NaN	от 0 до 4,5 мм	NaN	5-12 V (1 режим 5V, 2 режим 6V, 3 режим 7V, 4 режим 8V, 5 режим 9V, 6 режим 10V, 7 режим 11V, 8 режим 12V)	Hello Soldier V1	Алюминий	NaN	Япония 8V-12000 об/мин	Solong Tattoo	NaN	NaN	tatu-shop
913	Роторная тату машинка EZ P4 - SE Black	8370	150 г	NaN	NaN	(в зависимости от марки картриджей) до 4	NaN	NaN	P4 SE	авиационный алюминий	NaN	NaN	EZ Tattoo	6 месяцев	7000-9000 об	tatu-shop
914	Роторная тату машинка DragoArt Warrior Red	2590	134 гр	NaN	NaN	NaN	NaN	5 - 12 V 12000 об/мин	DragoArt Warrior	авиационный алюминий	NaN	Тайвань (Premium Motor)	DragoArt Tattoo	NaN	NaN	tatu-shop
915	Беспроводная машинка для перманентного макияжа INKin Polar PMU Silver	8990	73г	NaN	1,5 ч	0 - 3,5 мм	NaN	5 - 10V	INKin Polar Pmu	авиационный алюминий	NaN	NaN	INKin - EZ Tattoo	6 месяцев	NaN	tatu-shop
916	Беспроводная тату машинка Mast Rider Pro 4.0MM Stroke	10320	129 г	до 5 часов	2-2,5 ч	NaN	NaN	4-12 В	Mast Rider Pro	авиационный алюминий	NaN	Бесщеточный Двигатель	DragonHawk	6 месяцев	NaN	tatu-shop
917	Беспроводная тату машинка DragoArt D-T2 Wireless Tattoo Pen Black	7490	NaN	4 - 6 часов	NaN	от 0 до 4	NaN	4-12V	DragoArt D-T2 Wireless Tattoo Pen	авиационный алюминий	NaN	Brushless Motor 12V-10000 об	DragoArt Tattoo	NaN	NaN	tatu-shop
918	Беспроводная роторная тату машинка - BRONC Wireless Pen V6 red	12590	229 г	от 7 до 9 часов	NaN	от 0 до 4,5 мм	NaN	5-11 V	BRONC Wireless Pen V6	Алюминий	NaN	Швейцарский двигатель 6W	NaN	NaN	NaN	tatu-shop
919	Универсальная роторная тату машинка Skinductor Vertigo 2 Heavy Long Stroke	15000	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	tatu-shop
920	Роторная тату машинка Pen Hawk GSX-900 pink	3990	155 гр	NaN	NaN	NaN	NaN	4-10 V	Pen Hawk GSX-900	NaN	NaN	Тайвань	Solong Tattoo	NaN	NaN	tatu-shop
921	Роторная тату машинка Metis APR 3 АМАКС PEN x 2 Holders	17450	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	tatu-shop
922	Беспроводная роторная тату машинка - BRONC Wireless Pen V6 Military green	12590	229 г	от 7 до 9 часов	NaN	от 0 до 4,5 мм	NaN	5-11 V	BRONC Wireless Pen V6	Алюминий	NaN	Швейцарский двигатель 6W	NaN	6 месяцев	NaN	tatu-shop
923	Беспроводная тату машинка BRONC X2 Adjustable Stroke 11 Options Army Green	17950	550 гр	NaN	NaN	от 0 до 4,5 мм (регулировка вылета осуществляется выкручиванием держателя)	NaN	4-12 V	BRONC X2	Авиационный алюминий с защитным покрытием	NaN	Швейцарский двигатель 12V / 11000 об/мин	NaN	6 месяцев	NaN	tatu-shop
924	Беспроводная тату машинка MAST Tour Y22 Wireless Red	10990	138 г	до 4 часов	NaN	0-4 мм	NaN	5-12V	MAST Tour Y22 Wireless	Алюминий	NaN	Япония - 8V/10000 об	NaN	6 месяцев	NaN	tatu-shop
925	Беспроводная тату машинка EZ P3 Adjustable 6 Stroke silver	11480	228 г	3-5 часов	NaN	NaN	NaN	5-12 V	NaN	авиационный алюминий	NaN	EZ Custom made Swiss / 10000 об/мин	NaN	6 месяцев	NaN	tatu-shop
926	Беспроводная тату машинка AVA UNi-B Adjustable stroke 2.5-4.5mm Grey	14990	600 г	6-8 часов	2 часа	NaN	NaN	4,5-12 V	AVA UNi-B	авиационный алюминий	5 W	AVA motor Metal Brush DC motor - 10500 об/мин	AVA TATTOO MACHINE	6 месяцев	NaN	tatu-shop
927	Беспроводная тату машинка MT Mustang Evolution Pen 3 Obsidian	44990	NaN	до 10 часов	NaN	NaN	NaN	5-13 V	MT Mustang Evolution Pen 3	Авиационный алюминий с защитным покрытием	NaN	Бесколлекторный двигатель	Mustang Tattoo (Россия)	12 месяцев	NaN	tatu-shop
928	Роторная тату машинка Pen Hawk GSR-70 green	3990	155 гр	NaN	NaN	NaN	NaN	4-10 V	Pen Hawk GSR-70	NaN	NaN	Тайвань	Solong Tattoo	NaN	NaN	tatu-shop
929	Беспроводная роторная тату машинка - Pen Dragon Flux HM-700 black	6990	195 г	до 6 часов	NaN	от 0 до 4,5 мм	NaN	5-12 V	Dragon Flux HM-700	Алюминий	NaN	Япония 9V-12000 об/мин	Solong Tattoo	NaN	NaN	tatu-shop
930	Беспроводная тату машинка EZ Portex Generation P2S Pro x 2 Power Black	10480	197 г	до 5 часов	2 часа	NaN	NaN	4-12 V	NaN	авиационный алюминий с защитным покрытием	NaN	EZ Customized Swiss - 12V/10800 об/мин	NaN	6 месяцев	NaN	tatu-shop
931	Беспроводная машинка для татуажа Mast P40 PMU Stroke 2.5mm Black	9950	120 г	5 часов	NaN	0-3,5 мм	NaN	4-10V	Mast P40	Авиационный алюминий	NaN	Mast Special Edition Coreless Motor 10V/10000 об	NaN	6 месяцев	NaN	tatu-shop
932	Беспроводная роторная машинка AVA SOULNOVA E2 PERMANENT MAKEUP PEN Pink	9340	105 г	3-7 ч	2 ч	0 - 3,5 мм	NaN	4,5 - 11V	SOULNOVA E2 PERMANENT MAKEUP PEN	авиационный алюминий	NaN	NaN	AVA TATTOO MACHINE	6 месяцев	NaN	tatu-shop
933	Роторная тату машинка - Defenderr Onyx Brownstone	13500	76 г	NaN	NaN	NaN	NaN	NaN	NaN	авиационный алюминий с защитным покрытием	NaN	Faulhaber (Германия) - 10000 об	NaN	1 год	NaN	tatu-shop
934	Беспроводная тату машинка EZ Filter Tora Turquoise Gradient	4490	196 гр	до 5 часов	2 часа	от 0 до 4,5 мм	1600 mA/ч	5-12V	EZ Filter Tora	Авиационный алюминий с защитным покрытием	NaN	Двигатель без сердечника EZ 12V-10000 об/мин	EZ TATTOO	6 месяцев	NaN	tatu-shop
935	Роторная тату машинка Rocket Mini Pen blue	3570	115 г	NaN	NaN	до 4,5 мм (регулировка вылета осуществляется выкручиванием держателя)	NaN	NaN	Rocket Mini Pen	NaN	NaN	8V-10000 об	Rocket Tattoo	NaN	NaN	tatu-shop
936	Роторная тату машинка - Defenderr Titanium Stealth	9990	155 г	NaN	NaN	NaN	NaN	NaN	NaN	авиационный алюминий с защитным покрытием	NaN	Faulhaber (Германия) - 6500 об	NaN	1 год	NaN	tatu-shop
937	Беспроводная тату машинка MAST Fold 2 Pro 2.4-4.2mm Strokes X 2 Power Purple	16990	400 гр	до 7 часов	2 часа	NaN	NaN	4-12 V	MAST Fold 2 Pro	Авиационный алюминий с защитным покрытием	NaN	Coreless motor 8V-6500 об/мин	NaN	6 месяцев	NaN	tatu-shop
938	Роторная тату машинка EZ Dagger D-Pack Red (в блистере)	1295	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	tatu-shop
939	Роторная тату машинка Pen Hawk GSR-70 pink	3990	155 гр	NaN	NaN	NaN	NaN	4-10 V	Pen Hawk GSR-70	NaN	NaN	Тайвань	Solong Tattoo	NaN	NaN	tatu-shop
940	Беспроводная тату машинка Defenderr INFINITY Stealth	22990	210 г	NaN	2,5 часа	NaN	1800 мАч	NaN	NaN	авиационный алюминий с защитным покрытием	NaN	V10 MAX - 6500 об	NaN	1 год	NaN	tatu-shop
941	Роторная тату машинка Mast P30 SMP gray	7630	77 г	NaN	NaN	до 4,5 мм (регулировка вылета осуществляется выкручиванием держателя)	NaN	7-9В	NaN	авиационный алюминий	3 Ватт	Япония	DragonHawk	6 месяцев	NaN	tatu-shop
942	Беспроводная тату машинка Big Wasp Meteorix PRO Adjustable Wireless Pen Grey	12690	245 г	до 9 часов	NaN	NaN	NaN	5-11 V	Big Wasp Meteorix PRO Adjustable Wireless Pen	авиационный алюминий	NaN	DC-motor Swiss Motor - Швейцарский двигатель	NaN	6 месяцев	NaN	tatu-shop
943	Беспроводная тату машинка Yilong Y15 Battery Tattoo Pen Green	6990	142 г	до 8 часов	NaN	0-4 мм	NaN	4-12V	Yilong Y15	Авиационный алюминий	NaN	Brush Coreless Motor 12V/11000 об	NaN	NaN	NaN	tatu-shop
944	Беспроводная роторная тату машинка - BRONC Wireless Pen V8 black	13790	227 г	от 7 до 9 часов	NaN	от 0 до 4,5 мм	NaN	4,5-11 V	BRONC Wireless Pen V8	Алюминий	NaN	Швейцарский двигатель	NaN	6 месяцев	NaN	tatu-shop
945	Универсальная роторная тату машинка Vlad Blad Ultron 2 Premium Big Heavy Grip 35мм	29170	120 г	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	10,5 Вт	Vlad Blad (Россия)	1 год	NaN	tatu-shop
946	Беспроводная роторная тату машинка Dragonhawk Fold 2 Wireless Pen 7 Strokes Length Changable	18660	NaN	до 5 часов	1,5 часа	NaN	NaN	4-12 V	Dragonhawk Fold 2 Wireless Pen 7 Strokes Length Changable	авиационный алюминий	NaN	Coreless motor 8V / 6500 об/мин	NaN	6 месяцев	NaN	tatu-shop
947	Роторная машинка AVA SOULNOVA MAKEUP PEN Silver	5930	82 г	NaN	NaN	NaN	NaN	4 - 10 V 11000 об/мин	NaN	авиационный алюминий	NaN	Япония	AVA TATTOO MACHINE	6 месяцев	NaN	tatu-shop
948	Беспроводная тату машинка Dragon PGX-30 red	6990	200 г	до 8 часов	NaN	от 0 до 4	NaN	5-12V	Dragon PGX-30	авиационный алюминий	NaN	Япония	Solong Tattoo	NaN	10800 об	tatu-shop
949	Масло для смазки тату-машин 10 мл	175	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	tatu-shop
950	Беспроводная тату машинка EZ P3 Pro 6 Strokes 2 Power Matte Golden	15990	247 г	до 5 часов	2 часа	NaN	NaN	4-12 V	NaN	авиационный алюминий с защитным покрытием	NaN	EZ Customized External Rotor Brushless Motor - 12V/10000 об/мин	NaN	6 месяцев	NaN	tatu-shop
951	Беспроводная тату машинка MAST Fold 2 Pro 2.4-4.2mm Strokes Pink	14480	400 гр	до 7 часов	2 часа	NaN	NaN	4-12 V	MAST Fold 2 Pro	Авиационный алюминий с защитным покрытием	NaN	Coreless motor 8V-6500 об/мин	NaN	6 месяцев	NaN	tatu-shop
952	Роторная тату машинка Mast P10 purple	6440	117 г	NaN	NaN	NaN	NaN	5 - 8 V 9000 об/мин	NaN	алюминий	3 Ватт	Япония	DragonHawk	6 месяцев	NaN	tatu-shop
953	Роторная тату машинка Pen Hummingbird Bronc V6 orange	9480	150 гр	NaN	NaN	NaN	NaN	6-9 V	Bronc V6	авиационный алюминий	NaN	Япония 5W - 12000 об/мин	NaN	6 месяцев	NaN	tatu-shop
954	Роторная тату машинка - EZ Avant V2 Adjustable 6 Stroke red	7860	194 г	NaN	NaN	NaN	NaN	NaN	NaN	авиационный алюминий	NaN	кастомный мотор EZ - 12В / 9000 об/мин	NaN	6 месяцев	NaN	tatu-shop
955	Беспроводная тату машинка EZ P3 Pro Lumina 6 Strokes Black	13330	420 гр	до 5 часов	2 часа	NaN	1600 mA/ч	4-12 V	EZ P3 Pro Lumina	авиационный алюминий с защитным покрытием	NaN	EZ Customized External Rotor Brushless Motor 12V-10000 об/мин	NaN	6 месяцев	NaN	tatu-shop
956	Беспроводная тату машинка INOX PRIME WIRELESS PEN ROTARY	39990	220 г	до 8 часов на одном заряде	3 часа	3,5мм	NaN	4-12В	INOX PRIME	NaN	NaN	NaN	NaN	1 год	NaN	tatu-shop
957	Беспроводная тату машинка EZ EvoTech S Wireless 4mm Stroke red	9240	160 гр	до 4 часов	2 часа	0 - 4,5 мм	NaN	5 - 9V	EZ EvoTech S	авиационный алюминий	NaN	NaN	EZ Tattoo	6 месяцев	NaN	tatu-shop
958	Роторная тату машинка EZ P4 - SE Gray	8370	150 г	NaN	NaN	(в зависимости от марки картриджей) до 4	NaN	NaN	P4 SE	авиационный алюминий	NaN	NaN	EZ Tattoo	6 месяцев	7000-9000 об	tatu-shop
959	Роторная тату машинка BRONC V4 Tattoo & Makeup Pink	10360	79 гр	NaN	NaN	NaN	NaN	5-9V (татуаж	Bronc V4	авиационный алюминий	NaN	Швейцария 4,5 Вт	NaN	6 месяцев	NaN	tatu-shop
960	Роторная машинка AVA SOULNOVA MAKEUP PEN Champagne	5930	82 г	NaN	NaN	NaN	NaN	4 - 10 V 11000 об/мин	NaN	авиационный алюминий	NaN	Япония	AVA TATTOO MACHINE	6 месяцев	NaN	tatu-shop
961	Универсальная роторная тату машинка Skinductor Vertigo Heavy Long Stroke	15000	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	tatu-shop
962	Роторная тату машинка DragoArt Cavalier Black	2760	140 гр	NaN	NaN	NaN	NaN	5 - 12 V 10000 об/мин	DragoArt Cavalier	авиационный алюминий	NaN	Тайвань (Premium Motor)	DragoArt Tattoo	NaN	NaN	tatu-shop
963	Беспроводная тату машинка DragoArt D-T2 Wireless Tattoo Pen Red	7490	NaN	4 - 6 часов	NaN	от 0 до 4	NaN	4-12V	DragoArt D-T2 Wireless Tattoo Pen	авиационный алюминий	NaN	Brushless Motor 12V-10000 об	DragoArt Tattoo	NaN	NaN	tatu-shop
964	Беспроводная тату машинка EZ Filter Freedom X 2 Power Silver	6660	200 г	NaN	NaN	от 0 до 4,5 мм	NaN	5-12V	EZ Filter Freedom	авиационный алюминий	NaN	Coreless Motor	EZ Tattoo	6 месяцев	NaN	tatu-shop
965	Беспроводная тату машинка BRONC V77 Strokes 2.0 - 4.2mm Black	6990	410 гр	до 8 часов	3 часа	от 0 до 4,5 мм (регулировка вылета осуществляется выкручиванием держателя)	NaN	4-12 V	BRONC V77	Авиационный алюминий с защитным покрытием	NaN	Coreless Motor 12V / 9500 об/мин	NaN	6 месяцев	NaN	tatu-shop
966	Беспроводная тату машинка BRONC SHORT-X Wireless Pen Silver	10580	166 г	до 7 часов	2 часа	от 0 до 4,5 мм (регулировка вылета осуществляется выкручиванием держателя)	NaN	4-12 V	BRONC SHORT-X	Авиационный алюминий с защитным покрытием	NaN	DC Swiss Motor - 11000 об/мин	NaN	6 месяцев	NaN	tatu-shop
967	Роторная тату машинка EX3 black	2990	110 гр	NaN	NaN	NaN	NaN	5 - 10 V	NaN	NaN	NaN	Тайвань	Solong Tattoo	NaN	NaN	tatu-shop
968	Роторная тату машинка AVA GT Mini Blue	5860	96 г	NaN	NaN	NaN	NaN	4 - 10 V 11000 об/мин	NaN	авиационный алюминий	NaN	Япония	AVA TATTOO MACHINE	6 месяцев	NaN	tatu-shop
969	Беспроводная тату машинка DragonHawk SEA Capsule Shape 4.2mm Stroke Light Pink	17380	1210 гр	3-4 часа	40 минут	от 0 до 4,5 мм	1050 mA/ч	4-12V	SEA Capsule Shape	Авиационный алюминий	NaN	Высокопроизводительный Brushless motor SEA 12V-11500 об/мин	DragonHawk Tattoo	6 месяцев	NaN	tatu-shop
970	Беспроводная тату машинка EZ Portex Generation P2S Pro x 2 Power Silver	10480	197 г	до 5 часов	2 часа	NaN	NaN	4-12 V	NaN	авиационный алюминий с защитным покрытием	NaN	EZ Customized Swiss - 12V/10800 об/мин	NaN	6 месяцев	NaN	tatu-shop
971	Беспроводная тату машинка MAST Fold 2 Pro 2.4-4.2mm Strokes Black	14480	400 гр	до 7 часов	2 часа	NaN	NaN	4-12 V	MAST Fold 2 Pro	Авиационный алюминий с защитным покрытием	NaN	Coreless motor 8V-6500 об/мин	NaN	6 месяцев	NaN	tatu-shop
972	Беспроводная тату машинка EZ Portex Generation P2S 4mm Purple	6890	420 гр	до 6 часов	NaN	NaN	1800 mA/ч	5-12V	EZ Portex Generation P2S	Авиационный алюминий	NaN	EZ Custom Swiss Motors (Швейцария)	EZ Tattoo	6 месяцев	10800 об	tatu-shop
973	Беспроводная тату машинка EZ EvoTech S Wireless 4mm Stroke silver	9240	160 гр	до 4 часов	2 часа	0 - 4,5 мм	NaN	5 - 9V	EZ EvoTech S	авиационный алюминий	NaN	NaN	EZ Tattoo	6 месяцев	NaN	tatu-shop
974	Беспроводная тату машинка Ambition VIBE Max Strokes 2.5 - 4.5mm Black	14990	179 гр	до 7 часов	2 часа	NaN	NaN	4-12V	Ambition VIBE Max	Авиационный алюминий	NaN	Ambition Brushless Motor 12V/10000 об/мин	Ambition Tattoo	6 месяцев	NaN	tatu-shop
975	Беспроводная тату машинка MAST Tour Y22 PRO 5 Star Series Gold	11490	138 г	до 4 часов	NaN	NaN	NaN	5-12V	MAST Tour Y22 PRO 5 Star Series	Авиационный алюминий	NaN	Custom Mast Coreless Motor 8V-10000 об/мин	NaN	6 месяцев	NaN	tatu-shop
976	Роторная тату машинка DragoArt Storm Silver	2990	114 г	NaN	NaN	NaN	NaN	6-8V	NaN	авиационный алюминий	NaN	Advanced Customization Motor - 10000 об/мин	DragoArt	NaN	NaN	tatu-shop
977	Беспроводная тату машинка AVA GT EP8 Plus Wireless Pen 4.2mm Stroke Black	10590	NaN	4-8 часов	3 часа	NaN	NaN	4,2-12 V	NaN	авиационный алюминий	NaN	Germany Formula Prcious Metal Brush DC Motor (5W) 12000 rpm	AVA TATTOO MACHINE	6 месяцев	NaN	tatu-shop
978	Беспроводная роторная тату машинка DragonHawk S1 Wireless Pen	7990	119 г	до 6 часов	2 часа	NaN	NaN	4-12 V	DragonHawk S1	Особопрочный пластик	NaN	Iron Core Motor 8V/8000 об/мин	NaN	6 месяцев	NaN	tatu-shop
979	Роторная тату машинка Mast P15 Pen Machine Black	6470	74 г	NaN	NaN	до 4 мм (регулировка вылета осуществляется выкручиванием держателя)	NaN	5 - 9 V	Mast P15	Авиационный алюминий	NaN	Японский двигатель без сердечника 9В/8000 об	DragonHawk	6 месяцев	NaN	tatu-shop
980	Беспроводная тату машинка EZ P2 DotFree Wireless Tattoo Pen Red	11890	227 г	до 5 часов	2 часа	NaN	NaN	5 — 12 V	EZ P2 DotFree	авиационный алюминий	NaN	NaN	EZ Tattoo	6 месяцев	NaN	tatu-shop
981	Беспроводная тату машинка EZ P2 DotFree Wireless Tattoo Pen Silver	11890	227 г	до 5 часов	2 часа	NaN	NaN	5 — 12 V	EZ P2 DotFree	авиационный алюминий	NaN	NaN	EZ Tattoo	6 месяцев	NaN	tatu-shop
982	Беспроводная роторная тату машинка Mast Racer Wireless Pen 4.0mm Strokes Blue	16930	149 г	до 6 часов	2 часа	NaN	NaN	5-12 В	NaN	Авиационный алюминий	NaN	Бесщеточный двигатель	DragonHawk	6 месяцев	NaN	tatu-shop
983	Беспроводная роторная тату машинка Big Wasp Arrow RTM-114 Wireless Pen Brown	8590	240 г	от 7 до 9 часов	NaN	от 0 до 4 мм	NaN	5-11 V	Big Wasp Arrow RTM-114 Wireless Pen	Авиационный алюминий	NaN	DC-motor Swiss Motor - Швейцарский двигатель	NaN	6 месяцев	NaN	tatu-shop
984	Беспроводная тату машинка Yilong Y15 Battery Tattoo Pen Blue	6990	142 г	до 8 часов	NaN	0-4 мм	NaN	4-12V	Yilong Y15	Авиационный алюминий	NaN	Brush Coreless Motor 12V/11000 об	NaN	NaN	NaN	tatu-shop
985	Беспроводная роторная тату машинка - DiRK Pen Battery M800 red	7990	210 г	до 7 часов	NaN	от 0 до 4,5 мм	NaN	5-12 V	DiRK M800	Алюминий	NaN	Япония 9V-12000 об/мин	Solong Tattoo	NaN	NaN	tatu-shop
986	Роторная тату машинка Pen Rocket II version-5, black	3590	140 г	NaN	NaN	до 4,5 мм (регулировка вылета осуществляется выкручиванием держателя)	NaN	NaN	Rocket II version-5	NaN	NaN	МАБУЧИ 8V 9000rpm - 10V 11000rpm	Rocket Tattoo	NaN	NaN	tatu-shop
987	Беспроводная тату машинка Big Wasp Meteorix PRO Adjustable Wireless Pen Army Green	12690	245 г	до 9 часов	NaN	NaN	NaN	5-11 V	Big Wasp Meteorix PRO Adjustable Wireless Pen	авиационный алюминий	NaN	DC-motor Swiss Motor - Швейцарский двигатель	NaN	6 месяцев	NaN	tatu-shop
989	Беспроводная тату машинка CNC CW2 Wireless Tattoo Pen Black	14990	NaN	2,5 -  3 часа	NaN	NaN	NaN	NaN	NaN	Авиационный алюминий	NaN	DC-motor Германия	CNC Tattoo	6 месяцев	NaN	tatu-shop
990	Беспроводная роторная тату машинка - BRONC Wireless Pen V8 army green	13790	227 г	от 7 до 9 часов	NaN	от 0 до 4,5 мм	NaN	4,5-11 V	BRONC Wireless Pen V8	Алюминий	NaN	Швейцарский двигатель	NaN	6 месяцев	NaN	tatu-shop
991	Беспроводная тату машинка Dragonhawk Fold Pro 7 Strokes Length black	18760	199 г	до 5 часов	1,5 часа	NaN	NaN	5-12 V	NaN	авиационный алюминий	NaN	Coreless motor 8V / 6500 об/мин	NaN	6 месяцев	NaN	tatu-shop
992	Беспроводная тату машинка Yilong F6 Stroke 3,5mm Grey	13940	200 г	до 8 часов	2 часа	NaN	NaN	4-12 V	NaN	Авиационный алюминий с защитным покрытием	NaN	Бесщеточный двигатель 12V-10000 об/мин	NaN	NaN	NaN	tatu-shop
993	Беспроводная роторная машинка AVA SOULNOVA E3 PERMANENT MAKEUP PEN Pink	9390	105 г	3-7 ч	2 ч	0 - 3,5 мм	NaN	4,5 - 11V	SOULNOVA E3 PERMANENT MAKEUP PEN	авиационный алюминий	NaN	NaN	AVA TATTOO MACHINE	6 месяцев	NaN	tatu-shop
994	Машинка для перманентного макияжа - GLOVCON® Pen Pills THICK	37390	140 г	NaN	NaN	NaN	NaN	NaN	GLOVCON Pen Pills THICK	NaN	NaN	NaN	NaN	1 год	NaN	tatu-shop
995	Беспроводная тату машинка AVA GT Pen GTR Adjustable Stroke 2.5-5.0mm Gold	21990	1435 гр	NaN	2 часа	NaN	NaN	4,5-12 V	AVA GT Pen GTR	авиационный алюминий	5W	AVA Servo Brushless Motor - 11000 об/мин	AVA TATTOO MACHINE	6 месяцев	NaN	tatu-shop
996	Роторная тату машинка Bronc STPS-021 pink	4750	85 г	NaN	NaN	NaN	NaN	NaN	Bronc STPS-021	NaN	NaN	Тайвань	Yilong Tattoo Supply	NaN	NaN	tatu-shop
997	Роторная тату машинка Mast P10 Ultra Pen 3.5mm Stroke	6980	100 г	NaN	NaN	NaN	NaN	5-10 V	NaN	авиационный алюминий	NaN	Японский мотор	DragonHawk	6 месяцев	NaN	tatu-shop
998	Беспроводная тату машинка MAST FLIP 2 Wireless 7 Strokes 2.4-4.2mm X 2 Power	13990	213г (с аккумулятором), 200г (с RCA)	до 6 часов	до 3 часов	NaN	NaN	NaN	NaN	авиационный алюминий	NaN	Двигатель Mcore 12В / 9500 об/мин	NaN	6 месяцев	NaN	tatu-shop
999	Беспроводная машинка для татуажа EZ LOLA AIR Pro PMU Wireless 6 Strokes X 2 Power Pink	14990	111 г	4 - 6 ч	2 ч	0 - 3,5 мм	NaN	3 - 10V	EZ LOLA AIR Pro	авиационный алюминий	NaN	NaN	EZ Tattoo	6 месяцев	NaN	tatu-shop
1000	Беспроводная тату машинка Arena A-power Wireless	16900	181 г	до 8 часов	NaN	0 - 4,5 мм	NaN	4-12V	Arena A-power Wireless	Авиационный алюминий	NaN	Япония 8V-11000об/мин	NaN	6 месяцев	NaN	tatu-shop
1001	Роторная тату машинка Skinductor Vertigo II GO!	15000	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	tatu-shop
1002	Роторная тату машинка Pen Cobra Mini Black	2750	110 г	NaN	NaN	NaN	NaN	NaN	Cobra Mini	NaN	NaN	Тайвань	Cobra Tattoo	NaN	NaN	tatu-shop
1003	Роторная машинка AVA SOULNOVA MAKEUP PEN Red	5930	82 г	NaN	NaN	NaN	NaN	4 - 10 V 11000 об/мин	NaN	авиационный алюминий	NaN	Япония	AVA TATTOO MACHINE	6 месяцев	NaN	tatu-shop
1004	Беспроводная тату машинка AVA DUKE V3 Wireless Pen Red	7380	250 г	4-8 часов	2 часа	NaN	NaN	4,5-12 V	NaN	авиационный алюминий	NaN	Carbon Brush Motor (3	AVA TATTOO MACHINE	6 месяцев	NaN	tatu-shop
1005	Беспроводная машинка для татуажа - Mast P20 Permanent With 2.5MM Stroke Blue	9980	122 г	4-6 часов	NaN	0-3,5 мм	NaN	4-10V	Mast P20	Авиационный алюминий	NaN	Mast Special Edition Coreless Motor 10V/10000 об	NaN	6 месяцев	NaN	tatu-shop
1006	Роторная тату машинка Mast Tour Mini Green	6240	82 г	NaN	NaN	NaN	NaN	5 - 8 В	NaN	авиационный алюминий	3 Ватт	Япония 8V / 9000 об/мин	DragonHawk	6 месяцев	NaN	tatu-shop
1007	Беспроводная тату машинка Ambition Zetton Silver	16490	213 гр	до 8 часов	3 ч	NaN	NaN	4,5-12V	Ambition Zetton	авиационный алюминий	NaN	Brushless Motor 8V - 10000 об/мин	Ambition Tattoo	6 месяцев	NaN	tatu-shop
1008	Роторная тату машинка MAST-NANO 800 mini red	7740	82 г	NaN	NaN	до 4,5 мм (регулировка вылета осуществляется выкручиванием держателя)	NaN	5 - 8 В	MAST-NANO 800 mini	авиационный алюминий	NaN	Япония 8V	DragonHawk	6 месяцев	NaN	tatu-shop
1009	Беспроводная тату машинка BRONC V80 Strokes 2.0 - 4.2mm Silver	7380	400 гр	до 8 часов	3 часа	от 0 до 4,5 мм (регулировка вылета осуществляется выкручиванием держателя)	NaN	4-12 V	BRONC V80	Авиационный алюминий с защитным покрытием	NaN	Coreless Motor 12V / 10000 об/мин	NaN	6 месяцев	NaN	tatu-shop
1010	Машинка для перманентного макияжа и мини тату WTE Universal Princess V4 Pro & Эксцентрики 2.6 и 3.0мм	34700	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	tatu-shop
1011	Беспроводная машинка для татуажа Mast P40 PMU Stroke 2.5mm Silver	9950	120 г	5 часов	NaN	0-3,5 мм	NaN	4-10V	Mast P40	Авиационный алюминий	NaN	Mast Special Edition Coreless Motor 10V/10000 об	NaN	6 месяцев	NaN	tatu-shop
1012	Беспроводная роторная тату машинка - BRONC Short Wireless Tattoo Pen Red	9990	151 г	от 4 до 7 часов	NaN	от 0 до 4,5 мм	NaN	4-11 V	BRONC SHORT	Алюминий	NaN	Швейцарский двигатель 11000 об/мин	NaN	6 месяцев	NaN	tatu-shop
1013	Беспроводная машинка для татуажа EZ LOLA AIR Wireless Battery Silver	10570	85,4 г	2-3 ч	1,5 ч	0 - 3,5 мм	NaN	5 - 10V	EZ LOLA AIR	авиационный алюминий	NaN	NaN	EZ Tattoo	6 месяцев	NaN	tatu-shop
1014	Беспроводная тату машинка EZ P3 Pro 6 Strokes Matte Black	12990	247 г	до 5 часов	2 часа	NaN	NaN	4-12 V	NaN	авиационный алюминий с защитным покрытием	NaN	EZ Customized External Rotor Brushless Motor - 12V/10000 об/мин	NaN	6 месяцев	NaN	tatu-shop
1015	Беспроводная тату машинка - MAST Amy With 4MM Stroke Red	13990	115 г	до 3 часов	NaN	0-4 мм	NaN	4-12V	MAST Amy	Алюминий	NaN	Mast Special Edition Coreless Motor 9V/10400 об	NaN	6 месяцев	NaN	tatu-shop
1017	Беспроводная тату машинка MT Mustang Evolution Pen 3 Metal	44990	NaN	до 10 часов	NaN	NaN	NaN	5-13 V	MT Mustang Evolution Pen 3	Авиационный алюминий с защитным покрытием	NaN	Бесколлекторный двигатель	Mustang Tattoo (Россия)	12 месяцев	NaN	tatu-shop
1018	Беспроводная тату машинка Cobra Morandi 3,5 Stroke Orange	9990	175 гр	до 7 часов	NaN	NaN	1800 мАч	4,7-13V	Cobra Morandi	Авиационный алюминий	NaN	NaN	Cobra Tattoo	NaN	NaN	tatu-shop
1019	Универсальная роторная тату машинка Skinductor Vertigo 2 Long Stroke	15000	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	tatu-shop
1020	Беспроводная тату машинка MAST Archer 2 Max Bluetooth Version Grey	9950	690 гр	до 8 часов	NaN	от 0 до 4,5 мм	2000 mA/ч	4-12V	MAST Archer 2 Max Bluetooth Version	Авиационный алюминий	NaN	Brushless Motor M-core - Бесщеточный двигатель 12V/10000 об/мин	MAST (DragonHawk)	6 месяцев	NaN	tatu-shop
1021	Беспроводная тату машинка MAST Tour Y22 Wireless Gradient Purple	10990	138 г	до 4 часов	NaN	0-4 мм	NaN	5-12V	MAST Tour Y22 Wireless	Алюминий	NaN	Япония - 8V/10000 об	NaN	6 месяцев	NaN	tatu-shop
1022	Беспроводная тату машинка EZ P3 Pro Lumina 6 Strokes Red	13330	420 гр	до 5 часов	2 часа	NaN	1600 mA/ч	4-12 V	EZ P3 Pro Lumina	авиационный алюминий с защитным покрытием	NaN	EZ Customized External Rotor Brushless Motor 12V-10000 об/мин	NaN	6 месяцев	NaN	tatu-shop
1023	Машинка для татуажа WTE Universal Princess 2024 Black & Эксцентрики 2.6 и 3.0мм	34700	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	tatu-shop
1024	Беспроводная тату машинка EZ Filter Tora Gold	4490	196 гр	до 5 часов	2 часа	от 0 до 4,5 мм	1600 mA/ч	5-12V	EZ Filter Tora	Авиационный алюминий с защитным покрытием	NaN	Двигатель без сердечника EZ 12V-10000 об/мин	EZ TATTOO	6 месяцев	NaN	tatu-shop
1025	Беспроводная тату машинка EZ P3 Pro 6 Strokes 2 Power Gloss Red	15990	247 г	до 5 часов	2 часа	NaN	NaN	4-12 V	NaN	авиационный алюминий с защитным покрытием	NaN	EZ Customized External Rotor Brushless Motor - 12V/10000 об/мин	NaN	6 месяцев	NaN	tatu-shop
1026	Беспроводная роторная тату машинка EZ Defender X Silver Stock 3.5 mm	11970	174г	до 5 часов	2 часа	0 - 4,5 мм	NaN	5 - 12V	EZ Defender X	авиационный алюминий	NaN	NaN	EZ Tattoo	6 месяцев	NaN	tatu-shop
1027	Беспроводная тату машинка DragoArt D-T2 Wireless Tattoo Pen Silver	7490	NaN	4 - 6 часов	NaN	от 0 до 4	NaN	4-12V	DragoArt D-T2 Wireless Tattoo Pen	авиационный алюминий	NaN	Brushless Motor 12V-10000 об	DragoArt Tattoo	NaN	NaN	tatu-shop
1028	Беспроводная тату машинка EZ P3 Pro Lumina 6 Strokes X 2 Power Red	16380	480 гр	до 5 часов	2 часа	NaN	1600 mA/ч	4-12 V	EZ P3 Pro Lumina	авиационный алюминий с защитным покрытием	NaN	EZ Customized External Rotor Brushless Motor 12V-10000 об/мин	NaN	6 месяцев	NaN	tatu-shop
1029	Универсальная роторная тату машина Burlak Solo Pro Matte Black (+держатель 32 мм)	23000	104 г	NaN	NaN	NaN	NaN	NaN	Burlak Solo Pro black	NaN	NaN	(11 Вт) 10000 об	Burlak Rotary (Россия)	NaN	NaN	tatu-shop
1030	Беспроводная машинка для татуажа Mast Crown P35 Permanent Makeup Pen Blue	9500	93 г	до 3 часов	NaN	0-3,5 мм	NaN	4,5-12V	Mast P35	Авиационный алюминий	NaN	Mast Special Edition Coreless Motor 12V/12000 об	NaN	6 месяцев	NaN	tatu-shop
1031	Роторная тату машинка - Defenderr Onyx Pink	13500	76 г	NaN	NaN	NaN	NaN	NaN	NaN	авиационный алюминий с защитным покрытием	NaN	Faulhaber (Германия) - 10000 об	NaN	1 год	NaN	tatu-shop
1032	Универсальная роторная тату машина Burlak Solo Pro Black	23000	104 г	NaN	NaN	NaN	NaN	NaN	Burlak Solo Pro black	NaN	NaN	(11 Вт) 10000 об	Burlak Rotary (Россия)	NaN	NaN	tatu-shop
1033	Роторная машинка для татуажа - Princesse Wireless Vega PMU	9850	79 г	NaN	NaN	NaN	NaN	NaN	NaN	авиационный алюминий	NaN	Германский двигатель 5W	Princesse Wireless	NaN	NaN	tatu-shop
1034	Беспроводная тату машинка Mast P60 PMU Stroke 2.2mm-3.2mm X 2Power Pink	16490	121 г	около 3 часов	NaN	0-3,5 мм	900 mA/ч	4-10V	Mast P60	Авиационный алюминий	NaN	Mast Special Edition Mcore-P 11000 об/мин	NaN	6 месяцев	NaN	tatu-shop
1035	Роторная тату машинка DragoArt Warrior Black	2590	134 гр	NaN	NaN	NaN	NaN	5 - 12 V 12000 об/мин	DragoArt Warrior	авиационный алюминий	NaN	Тайвань (Premium Motor)	DragoArt Tattoo	NaN	NaN	tatu-shop
1037	Универсальная роторная тату машинка Skinductor Vertigo Long Stroke	15000	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	tatu-shop
1038	Беспроводная тату машинка AVA GT Pen GTR Adjustable Stroke 2.5-5.0mm Gray	21990	1435 гр	NaN	2 часа	NaN	NaN	4,5-12 V	AVA GT Pen GTR	авиационный алюминий	5W	AVA Servo Brushless Motor - 11000 об/мин	AVA TATTOO MACHINE	6 месяцев	NaN	tatu-shop
1039	Машинка для татуажа Burlak ELF PRO 2.5mm Strokes	26950	94 гр	NaN	NaN	до 4,5 мм (регулировка вылета осуществляется выкручиванием рукоятки)	NaN	NaN	Burlak ELF PRO 2	NaN	NaN	(9 Вт) 10000 об	Burlak Rotary (Россия)	NaN	NaN	tatu-shop
1040	Роторная тату машинка EZ Dagger V3 Pen Style	5280	125 г	NaN	NaN	(в зависимости от марки картриджей) до 4	NaN	3,5 - 6,5V	EZ Dagger V3	алюминиевый корпус	NaN	Coreless DC motor без сердечника	EZ Tattoo	6 месяцев	12V / 12000 об	tatu-shop
1041	Роторная тату машинка - Defenderr Diamond Stealth	21500	92 г	NaN	NaN	NaN	NaN	8V	NaN	авиационный алюминий	NaN	Faulhaber (Германия) - 10000 об	NaN	1 год	NaN	tatu-shop
1042	Беспроводная роторная тату машинка Vlad Blad Ultron 3 Stroke 3.7mm	93000	170 г	до 7 часов	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	Vlad Blad (Россия)	1 год	NaN	tatu-shop
1043	Универсальная роторная тату машина Burlak Solo 2 Matte Red	23000	117 г	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	(11 Вт) 10000 об	Burlak Rotary (Россия)	NaN	NaN	tatu-shop
4628	Vlad Blad ULTRON-C Black	43452	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	fenix-tattoo
1044	Роторная тату машинка Pen Hummingbird Bronc V8 purple	9990	155 гр	NaN	NaN	NaN	NaN	5-8 V	Bronc V8	авиационный алюминий	NaN	Swiss 6W (Швейцария) - 12000 об/мин	NaN	6 месяцев	NaN	tatu-shop
1045	Роторная тату машинка NB Needle Bee RTM-1003 Chromium	2380	135 гр	NaN	NaN	NaN	NaN	5-8 V	NaN	авиационный алюминий	NaN	Япония 10000 об/мин	NB Needle Bee Tattoo	NaN	NaN	tatu-shop
1046	Беспроводная тату машинка EZ P3 Pro Lumina 6 Strokes X 2 Power Champagne Gold	16380	480 гр	до 5 часов	2 часа	NaN	1600 mA/ч	4-12 V	EZ P3 Pro Lumina	авиационный алюминий с защитным покрытием	NaN	EZ Customized External Rotor Brushless Motor 12V-10000 об/мин	NaN	6 месяцев	NaN	tatu-shop
1047	Беспроводная тату машинка MAST Tour Y22 Pro Wireless Bluetooth Verison Black	11550	126 г	до 6 часов	NaN	0-3,5 мм	1300 mA/ч	2-12V	MAST Tour Y22 Pro	Авиационный алюминий	NaN	Mast Special Edition Mcore-P 10000 об/мин	NaN	6 месяцев	NaN	tatu-shop
1048	Беспроводная тату машинка DragoArt Tuner Strokes 2.5 - 4.5mm Red	10990	615г	7-10 часов	NaN	от 0 до 4	NaN	4-12V	DragoArt Tuner	авиационный алюминий с защитным покрытием	NaN	Brushless Motor 12V-12000 об	DragoArt Tattoo	NaN	NaN	tatu-shop
1049	Беспроводная тату машинка BRONC SHORT-X Wireless Pen Black	10580	166 г	до 7 часов	2 часа	от 0 до 4,5 мм (регулировка вылета осуществляется выкручиванием держателя)	NaN	4-12 V	BRONC SHORT-X	Авиационный алюминий с защитным покрытием	NaN	DC Swiss Motor - 11000 об/мин	NaN	6 месяцев	NaN	tatu-shop
1050	Беспроводная тату машинка Ambition Seher Adjustable Stroke Gold	16490	266 гр	до 8 часов	3 ч	NaN	NaN	4,5-12V	Ambition Seher	авиационный алюминий	NaN	Coreless Motor 10V - 10000 об/мин	Ambition Tattoo	6 месяцев	NaN	tatu-shop
1051	Роторная тату машинка Mast Tour Mini Pink	6240	82 г	NaN	NaN	NaN	NaN	5 - 8 В	NaN	авиационный алюминий	3 Ватт	Япония 8V / 9000 об/мин	DragonHawk	6 месяцев	NaN	tatu-shop
1052	Беспроводная машинка для тату и татуажа Cobra Magi P9 Multi-Mode Stroke 3.0mm X 2Power Rose Gold	9990	200 гр	до 4 часов	1 час	NaN	NaN	2	Cobra Magi P9 Multi-Mode	Авиационный алюминий	NaN	NaN	Cobra Tattoo	NaN	NaN	tatu-shop
1053	Беспроводная тату машинка BRONC X2 Adjustable Stroke 11 Options Silver	17950	550 гр	NaN	NaN	от 0 до 4,5 мм (регулировка вылета осуществляется выкручиванием держателя)	NaN	4-12 V	BRONC X2	Авиационный алюминий с защитным покрытием	NaN	Швейцарский двигатель 12V / 11000 об/мин	NaN	6 месяцев	NaN	tatu-shop
1054	Беспроводная тату машинка EZ P3 Pro 6 Strokes Gloss Red	12990	247 г	до 5 часов	2 часа	NaN	NaN	4-12 V	NaN	авиационный алюминий с защитным покрытием	NaN	EZ Customized External Rotor Brushless Motor - 12V/10000 об/мин	NaN	6 месяцев	NaN	tatu-shop
1055	Беспроводная тату машинка EZ INKIN CL2 MAX Wireless Tattoo Pen 3400mAh Red	7920	161 г	7 часов	NaN	от 0 до 4 мм	NaN	5-12V	INKIN CL2 MAX	авиационный алюминий	NaN	Brushless motor - Бесщеточный двигатель	INKIN - EZ Tattoo	6 месяцев	10000 об	tatu-shop
1056	Беспроводная тату машинка BRONC TOUGH Wireless Pen 11 Stroke Black	15790	267 г	до 10 часов	2,5 часа	от 0 до 4,5 мм (регулировка вылета осуществляется выкручиванием держателя)	NaN	4-12 V	BRONC TOUGH	Авиационный алюминий с защитным покрытием	NaN	DC Swiss Motor - 11000 об/мин	NaN	6 месяцев	NaN	tatu-shop
1057	Беспроводная тату машинка BRONC Bullet Wireless Pen Military Green	12760	229 г	NaN	NaN	от 0 до 4,5 мм	NaN	5-11 V	BRONC Bullet	Авиационный алюминий с защитным покрытием	NaN	Швейцарский двигатель мощностью 6W	NaN	6 месяцев	NaN	tatu-shop
1058	Беспроводная роторная тату машинка - BRONC Wireless Pen V6 black	12590	229 г	от 7 до 9 часов	NaN	от 0 до 4,5 мм	NaN	5-11 V	BRONC Wireless Pen V6	Алюминий	NaN	Швейцарский двигатель 6W	NaN	6 месяцев	NaN	tatu-shop
1059	Роторная машинка AVA SOULNOVA MAKEUP PEN Green	5930	82 г	NaN	NaN	NaN	NaN	4 - 10 V 11000 об/мин	NaN	авиационный алюминий	NaN	Япония	AVA TATTOO MACHINE	6 месяцев	NaN	tatu-shop
1060	Беспроводная тату машинка - MAST Archer Max Pen 4.2mm Stroke black	13750	189 г	до 8 часов	NaN	0-4,5 мм	NaN	5-12V	MAST Archer	Алюминий	NaN	Япония 10V-8750 об/мин	NaN	6 месяцев	NaN	tatu-shop
1061	Беспроводная тату машинка EZ Portex Generation P2S Silver	6240	420 гр	до 6 часов	NaN	NaN	1800 mA/ч	5-12V	EZ Portex Generation P2S	Авиационный алюминий	NaN	EZ Custom Swiss Motors (Швейцария)	EZ Tattoo	6 месяцев	10800 об	tatu-shop
1062	Беспроводная тату машинка - CNC X WE Plus Wireless Tattoo Pen	19480	188 гр	NaN	NaN	NaN	NaN	5-12V	NaN	Авиационный алюминий	NaN	Германский X-II	CNC Tattoo	6 месяцев	NaN	tatu-shop
1063	Роторная тату машинка MAST ATOM M5 ROTARY PEN red	6980	190 гр	NaN	NaN	от 0 до 4,5 мм (регулировка вылета осуществляется выкручиванием держателя)	NaN	5-12 V	MAST ATOM M5	авиационный алюминий	NaN	Япония 12В	NaN	6 месяцев	NaN	tatu-shop
1064	Роторная машинка для татуажа Mast Tour Air PMU 2.3mm Stroke Silver	5990	45 грамм	NaN	NaN	NaN	NaN	5-9V	Mast Tour Air PMU	Авиационный алюминий	NaN	Mcore Coreless Motor 12V /10000 об/мин	MAST	6 месяцев	NaN	tatu-shop
1065	Беспроводная тату машинка Big Wasp Meteorix PRO Adjustable Wireless Pen Green	12690	245 г	до 9 часов	NaN	NaN	NaN	5-11 V	Big Wasp Meteorix PRO Adjustable Wireless Pen	авиационный алюминий	NaN	DC-motor Swiss Motor - Швейцарский двигатель	NaN	6 месяцев	NaN	tatu-shop
1066	Беспроводная тату машинка - Defenderr VECTOR Stealth	28500	188 г	NaN	2 часа	NaN	1500 мАч	NaN	NaN	авиационный алюминий с защитным покрытием	NaN	Faulhaber (Германия) - 6800 об	NaN	1 год	NaN	tatu-shop
4631	Eikon Symbeos Rotary System - Deluxe System - Black	53466	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	Канада	NaN	NaN	fenix-tattoo
1067	Беспроводная тату машинка MAST Archer 2 Max With Color Screen Bluetooth Black	11450	460 гр	до 8 часов	NaN	от 0 до 4,5 мм	NaN	4-12V	MAST Archer 2 Max	Авиационный алюминий	NaN	Brushless Motor M-core - Бесщеточный двигатель 12V/10000 об/мин	MAST (DragonHawk)	6 месяцев	NaN	tatu-shop
1068	Роторная тату машинка Dragonhawk M8 Rotary Pen Red	3680	154 гр	NaN	NaN	NaN	NaN	6 - 10 V	NaN	NaN	NaN	Iron Core Motor	NaN	6 месяцев	NaN	tatu-shop
1069	Роторная тату машинка Hawk MS-3	2990	110 гр	NaN	NaN	NaN	NaN	5 - 10 V	NaN	NaN	NaN	Тайвань	Solong Tattoo	NaN	NaN	tatu-shop
1070	Роторная тату машинка Mast Tour 2 Tattoo Gun With Thin Black	4980	59 грамм	NaN	NaN	NaN	NaN	4-12V	Mast Tour 2 Tattoo Gun With Thin	Авиационный алюминий	NaN	Mcore Coreless Motor 12V/10000 об/мин	MAST (DragonHawk)	6 месяцев	NaN	tatu-shop
1071	Роторная тату машинка Pen Hawk GSH-500 pink	3990	158 гр	NaN	NaN	NaN	NaN	3-10 В	Pen Hawk GSH-500	NaN	NaN	Тайвань	Solong Tattoo	NaN	NaN	tatu-shop
1072	Роторная тату машинка EQUALISER PROTON RED MX	35150	130 гр	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	tatu-shop
1073	Беспроводная тату машинка Mast Archer Ultra Smart Stroke 4.5mm	42630	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	tatu-shop
1074	Беспроводная тату машинка MAST Fold 2 Pro 2.4-4.2mm Strokes X 2 Power Pink	16990	400 гр	до 7 часов	2 часа	NaN	NaN	4-12 V	MAST Fold 2 Pro	Авиационный алюминий с защитным покрытием	NaN	Coreless motor 8V-6500 об/мин	NaN	6 месяцев	NaN	tatu-shop
1075	Беспроводная тату машинка EZ Filter Tora Blue Gradient	4490	196 гр	до 5 часов	2 часа	от 0 до 4,5 мм	1600 mA/ч	5-12V	EZ Filter Tora	Авиационный алюминий с защитным покрытием	NaN	Двигатель без сердечника EZ 12V-10000 об/мин	EZ TATTOO	6 месяцев	NaN	tatu-shop
1076	Роторная машинка AVA SOULNOVA MAKEUP PEN Pink	5930	82 г	NaN	NaN	NaN	NaN	4 - 10 V 11000 об/мин	NaN	авиационный алюминий	NaN	Япония	AVA TATTOO MACHINE	6 месяцев	NaN	tatu-shop
1077	Беспроводная тату машинка EZ P2 DotFree Wireless Tattoo Pen Black	11890	227 г	до 5 часов	2 часа	NaN	NaN	5 — 12 V	EZ P2 DotFree	авиационный алюминий	NaN	NaN	EZ Tattoo	6 месяцев	NaN	tatu-shop
1078	Беспроводная тату машинка BRONC V80 Strokes 2.0 - 4.2mm X 2Power Silver	8990	480 гр	до 8 часов	3 часа	от 0 до 4,5 мм (регулировка вылета осуществляется выкручиванием держателя)	NaN	4-12 V	BRONC V80	Авиационный алюминий с защитным покрытием	NaN	Coreless Motor 12V / 10000 об/мин	NaN	6 месяцев	NaN	tatu-shop
1079	Беспроводная тату машинка MAST Mini Pro 3.6mm Stroke Gold	9590	210 гр	до 8 часов	1,5 часа	NaN	1600 mA/ч	4-12 V	MAST Mini Pro	Авиационный алюминий	NaN	Coreless motor 12V - 12000 об/мин	NaN	6 месяцев	NaN	tatu-shop
1080	Беспроводная тату машинка Mast A3 Wireless Pen	8990	166 г	до 7 часов	2 часа	NaN	NaN	4-12 V	Mast A3	авиационный алюминий с защитным покрытием	NaN	Brushless motor - бесщеточный двигатель 12V/10000 об/мин	NaN	6 месяцев	NaN	tatu-shop
1081	Беспроводная тату машинка Vlad Blad Ultron 3 MAX Stroke 4.2mm Space	109900	201 г	до 11 часов	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	Vlad Blad (Россия)	1 год	NaN	tatu-shop
1082	Беспроводная тату машинка EZ Popu Diva PMU 6 Stroke Shadow	18990	487 гр	5 -7 ч	2 ч	0 - 4,5 мм	1600 mA/ч	4 - 12V	EZ Popu Diva	авиационный алюминий с защитным покрытием	NaN	NaN	EZ Tattoo	6 месяцев	NaN	tatu-shop
1083	Беспроводная машинка Mast P60 PMU And Tattoo Adjustable 2.2mm-3.2mm Stroke Purple	11540	121 г	около 3 часов	NaN	0-3,5 мм	NaN	4-10V	Mast P60	Авиационный алюминий	NaN	Mast Special Edition Mcore-P 11000 об/мин	NaN	6 месяцев	NaN	tatu-shop
1084	Беспроводная тату машинка JACK & ALEXX Easy Pro Strokes 4.0мм	44500	570 гр	до 5 часов	NaN	NaN	NaN	NaN	JACK & ALEXX Easy Pro	Авиационный алюминий	NaN	NaN	NaN	1 год	NaN	tatu-shop
1085	Беспроводная тату машинка INOX PRIME RUNIC IMPERA	28990	179 г	до 8 часов	до 3 часов	от 0 до 4,5 мм (регулировка вылета осуществляется выкручиванием держателя)	NaN	NaN	INOX PRIME RUNIC IMPERA	авиационный алюминий с защитным покрытием	NaN	NaN	NaN	NaN	NaN	tatu-shop
1086	Беспроводная тату машинка Yilong F6 Stroke 4,0mm Red	13940	200 г	до 8 часов	2 часа	NaN	NaN	4-12 V	NaN	Авиационный алюминий с защитным покрытием	NaN	Бесщеточный двигатель 12V-10000 об/мин	NaN	NaN	NaN	tatu-shop
1087	Беспроводная тату машинка Yilong F9 Stroke 3,5mm Grey	10450	315 г	до 5 часов	2 часа	NaN	NaN	NaN	NaN	Авиационный алюминий с защитным покрытием	NaN	Бесщеточный двигатель 12V-10000 об/мин	NaN	NaN	NaN	tatu-shop
1088	Роторная машинка для татуажа EZ POPU TH015 Silver	4240	66 грамм	NaN	NaN	NaN	NaN	6-8V	EZ POPU TH015	Авиационный алюминий	NaN	Японский двигатель 6000-8000 об/мин	EZ Tattoo	6 месяцев	NaN	tatu-shop
1089	Беспроводная тату машинка - Pen MAST Archer Wireless Battery blue	13750	189 г	до 8 часов	NaN	0-4,5 мм	NaN	5-12V	MAST Archer	Алюминий	NaN	Япония 10V-8750 об/мин	NaN	6 месяцев	NaN	tatu-shop
1090	Роторная тату машинка - MAST ATOM red	3380	135 гр	NaN	NaN	NaN	NaN	5-13V	NaN	авиационный алюминий	NaN	Япония 12V - 10000/мин	DragonHawk	6 месяцев	NaN	tatu-shop
1091	Беспроводная тату машинка Yilong F6 Stroke 4,0mm Grey	13940	200 г	до 8 часов	2 часа	NaN	NaN	4-12 V	NaN	Авиационный алюминий с защитным покрытием	NaN	Бесщеточный двигатель 12V-10000 об/мин	NaN	NaN	NaN	tatu-shop
1092	Беспроводная тату машинка Dragon LCX-30 black	6990	200 г	до 8 часов	NaN	от 0 до 4	NaN	5-12V	Dragon LCX-30	авиационный алюминий	NaN	Япония	Solong Tattoo	NaN	10800 об	tatu-shop
3394	Microbeau (FK Irons) Bellar V2 Black	78554	NaN	NaN	NaN	2.7	NaN	NaN	NaN	NaN	NaN	Brush DC motor & drive	США	1 год	NaN	fenix-tattoo
1093	Беспроводная тату машинка EZ P3 Pro Turbo 2.0 X 2Power Black	17990	195 г	до 5 часов	2 часа	NaN	1600 mA/ч	4-12 V	NaN	Авиационный алюминий с защитным покрытием	NaN	Upgraded EZ Customized External Rotor Brushless Motor - 12V/11000 об/мин	NaN	6 месяцев	NaN	tatu-shop
1094	Беспроводная тату машинка - Pen Dragonhawk Armor Wireless Rotary red	13380	186 г	до 6 часов	NaN	от 0 до 4	NaN	5-12V	NaN	Алюминий	NaN	Японский мотор	NaN	6 месяцев	NaN	tatu-shop
1095	Роторная тату машинка Dragon Small-x3 red	1945	110 г	NaN	NaN	NaN	NaN	NaN	Dragon Small-x3	NaN	NaN	Тайвань	Yilong Tattoo Supply	NaN	NaN	tatu-shop
1096	Беспроводная тату машинка MAST Lancer Wireless Green	14990	190 г	до 6 часов	NaN	0-4,5 мм	NaN	5-12V	NaN	Алюминий	NaN	Японский мотор	NaN	6 месяцев	NaN	tatu-shop
1097	Беспроводная тату машинка EZ Caster S Wireless Red	3850	171 г	5 часов	NaN	от 0 до 4,5 мм	NaN	5-12V	EZ Caster S	авиационный алюминий	NaN	EZ Customized Motor	EZ Tattoo	6 месяцев	NaN	tatu-shop
1098	Беспроводная тату машинка EZ EvoTech Pro Wireless Battery Tattoo Pen Black	10630	NaN	до 7 часов	2,5 часа	NaN	NaN	5-12 V	EZ EvoTech Pro	авиационный алюминий с защитным покрытием	NaN	NaN	EZ Tattoo	6 месяцев	NaN	tatu-shop
1099	Роторная тату машинка SOLONG X100 black	4990	167 гр	NaN	NaN	NaN	NaN	8-12 V	SOLONG X100	авиационный алюминий	NaN	Япония 10V-11000 об/мин	NaN	NaN	NaN	tatu-shop
1100	Роторная тату машинка Bronc STPS-021 red	4750	85 г	NaN	NaN	NaN	NaN	NaN	Bronc STPS-021	NaN	NaN	Тайвань	Yilong Tattoo Supply	NaN	NaN	tatu-shop
1101	Роторная тату машинка Pen Hummingbird Bronc V8 blue	9990	155 гр	NaN	NaN	NaN	NaN	5-8 V	Bronc V8	авиационный алюминий	NaN	Swiss 6W (Швейцария) - 12000 об/мин	NaN	6 месяцев	NaN	tatu-shop
1102	Беспроводная тату машинка Skinner Innovation PRO 4,5 Stroke Lollipop - Limited Edition	30000	200 гр	до 10 часов	NaN	NaN	1800 мАч	5-13V	Skinner Innovation PRO	Алюминий	NaN	Бесколлекторный на 5	Skinner Tattoo	NaN	NaN	tatu-shop
1103	Беспроводная роторная тату машинка - Pen Dragon Flux HM-700 gold	6990	195 г	до 6 часов	NaN	от 0 до 4,5 мм	NaN	5-12 V	Dragon Flux HM-700	Алюминий	NaN	Япония 9V-12000 об/мин	Solong Tattoo	NaN	NaN	tatu-shop
1104	Роторная тату машинка Mast P30 SMP purple	7630	77 г	NaN	NaN	до 4,5 мм (регулировка вылета осуществляется выкручиванием держателя)	NaN	7-9В	NaN	авиационный алюминий	3 Ватт	Япония	DragonHawk	6 месяцев	NaN	tatu-shop
1105	Роторная тату машинка EQUALISER DROP PEN RED	35150	180 г	NaN	NaN	от 0 до 4,5 мм	NaN	NaN	EQUALISER Drop Pen	Алюминий	NaN	Equalizer 6W	NaN	NaN	NaN	tatu-shop
1106	Беспроводная тату машинка EZ P2 EPIC Stroke 4.5 Green	13990	250 г	до 1000 минут	5 часов	NaN	NaN	5 — 12 V	EZ P2 EPIC	авиационный алюминий	NaN	NaN	EZ Tattoo	6 месяцев	NaN	tatu-shop
1107	Беспроводная тату машинка Skinner Innovation PRO 2.0 Stroke 4,5mm Black Gloss	25000	200 гр	до 10 часов	NaN	NaN	2000 мАч	5-13V	Skinner Innovation PRO 2	Авиационный алюминий	NaN	Бесколлекторный двигатель 5	Skinner Tattoo	NaN	NaN	tatu-shop
1108	Беспроводная тату машинка MAST Archer PRO 5 Star Series Gold	14950	193 г	до 8 часов	NaN	NaN	NaN	5-12V	MAST Archer PRO 5 Star Series	Алюминий	NaN	Direct Motor 12V-10500 об/мин	NaN	6 месяцев	NaN	tatu-shop
1109	Беспроводная роторная тату машинка Mast Racer Wireless Pen 4.0mm Strokes x 2 Power Red	19750	149 г	до 6 часов	2 часа	NaN	NaN	5-12 В	NaN	Авиационный алюминий	NaN	Бесщеточный двигатель	DragonHawk	6 месяцев	NaN	tatu-shop
1110	Беспроводная тату машинка - DragonHawk Pen AION	10620	180 г	6 часов	NaN	0 - 4,5 мм	NaN	5-12V	DragonHawk Pen AION	Алюминий	NaN	Япония 12V-9900 об/мин	NaN	6 месяцев	NaN	tatu-shop
1111	Беспроводная тату машинка EZ P3 Pro 6 Strokes 2 Power Gloss Golden	15990	247 г	до 5 часов	2 часа	NaN	NaN	4-12 V	NaN	авиационный алюминий с защитным покрытием	NaN	EZ Customized External Rotor Brushless Motor - 12V/10000 об/мин	NaN	6 месяцев	NaN	tatu-shop
1112	Беспроводная роторная машинка AVA SOULNOVA E2 PERMANENT MAKEUP PEN Black	9340	105 г	3-7 ч	2 ч	0 - 3,5 мм	NaN	4,5 - 11V	SOULNOVA E2 PERMANENT MAKEUP PEN	авиационный алюминий	NaN	NaN	AVA TATTOO MACHINE	6 месяцев	NaN	tatu-shop
1113	Беспроводная тату машинка MAST Mini Pro 3.6mm Stroke Black	9590	210 гр	до 8 часов	1,5 часа	NaN	1600 mA/ч	4-12 V	MAST Mini Pro	Авиационный алюминий	NaN	Coreless motor 12V - 12000 об/мин	NaN	6 месяцев	NaN	tatu-shop
1114	Беспроводная тату машинка MAST Archer 2 Max Bluetooth Version Black	9950	690 гр	до 8 часов	NaN	от 0 до 4,5 мм	2000 mA/ч	4-12V	MAST Archer 2 Max Bluetooth Version	Авиационный алюминий	NaN	Brushless Motor M-core - Бесщеточный двигатель 12V/10000 об/мин	MAST (DragonHawk)	6 месяцев	NaN	tatu-shop
1115	Беспроводная тату машинка EZ P5 Touchscreen Bluetooth footswitch Black	15990	178 г	до 5 часов	2,5 часа	NaN	NaN	5 — 12 V	EZ P5 Touchscreen Bluetooth	авиационный алюминий	NaN	NaN	EZ Tattoo	6 месяцев	9000 об/мин ± 10%	tatu-shop
1116	Роторная тату машинка Pen Fox V2 Wireless Rotary black	3990	50 г	NaN	NaN	NaN	NaN	5-10 V	Dragon W-L1 (DC)	авиационный алюминий	NaN	Японский двигатель	DragoArt	NaN	NaN	tatu-shop
1117	Беспроводная тату машинка MAST Fold 2 Pro 2.4-4.2mm Strokes X 2 Power Black	16990	400 гр	до 7 часов	2 часа	NaN	NaN	4-12 V	MAST Fold 2 Pro	Авиационный алюминий с защитным покрытием	NaN	Coreless motor 8V-6500 об/мин	NaN	6 месяцев	NaN	tatu-shop
1118	Машинка для татуажа WTE Universal Princess 2024 Black & RCA корд WTE Premium	36750	90 гр	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	WTE (Россия)	NaN	NaN	tatu-shop
1119	Роторная тату машинка - Poseidon v2 mini pen red	5990	90 г	NaN	NaN	NaN	NaN	5 - 12V	Poseidon v2 mini pen	авиационный алюминий	NaN	Швейцарский мотор 12W	Solong Tattoo	NaN	NaN	tatu-shop
1120	Беспроводная тату машинка EZ P3 Adjustable 6 Stroke red	11480	228 г	3-5 часов	NaN	NaN	NaN	5-12 V	NaN	авиационный алюминий	NaN	EZ Custom made Swiss / 10000 об/мин	NaN	6 месяцев	NaN	tatu-shop
1121	Беспроводная тату машинка JC JIECIRON BLADE 4,0 Stroke Black	8990	175 гр	до 7 часов	NaN	NaN	1800 мАч	5-12V	JC JIECIRON BLADE	Авиационный алюминий	NaN	NaN	JC JIECIRON	NaN	NaN	tatu-shop
1122	Роторная тату машинка DragoArt Atomic II Red	2760	147 гр	NaN	NaN	NaN	NaN	5 - 12 V 10000 об/мин	DragoArt Atomic II	авиационный алюминий	NaN	Тайвань (Premium Motor)	DragoArt Tattoo	NaN	NaN	tatu-shop
1123	Роторная тату машинка DragoArt Cavalier Red	2760	140 гр	NaN	NaN	NaN	NaN	5 - 12 V 10000 об/мин	DragoArt Cavalier	авиационный алюминий	NaN	Тайвань (Premium Motor)	DragoArt Tattoo	NaN	NaN	tatu-shop
1124	Беспроводная тату машинка Yilong F3 Adjustable 6 Stroke Red	16450	230 г	до 8 часов	2 часа	NaN	NaN	4-12 V	NaN	Авиационный алюминий с защитным покрытием	NaN	Бесщеточный двигатель 12V-10000 об/мин	NaN	NaN	NaN	tatu-shop
1125	Беспроводная тату машинка Yilong X5 Wireless Pen x 2 Power Black	5990	207г	до 6 часов	NaN	от 0 до 4	NaN	5-12V	Yilong X5	авиационный алюминий	NaN	Customized Premium Coreless Motor (Powerful Motor)	Yilong Tattoo	NaN	5V-5625, 6V-6750, 7V-7875, 8V-9000, 9V-10125, 10V-11250, 11V-12375, 12V-13500 об	tatu-shop
1126	Беспроводная тату машинка Mast Hertz Stroke 3.5mm Black	10450	330 гр	до 6 часов	2 часа	NaN	1800 mA/ч	NaN	Mast Hertz	Авиационный алюминий	NaN	Бесщеточный двигатель с системой прямого привода Direct Drive	NaN	6 месяцев	NaN	tatu-shop
1127	Беспроводная тату машинка Dragonhawk X8 Tunable Frequency 4mm Stroke Blue	11800	144г	до 3 часов	2 часа	NaN	NaN	NaN	NaN	авиационный алюминий	NaN	Brushless motor - бесщеточный двигатель	NaN	6 месяцев	NaN	tatu-shop
1128	Беспроводная тату машинка EZ Portex Generation P2S Pro Black	7950	197 г	до 5 часов	2 часа	NaN	NaN	4-12 V	NaN	авиационный алюминий с защитным покрытием	NaN	EZ Customized Swiss - 12V/10800 об/мин	NaN	6 месяцев	NaN	tatu-shop
1129	Беспроводная тату машинка BRONC X1 Wireless Pen 11 Stroke Red	15720	NaN	NaN	NaN	от 0 до 4,5 мм (регулировка вылета осуществляется выкручиванием держателя)	NaN	4-12 V	BRONC X1 Wireless Pen	Авиационный алюминий с защитным покрытием	NaN	Швейцарский двигатель 12V / 11000 об/мин	NaN	6 месяцев	NaN	tatu-shop
1130	Беспроводная тату машинка BRONC TOUGH Wireless Pen 11 Stroke Silver	15790	267 г	до 10 часов	2,5 часа	от 0 до 4,5 мм (регулировка вылета осуществляется выкручиванием держателя)	NaN	4-12 V	BRONC TOUGH	Авиационный алюминий с защитным покрытием	NaN	DC Swiss Motor - 11000 об/мин	NaN	6 месяцев	NaN	tatu-shop
1131	Беспроводная тату машинка MAST Lancer Wireless Blue	14990	190 г	до 6 часов	NaN	0-4,5 мм	NaN	5-12V	NaN	Алюминий	NaN	Японский мотор	NaN	6 месяцев	NaN	tatu-shop
1132	Беспроводная тату машинка EZ Portex Generation P2S X 2 Power Black	8990	450 гр	до 6 часов	NaN	NaN	1800 mA/ч	5-12V	EZ Portex Generation P2S	Авиационный алюминий	NaN	EZ Custom Swiss Motors (Швейцария)	EZ Tattoo	6 месяцев	10800 об	tatu-shop
1133	Беспроводная тату машинка Ambition Soldier MAX Silver	15990	201г	до 10 часов	NaN	NaN	NaN	4-12V	Ambition Soldier Max	Авиационный алюминий	NaN	Custom Coreless Motor 12V-13000 об/мин	Ambition Tattoo	6 месяцев	NaN	tatu-shop
1134	Роторная тату машинка Pen Cobra-sting BV	2790	127 гр	NaN	NaN	от 0 до 4	NaN	7-10 V	NaN	авиационный алюминий	NaN	Тайвань	Cobra Tattoo	NaN	NaN	tatu-shop
1135	Роторная тату машинка - Dragonhawk Fold Batpen 7 Strokes Length red	12200	201 г	NaN	NaN	NaN	NaN	NaN	NaN	авиационный алюминий	NaN	8V / 6500 об/мин	NaN	6 месяцев	NaN	tatu-shop
1136	Роторная машинка для татуажа EZ POPU TH015 Black	4240	66 граамм	NaN	NaN	NaN	NaN	6-8V	EZ POPU TH015	Авиационный алюминий	NaN	Японский двигатель 6000-8000 об/мин	EZ Tattoo	6 месяцев	NaN	tatu-shop
1137	Беспроводная тату машинка EZ Filter Freedom Green	5180	200 г	5 часов	NaN	от 0 до 4,5 мм	NaN	5-12V	EZ Filter Freedom	авиационный алюминий	NaN	Coreless Motor	EZ Tattoo	6 месяцев	NaN	tatu-shop
1138	Беспроводная тату машинка NB Needle Bee Wireless Tattoo Pen WR-35B	4840	180 г	до 5 часов	NaN	0-4 мм	NaN	3-12V	NB Needle Bee WR-35B	Авиационный алюминий	NaN	Японский двигатель Mabuchi Motor 12V/12000 об	NaN	NaN	NaN	tatu-shop
1139	Беспроводная тату машинка Dragon PGX-30 blue	6990	200 г	до 8 часов	NaN	от 0 до 4	NaN	5-12V	Dragon PGX-30	авиационный алюминий	NaN	Япония	Solong Tattoo	NaN	10800 об	tatu-shop
1140	Беспроводная тату машинка DragonHawk L3 Wireless Tattoo Gun 7 Strokes X 2 Power Black	16550	222 гр	до 7 часов	2 часа	NaN	NaN	4-12 V	Dragonhawk L3	Авиационный алюминий с защитным покрытием	NaN	Powerful Motor MCORE 8V / 6500 об/мин	NaN	6 месяцев	NaN	tatu-shop
1141	Беспроводная роторная тату машинка - BRONC Wireless Pen V6 silver	12590	229 г	от 7 до 9 часов	NaN	от 0 до 4,5 мм	NaN	5-11 V	BRONC Wireless Pen V6	Алюминий	NaN	Швейцарский двигатель 6W	NaN	6 месяцев	NaN	tatu-shop
1142	Беспроводная тату машинка JACK & ALEXX Easy Pro Strokes 3.5мм	44500	570 гр	до 5 часов	NaN	NaN	NaN	NaN	JACK & ALEXX Easy Pro	Авиационный алюминий	NaN	NaN	NaN	1 год	NaN	tatu-shop
1143	Беспроводная машинка для татуажа - Defenderr FENIX S PRO Silver	28950	146,4 г	NaN	1,5 часа	NaN	2000 мАч	NaN	NaN	авиационный алюминий с защитным покрытием	NaN	2W - 12000 об	NaN	1 год	NaN	tatu-shop
1144	Роторная тату машинка Pen Hawk GSX-900 green	3990	155 гр	NaN	NaN	NaN	NaN	4-10 V	Pen Hawk GSX-900	NaN	NaN	Тайвань	Solong Tattoo	NaN	NaN	tatu-shop
3395	EQUALISER Pusher Black	25402	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	fenix-tattoo
1145	Беспроводная тату машинка WOS E70 Pro Adjustable Stroke 3.0-5.0mm Pink	16490	775 гр	NaN	2-3 часа	NaN	1900 мАч	4,5-12 V	WOS E70 Pro	авиационный алюминий	7	WOS Brushless Motor - 10500 об/мин	WOS Tattoo	6 месяцев	NaN	tatu-shop
1146	Беспроводная машинка для татуажа - Defenderr FENIX S Red	26950	135 г	NaN	2,5 часа	NaN	1600 мАч	NaN	NaN	авиационный алюминий с защитным покрытием	NaN	2W - 12000 об	NaN	1 год	NaN	tatu-shop
1147	Беспроводная тату машинка DragoArt Tuner Strokes 2.5 - 4.5mm Silver	10990	615г	7-10 часов	NaN	от 0 до 4	NaN	4-12V	DragoArt Tuner	авиационный алюминий с защитным покрытием	NaN	Brushless Motor 12V-12000 об	DragoArt Tattoo	NaN	NaN	tatu-shop
1148	Универсальная роторная тату машинка Vlad Blad Ultron 2 Classic Light Grip 25мм	21770	120 г	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	10,5 Вт	Vlad Blad (Россия)	1 год	NaN	tatu-shop
1149	Беспроводная тату машинка MAST Tour Y22 Wireless Green	10990	138 г	до 4 часов	NaN	0-4 мм	NaN	5-12V	MAST Tour Y22 Wireless	Алюминий	NaN	Япония - 8V/10000 об	NaN	6 месяцев	NaN	tatu-shop
1150	Беспроводная машинка для татуажа - Mast P20 Permanent With 2.5MM Stroke X 2 Power Purple	11870	122 г	4-6 часов	NaN	0-3,5 мм	NaN	4-10V	Mast P20	Авиационный алюминий	NaN	Mast Special Edition Coreless Motor 10V/10000 об	NaN	6 месяцев	NaN	tatu-shop
1151	Беспроводная тату машинка Cobra Morandi 4,2 Stroke Yellow	9990	175 гр	до 7 часов	NaN	NaN	1800 мАч	4,7-13V	Cobra Morandi	Авиационный алюминий	NaN	NaN	Cobra Tattoo	NaN	NaN	tatu-shop
1152	Беспроводная тату машинка BRONC Bullet Wireless Pen Black	12760	229 г	NaN	NaN	от 0 до 4,5 мм	NaN	5-11 V	BRONC Bullet	Авиационный алюминий с защитным покрытием	NaN	Швейцарский двигатель мощностью 6W	NaN	6 месяцев	NaN	tatu-shop
1153	Машинка для перманентного макияжа и мини тату WTE Universal Princess Pen 2024 Red	29950	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	tatu-shop
1154	Роторная тату машинка Mast Tour Mini Gray	6240	82 г	NaN	NaN	NaN	NaN	5 - 8 В	NaN	авиационный алюминий	3 Ватт	Япония 8V / 9000 об/мин	DragonHawk	6 месяцев	NaN	tatu-shop
1155	Роторная тату машинка AVA Pen GTXS Black	8370	173 г	NaN	NaN	NaN	NaN	5 - 12 V 11000 об/мин	NaN	авиационный алюминий	NaN	Япония	AVA TATTOO MACHINE	6 месяцев	NaN	tatu-shop
1156	Беспроводная тату машинка Cobra Morandi 3,5 Stroke Green	9990	175 гр	до 7 часов	NaN	NaN	1800 мАч	4,7-13V	Cobra Morandi	Авиационный алюминий	NaN	NaN	Cobra Tattoo	NaN	NaN	tatu-shop
1157	Беспроводная тату машинка Yilong F6 Stroke 4,0mm Green	13940	200 г	до 8 часов	2 часа	NaN	NaN	4-12 V	NaN	Авиационный алюминий с защитным покрытием	NaN	Бесщеточный двигатель 12V-10000 об/мин	NaN	NaN	NaN	tatu-shop
1158	Беспроводная тату машинка EZ Popu Diva PMU 6 Stroke Lavender	18990	487 гр	5 -7 ч	2 ч	0 - 4,5 мм	1600 mA/ч	4 - 12V	EZ Popu Diva	авиационный алюминий с защитным покрытием	NaN	NaN	EZ Tattoo	6 месяцев	NaN	tatu-shop
1159	Беспроводная тату машинка MT Mustang Evolution Pen 3 Dusk	44990	NaN	до 10 часов	NaN	NaN	NaN	5-13 V	MT Mustang Evolution Pen 3	Авиационный алюминий с защитным покрытием	NaN	Бесколлекторный двигатель	Mustang Tattoo (Россия)	12 месяцев	NaN	tatu-shop
1160	Роторная тату машинка Rocket Mini Pen black	3570	115 г	NaN	NaN	до 4,5 мм (регулировка вылета осуществляется выкручиванием держателя)	NaN	NaN	Rocket Mini Pen	NaN	NaN	8V-10000 об	Rocket Tattoo	NaN	NaN	tatu-shop
1161	Беспроводная тату машинка EZ Portex Generation P2S Pro Silver	7950	197 г	до 5 часов	2 часа	NaN	NaN	4-12 V	NaN	авиационный алюминий с защитным покрытием	NaN	EZ Customized Swiss - 12V/10800 об/мин	NaN	6 месяцев	NaN	tatu-shop
1162	Роторная тату машинка Pen Hawk GSH-500 red	3990	158 гр	NaN	NaN	NaN	NaN	3-10 В	Pen Hawk GSH-500	NaN	NaN	Тайвань	Solong Tattoo	NaN	NaN	tatu-shop
1163	Беспроводная тату машинка Yilong Max S-70 Wireless Pen Gray	5990	198г	до 6 часов	NaN	от 0 до 4	NaN	5-12V	Yilong Max S-70	авиационный алюминий	NaN	Vertical disk bearing motor	Yilong Tattoo	NaN	11000 об	tatu-shop
1164	Беспроводная тату машинка DragonHawk Mast Styler with 3.5mm Stroke	8520	188 г	до 6 часов	2 часа	NaN	NaN	4-12 V	DragonHawk Mast Styler	авиационный алюминий с защитным покрытием	NaN	Бессердечниковый двигатель 12V/12000 об/мин	NaN	6 месяцев	NaN	tatu-shop
1165	Беспроводная тату машинка - Pen MAST Archer Wireless Battery pink	13750	189 г	до 8 часов	NaN	0-4,5 мм	NaN	5-12V	MAST Archer	Алюминий	NaN	Япония 10V-8750 об/мин	NaN	6 месяцев	NaN	tatu-shop
1166	Беспроводная машинка для перманентного макияжа INKin Polar PMU Pink	8990	73г	NaN	1,5 ч	0 - 3,5 мм	NaN	5 - 10V	INKin Polar Pmu	авиационный алюминий	NaN	NaN	INKin - EZ Tattoo	6 месяцев	NaN	tatu-shop
1167	Роторная тату машинка EQUALISER PROTON BLACK MX	35150	130 гр	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	tatu-shop
1168	Беспроводная тату машинка Dragonhawk L3 Wireless Tattoo Gun 7 Strokes Red	13700	222 г	до 7 часов	2 часа	NaN	NaN	4-12 V	Dragonhawk L3	Авиационный алюминий с защитным покрытием	NaN	Powerful Motor MCORE 8V / 6500 об/мин	NaN	6 месяцев	NaN	tatu-shop
1169	Беспроводная тату машинка EZ Filter X30 Strokes 2.0-4.0mm X 2Power Black	9620	242 гр	до 7 часов	2 часа	от 0 до 4,5 мм	1600 mA/ч	4-12V	EZ Filter X30	Авиационный алюминий	NaN	Двигатель без сердечника EZ 12V-9500 об/мин	EZ TATTOO	6 месяцев	NaN	tatu-shop
1170	Беспроводная тату машинка BRONC MAGIC Wireless Pen Tattoo & PMU Pink Purple	13580	137 г	до 5 часов	NaN	от 0 до 4 мм	NaN	5	BRONC MAGIC wireless tattoo pen	Алюминий	NaN	Швейцарский двигатель 12000 об/мин	NaN	6 месяцев	NaN	tatu-shop
3396	Skinductor Vertigo S	14589	NaN	NaN	NaN	3.5	NaN	NaN	NaN	NaN	NaN	NaN	Россия	NaN	NaN	fenix-tattoo
1171	Машинка для перманентного макияжа и мини тату WTE Universal Princess V4 Pro & WTE Power Rca & эксцентрики 2.6 и 3.0мм	40980	52 г	до 5 часов	NaN	NaN	1300 мАч	NaN	WTE POWER RCA	анодированный алюминий	NaN	NaN	WTE Professional	NaN	NaN	tatu-shop
1173	Беспроводная машинка для тату и татуажа Cobra Magi P9 Multi-Mode Stroke 3.0mm X 2Power Blue	9990	200 гр	до 4 часов	1 час	NaN	NaN	2	Cobra Magi P9 Multi-Mode	Авиационный алюминий	NaN	NaN	Cobra Tattoo	NaN	NaN	tatu-shop
1174	Беспроводная тату машинка EZ P3 Pro 6 Strokes Matte Red	12990	247 г	до 5 часов	2 часа	NaN	NaN	4-12 V	NaN	авиационный алюминий с защитным покрытием	NaN	EZ Customized External Rotor Brushless Motor - 12V/10000 об/мин	NaN	6 месяцев	NaN	tatu-shop
1175	Роторная тату машинка Dragon Small-L3	2990	120 г	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	Тайвань	Solong Tattoo	NaN	NaN	tatu-shop
1176	Беспроводная машинка для татуажа EZ LOLA LIGHT PMU x 2Power Purple	11850	81 гр	3-5 часов	NaN	0-4,5 мм	800 mA/ч	4-12V	EZ LOLA LIGHT	Авиационный алюминий	NaN	Coreless Motor 12V/10000 об/мин	NaN	6 месяцев	NaN	tatu-shop
1177	Беспроводная роторная тату машинка Big Wasp Arrow RTM-114 Wireless Pen Red	8590	240 г	от 7 до 9 часов	NaN	от 0 до 4 мм	NaN	5-11 V	Big Wasp Arrow RTM-114 Wireless Pen	Авиационный алюминий	NaN	DC-motor Swiss Motor - Швейцарский двигатель	NaN	6 месяцев	NaN	tatu-shop
1178	Роторная тату машинка DragoArt Storm Gold	2990	114 г	NaN	NaN	NaN	NaN	6-8V	NaN	авиационный алюминий	NaN	Advanced Customization Motor - 10000 об/мин	DragoArt	NaN	NaN	tatu-shop
1179	Роторная тату машинка Fox V8 red	3890	135 гр	NaN	NaN	NaN	NaN	6-12 V	NaN	авиационный алюминий	NaN	Япония	Solong Tattoo	NaN	NaN	tatu-shop
1180	Роторная тату машинка SOLONG PROTON X-90 purple	4990	133 гр	NaN	NaN	NaN	NaN	NaN	SOLONG PROTON X-90	алюминий	NaN	Япония 5W	NaN	NaN	NaN	tatu-shop
1181	Роторная тату машинка EGO Switch Red	6930	130 гр	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	Япония 8V-9000 об/мин	NaN	6 месяцев	NaN	tatu-shop
1182	Беспроводная тату машинка Cobra Morandi 4,2 Stroke White	9990	175 гр	до 7 часов	NaN	NaN	1800 мАч	4,7-13V	Cobra Morandi	Авиационный алюминий	NaN	NaN	Cobra Tattoo	NaN	NaN	tatu-shop
1183	Беспроводная роторная машинка AVA SOULNOVA E2 PERMANENT MAKEUP PEN Red	9340	105 г	3-7 ч	2 ч	0 - 3,5 мм	NaN	4,5 - 11V	SOULNOVA E2 PERMANENT MAKEUP PEN	авиационный алюминий	NaN	NaN	AVA TATTOO MACHINE	6 месяцев	NaN	tatu-shop
1184	Беспроводная тату машинка Yilong X5 Wireless Pen x 2 Power Gold	5990	207г	до 6 часов	NaN	от 0 до 4	NaN	5-12V	Yilong X5	авиационный алюминий	NaN	Customized Premium Coreless Motor (Powerful Motor)	Yilong Tattoo	NaN	5V-5625, 6V-6750, 7V-7875, 8V-9000, 9V-10125, 10V-11250, 11V-12375, 12V-13500 об	tatu-shop
1185	Беспроводная тату машинка AVA GT EP9 WIRELESS PEN 3.5mm Gray	12340	NaN	до 6 часов	3-4 часа	NaN	NaN	NaN	AVA GT EP9	авиационный алюминий	5 Вт	AVA OEM Japanese Motor (бесщеточный двигатель постоянного тока)	AVA TATTOO MACHINE	6 месяцев	NaN	tatu-shop
1186	Беспроводная тату машинка EZ P3 Pro 6 Strokes Gloss Black	12990	247 г	до 5 часов	2 часа	NaN	NaN	4-12 V	NaN	авиационный алюминий с защитным покрытием	NaN	EZ Customized External Rotor Brushless Motor - 12V/10000 об/мин	NaN	6 месяцев	NaN	tatu-shop
1187	Беспроводная тату машинка MAST Fold 2 Pro 2.4-4.2mm Strokes Purple	14480	400 гр	до 7 часов	2 часа	NaN	NaN	4-12 V	MAST Fold 2 Pro	Авиационный алюминий с защитным покрытием	NaN	Coreless motor 8V-6500 об/мин	NaN	6 месяцев	NaN	tatu-shop
1188	Беспроводная тату машинка AVA GT Pen GTS Adjustable Stroke 2.0-4.5mm Red	19990	1400 гр	NaN	2 часа	NaN	NaN	4,5-12 V	AVA GT Pen GTS	авиационный алюминий	5W	AVA Motor Metal Brush DC motor - 10500 об/мин	AVA TATTOO MACHINE	6 месяцев	NaN	tatu-shop
1189	Беспроводная тату машинка AVA GT Pen GTS Adjustable Stroke 2.0-4.5mm Gold	19990	1400 гр	NaN	2 часа	NaN	NaN	4,5-12 V	AVA GT Pen GTS	авиационный алюминий	5W	AVA Motor Metal Brush DC motor - 10500 об/мин	AVA TATTOO MACHINE	6 месяцев	NaN	tatu-shop
1190	Роторная тату машинка SOLONG PROTON X-90 silver	4990	133 гр	NaN	NaN	NaN	NaN	NaN	SOLONG PROTON X-90	алюминий	NaN	Япония 5W	NaN	NaN	NaN	tatu-shop
1191	Беспроводная тату машинка DragoArt Hammer Red	9465	610г	4-6 часов	NaN	от 0 до 4	NaN	3-12V	DragoArt Hammer	авиационный алюминий	NaN	Brushless Motor 12V-10000 об	DragoArt Tattoo	NaN	NaN	tatu-shop
1192	Роторная тату машинка SOLONG PROTON X-90 gold	4990	133 гр	NaN	NaN	NaN	NaN	NaN	SOLONG PROTON X-90	алюминий	NaN	Япония 5W	NaN	NaN	NaN	tatu-shop
1193	Беспроводная тату машинка Cobra Morandi 4,2 Stroke Red	9990	175 гр	до 7 часов	NaN	NaN	1800 мАч	4,7-13V	Cobra Morandi	Авиационный алюминий	NaN	NaN	Cobra Tattoo	NaN	NaN	tatu-shop
1194	Роторная тату машинка Pen "Rocket V3" red	4980	155 г	NaN	NaN	NaN	NaN	NaN	NaN	Алюминий	NaN	Японский - 8 V-9000 об	Rocket Tattoo	NaN	NaN	tatu-shop
1195	Роторная тату машинка Pen Rocket II version-5, gray	3590	140 г	NaN	NaN	до 4,5 мм (регулировка вылета осуществляется выкручиванием держателя)	NaN	NaN	Rocket II version-5	NaN	NaN	МАБУЧИ 8V 9000rpm - 10V 11000rpm	Rocket Tattoo	NaN	NaN	tatu-shop
1196	Беспроводная роторная тату машинка Mast Racer Wireless Pen 4.0mm Strokes x 2 Power Blue	19750	149 г	до 6 часов	2 часа	NaN	NaN	5-12 В	NaN	Авиационный алюминий	NaN	Бесщеточный двигатель	DragonHawk	6 месяцев	NaN	tatu-shop
1197	Машинка для татуажа WTE Universal Princess 2024 Black & WTE Power Rca & эксцентрики 2.6 и 3.0мм	40980	52 г	до 5 часов	NaN	NaN	1300 мАч	NaN	WTE POWER RCA	анодированный алюминий	NaN	NaN	WTE Professional	NaN	NaN	tatu-shop
1198	Беспроводная тату машинка DragoArt Tuner Strokes 2.5 - 4.5mm Purple	10990	615г	7-10 часов	NaN	от 0 до 4	NaN	4-12V	DragoArt Tuner	авиационный алюминий с защитным покрытием	NaN	Brushless Motor 12V-12000 об	DragoArt Tattoo	NaN	NaN	tatu-shop
1199	Беспроводная машинка для перманентного макияжа EZ LOLA Air S PMU X 2 Power Rose	10225	105 гр	NaN	2 часа	0 - 3,5 мм	NaN	3 - 10V	EZ LOLA Air S PMU	авиационный алюминий	NaN	NaN	EZ Tattoo	6 месяцев	NaN	tatu-shop
1200	Беспроводная тату машинка NB Needle Bee Wireless Tattoo Pen WR-36 Custom	4840	180 г	до 5 часов	NaN	0-4 мм	NaN	3-12V	NB Needle Bee WR-36	Авиационный алюминий	NaN	Японский двигатель Mabuchi Motor 12V/12000 об	NaN	NaN	NaN	tatu-shop
1201	Беспроводная роторная тату машинка - Pen Dragon Flux HM-700 red	6990	195 г	до 6 часов	NaN	от 0 до 4,5 мм	NaN	5-12 V	Dragon Flux HM-700	Алюминий	NaN	Япония 9V-12000 об/мин	Solong Tattoo	NaN	NaN	tatu-shop
1202	Беспроводная тату машинка EZ P2 MT Multi-Touch Red and Black	14680	227 г	до 5 часов	2,5 часа	NaN	NaN	5 — 12 V	EZ P2 MT Multi-Touch	авиационный алюминий	NaN	NaN	EZ Tattoo	6 месяцев	10000 об/мин ± 10%	tatu-shop
1203	Беспроводная тату машинка EZ Caster Wireless Red	3850	171 г	5 часов	NaN	от 0 до 4,5 мм	NaN	5-12V	EZ Caster	авиационный алюминий	NaN	EZ Customized Motor	EZ Tattoo	6 месяцев	NaN	tatu-shop
1204	Роторная тату машинка Mast Sensor With 4MM Stroke Black	8960	133 г	NaN	NaN	NaN	NaN	6-10V	NaN	авиационный алюминий	NaN	Mcore Бесщеточный 12V 10000 об/мин	DragonHawk	6 месяцев	NaN	tatu-shop
1205	Беспроводная машинка для татуажа EZ LOLA AIR Pro PMU Wireless 6 Strokes  X 2 Power Purple	14990	111 г	4 - 6 ч	2 ч	0 - 3,5 мм	NaN	3 - 10V	EZ LOLA AIR Pro	авиационный алюминий	NaN	NaN	EZ Tattoo	NaN	NaN	tatu-shop
1206	Роторная тату машинка EQUALISER PROTON PEN - ENDURO BLACK EDITION	17150	120 гр	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	tatu-shop
1207	Беспроводная тату машинка MAST Tour Y22 Wireless Pink	10990	138 г	до 4 часов	NaN	0-4 мм	NaN	5-12V	MAST Tour Y22 Wireless	Алюминий	NaN	Япония - 8V/10000 об	NaN	6 месяцев	NaN	tatu-shop
1208	Роторная тату машинка BRONC V4 Tattoo & Makeup Silver	10360	79 гр	NaN	NaN	NaN	NaN	5-9V (татуаж	Bronc V4	авиационный алюминий	NaN	Швейцария 4,5 Вт	NaN	6 месяцев	NaN	tatu-shop
1209	Роторная тату машинка Pen Hummingbird Bronc V9 black	9990	150 гр	NaN	NaN	NaN	NaN	6-9 V	NaN	авиационный алюминий	NaN	Швейцария 8W, 12000 об/мин	NaN	6 месяцев	NaN	tatu-shop
1210	Беспроводная тату машинка Dragonhawk Fold Pro 7 Strokes Length X 2 Power Black	22540	199 г	до 5 часов	1,5 часа	NaN	NaN	5-12 V	NaN	авиационный алюминий	NaN	Coreless motor 8V / 6500 об/мин	NaN	6 месяцев	NaN	tatu-shop
1211	Беспроводная тату машинка -  Arenahawk Pen A-Power 4.0	9360	200 г	4-5 часов	NaN	0-4,5 мм	NaN	4-12V	NaN	Алюминий	NaN	Японский мотор	NaN	6 месяцев	NaN	tatu-shop
1212	Беспроводная роторная тату машинка BRONC Conductor RTM-111 Wireless Pen Green	10720	239 г	от 7 до 9 часов	NaN	от 0 до 4 мм	NaN	5-11 V	BRONC Conductor RTM-111 Wireless Pen	Авиационный алюминий	NaN	DC-motor Swiss Motor - Швейцарский двигатель	NaN	6 месяцев	NaN	tatu-shop
1213	Беспроводная тату машинка EZ INKIN HOVER FM Dotwork Wireless Tattoo Pen Red	10990	226 г	до 5 часов	2 часа	NaN	NaN	5 — 12 V	EZ INKIN HOVER FM Dotwork	Авиационный алюминий	NaN	NaN	EZ Tattoo	6 месяцев	NaN	tatu-shop
1214	Беспроводная тату машинка AVA UNI-X Stroke 3.6mm Grey	15380	660 гр	NaN	2 часа	NaN	NaN	4,5-12 V	AVA UNI-X	авиационный алюминий	5W	AVA Motor Brushless Motor - 10500 об/мин	AVA TATTOO MACHINE	6 месяцев	NaN	tatu-shop
1215	Роторная тату машинка - Poseidon v2 mini pen black	5990	90 г	NaN	NaN	NaN	NaN	5 - 12V	Poseidon v2 mini pen	авиационный алюминий	NaN	Швейцарский мотор 12W	Solong Tattoo	NaN	NaN	tatu-shop
1216	Беспроводная тату машинка Cobra Morandi 4,2 Stroke Orange	9990	175 гр	до 7 часов	NaN	NaN	1800 мАч	4,7-13V	Cobra Morandi	Авиационный алюминий	NaN	NaN	Cobra Tattoo	NaN	NaN	tatu-shop
1217	Роторная тату машинка Pen Rocket II version-5, blue	3590	140 г	NaN	NaN	до 4,5 мм (регулировка вылета осуществляется выкручиванием держателя)	NaN	NaN	Rocket II version-5	NaN	NaN	МАБУЧИ 8V 9000rpm - 10V 11000rpm	Rocket Tattoo	NaN	NaN	tatu-shop
1218	Беспроводная тату машинка Yilong F3 Adjustable 6 Stroke Silver	16450	230 г	до 8 часов	2 часа	NaN	NaN	4-12 V	NaN	Авиационный алюминий с защитным покрытием	NaN	Бесщеточный двигатель 12V-10000 об/мин	NaN	NaN	NaN	tatu-shop
1219	Роторная тату машинка - CNC Short Pen Q3 Pill orange	9980	123 г	NaN	NaN	NaN	NaN	8-12V	NaN	авиационный алюминий	NaN	Японский	CNC	6 месяцев	NaN	tatu-shop
1220	Беспроводная тату машинка BRONC SHORT-X Wireless Pen Blue	10580	166 г	до 7 часов	2 часа	от 0 до 4,5 мм (регулировка вылета осуществляется выкручиванием держателя)	NaN	4-12 V	BRONC SHORT-X	Авиационный алюминий с защитным покрытием	NaN	DC Swiss Motor - 11000 об/мин	NaN	6 месяцев	NaN	tatu-shop
1221	Беспроводная тату машинка MAST ARCHER S ULTRA MATTE GRAY	15960	169 г	4-8 часов	50 минут	от 0 до 4,5 мм	NaN	4-12V	MAST Archer S	Авиационный алюминий	NaN	Высокопроизводительный бесщеточный двигатель M-Core	MAST (DragonHawk)	6 месяцев	NaN	tatu-shop
1222	Беспроводная тату машинка AVA GT EP9 WIRELESS PEN 3.5mm Red	12340	NaN	до 6 часов	3-4 часа	NaN	NaN	NaN	AVA GT EP9	авиационный алюминий	5 Вт	AVA OEM Japanese Motor (бесщеточный двигатель постоянного тока)	AVA TATTOO MACHINE	6 месяцев	NaN	tatu-shop
1223	Беспроводная тату машинка EZ Popu Diva PMU 6 Stroke X 2 Power Shadow	21480	550 гр	5 -7 ч	2 ч	0 - 4,5 мм	1600 mA/ч	4 - 12V	EZ Popu Diva	авиационный алюминий с защитным покрытием	NaN	NaN	EZ Tattoo	6 месяцев	NaN	tatu-shop
1224	Роторная тату машинка - Defenderr Iron S Gunmetal	9990	150 г	NaN	NaN	NaN	NaN	NaN	NaN	авиационный алюминий с защитным покрытием	NaN	Faulhaber (Германия) - 8000 об	NaN	1 год	NaN	tatu-shop
1225	Роторная тату машинка Pen MAST SAI	7620	154 гр	NaN	NaN	до 4,5 мм (регулировка вылета осуществляется выкручиванием держателя)	NaN	6-9 V	NaN	авиационный алюминий	NaN	Япония 9V - 10000 об/мин	NaN	6 месяцев	NaN	tatu-shop
1226	Беспроводная тату машинка Cobra Morandi 3,5 Stroke Red	9990	175 гр	до 7 часов	NaN	NaN	1800 мАч	4,7-13V	Cobra Morandi	Авиационный алюминий	NaN	NaN	Cobra Tattoo	NaN	NaN	tatu-shop
1227	Беспроводная машинка для татуажа - Defenderr FENIX S Chromium	26950	135 г	NaN	2,5 часа	NaN	1600 мАч	NaN	NaN	авиационный алюминий с защитным покрытием	NaN	2W - 12000 об	NaN	1 год	NaN	tatu-shop
1228	Беспроводная тату машинка BRONC X1 Wireless Pen 11 Stroke Army Green	15720	NaN	NaN	NaN	от 0 до 4,5 мм (регулировка вылета осуществляется выкручиванием держателя)	NaN	4-12 V	BRONC X1 Wireless Pen	Авиационный алюминий с защитным покрытием	NaN	Швейцарский двигатель 12V / 11000 об/мин	NaN	6 месяцев	NaN	tatu-shop
1229	Беспроводная тату машинка AVA GT Pen GTR Adjustable Stroke 2.5-5.0mm Red	21990	1435 гр	NaN	2 часа	NaN	NaN	4,5-12 V	AVA GT Pen GTR	авиационный алюминий	5W	AVA Servo Brushless Motor - 11000 об/мин	AVA TATTOO MACHINE	6 месяцев	NaN	tatu-shop
1230	Роторная тату машинка Mast Tour Mini + Power Mast P112 purple	9640	57 г	6 часов	NaN	NaN	1200 мАч	5 - 8 В	NaN	алюминий	3 Ватт	Япония 8V 9000 об/мин	DragonHawk	6 месяцев	NaN	tatu-shop
1231	Роторная тату машинка Mast Pen Essence GB-300	4990	140 гр	NaN	NaN	NaN	NaN	6-9 V	Mast Pen Essence GB-300	авиационный алюминий	NaN	Япония 9V - 10000 об/мин	NaN	6 месяцев	NaN	tatu-shop
1232	Роторная тату машинка Mast Tour Mini purple	6240	82 г	NaN	NaN	NaN	NaN	5 - 8 В	NaN	авиационный алюминий	3 Ватт	Япония 8V / 9000 об/мин	DragonHawk	6 месяцев	NaN	tatu-shop
1233	Беспроводная тату машинка BRONC X2 Adjustable Stroke 11 Options Red	17950	550 гр	NaN	NaN	от 0 до 4,5 мм (регулировка вылета осуществляется выкручиванием держателя)	NaN	4-12 V	BRONC X2	Авиационный алюминий с защитным покрытием	NaN	Швейцарский двигатель 12V / 11000 об/мин	NaN	6 месяцев	NaN	tatu-shop
1234	Беспроводная тату машинка EZ P3 Pro Lumina 6 Strokes Champagne Gold	13330	420 гр	до 5 часов	2 часа	NaN	1600 mA/ч	4-12 V	EZ P3 Pro Lumina	авиационный алюминий с защитным покрытием	NaN	EZ Customized External Rotor Brushless Motor 12V-10000 об/мин	NaN	6 месяцев	NaN	tatu-shop
1235	Беспроводная тату машинка EZ Popu Diva PMU 6 Stroke X 2 Power Seraph	21480	550 гр	5 -7 ч	2 ч	0 - 4,5 мм	1600 mA/ч	4 - 12V	EZ Popu Diva	авиационный алюминий с защитным покрытием	NaN	NaN	EZ Tattoo	6 месяцев	NaN	tatu-shop
1236	Беспроводная тату машинка - Pen Dragonhawk Armor Wireless Rotary green	13380	186 г	до 6 часов	NaN	от 0 до 4	NaN	5-12V	NaN	Алюминий	NaN	Японский мотор	NaN	6 месяцев	NaN	tatu-shop
1237	Роторная тату машинка NB Needle Bee RTM-1003 black	2380	135 гр	NaN	NaN	NaN	NaN	5-8 V	NaN	авиационный алюминий	NaN	Япония 10000 об/мин	NB Needle Bee Tattoo	NaN	NaN	tatu-shop
1238	Роторная тату машинка Mast P10 Black	6440	117 г	NaN	NaN	NaN	NaN	5 - 8 V 9000 об/мин	NaN	алюминий	3 Ватт	Япония	DragonHawk	6 месяцев	NaN	tatu-shop
1239	Беспроводная машинка для татуажа - Mast P20 Permanent With 2.5MM Stroke X 2 Power Blue	11870	122 г	4-6 часов	NaN	0-3,5 мм	NaN	4-10V	Mast P20	Авиационный алюминий	NaN	Mast Special Edition Coreless Motor 10V/10000 об	NaN	6 месяцев	NaN	tatu-shop
1240	Беспроводная тату машинка Flux Wireless Pen S11 Black	7990	210 г	до 6 часов	NaN	0-4 мм	NaN	4	Flux Wireless Pen S11	Алюминий	NaN	Япония 12V-12000 об/мин	Solong Tattoo	NaN	NaN	tatu-shop
1241	Беспроводная тату машинка MAST ARCHER S ULTRA GRAY	15960	169 г	4-8 часов	50 минут	от 0 до 4,5 мм	NaN	4-12V	MAST Archer S	Авиационный алюминий	NaN	Высокопроизводительный бесщеточный двигатель M-Core	MAST (DragonHawk)	6 месяцев	NaN	tatu-shop
1242	Беспроводная тату машинка MAST FLIP 3 Wireless 7 Strokes X 2 Power	16480	515 гр	до 8 часов	до 2 часов	NaN	NaN	NaN	NaN	Авиационный алюминий	NaN	Coreless Motor Mcore 12В-10000 об/мин	NaN	6 месяцев	NaN	tatu-shop
1243	Роторная тату машинка Dragonhawk Atom M3 gold	3380	155 гр	NaN	NaN	NaN	NaN	6-9 V	NaN	авиационный алюминий	NaN	Япония 8V - 10000 об/мин	NaN	6 месяцев	NaN	tatu-shop
1244	Роторная тату машинка Mast P30 SMP pink	7630	77 г	NaN	NaN	до 4,5 мм (регулировка вылета осуществляется выкручиванием держателя)	NaN	7-9В	NaN	авиационный алюминий	3 Ватт	Япония	DragonHawk	6 месяцев	NaN	tatu-shop
1246	Беспроводная тату машинка Dragonhawk Fold Pro 7 Strokes Length X 2 Power Blue	22540	560 гр	до 5 часов	1,5 часа	NaN	1500 mA/ч	4-12 V	Dragonhawk Fold Pro 7 Strokes	Авиационный алюминий	NaN	Coreless Motor 8V-6500 об/мин	NaN	6 месяцев	NaN	tatu-shop
1247	Беспроводная тату машинка Cobra Morandi 3,5 Stroke Light Green	9990	175 гр	до 7 часов	NaN	NaN	1800 мАч	4,7-13V	Cobra Morandi	Авиационный алюминий	NaN	NaN	Cobra Tattoo	NaN	NaN	tatu-shop
1248	Универсальная роторная тату машина Burlak Solo Pro Black Matt	25000	104 г	NaN	NaN	NaN	NaN	NaN	Burlak Solo Pro	NaN	NaN	(11 Вт) 10000 об	Burlak Rotary (Россия)	NaN	NaN	tatu-shop
1249	Роторная тату машинка - Stigma BSS-700 red	5964	155 гр	NaN	NaN	NaN	NaN	7-12 V	NaN	авиационный алюминий	NaN	Тайвань - 8V 10000 об/мин	Solong Tattoo	NaN	NaN	tatu-shop
1280	Тату-машинка для художественной татуировки EZ, Evo Tech, Gray	16281	NaN	около 7,5 часов	3,5 часа	3,5 мм	1600 мАч	5,0-12 В	NaN	авиационный алюминий	NaN	NaN	NaN	NaN	9000 об/мин ±10%	28opt
3397	Skinductor Vertigo II GO!	18236	NaN	NaN	NaN	3.5	NaN	NaN	NaN	NaN	NaN	NaN	Россия	1 год	NaN	fenix-tattoo
1281	Роторная тату-машинка для художественной татуировки EZ P3, Black	11132	228 г	приблизительно 5 часов	NaN	2,5 мм, 2,6 мм, 2,8 мм, 3,2 мм, 3,6 мм, 4,0 мм	2000 мАч	5 - 9 В постоянного тока	NaN	авиационный алюминий	NaN	Швеция	EZ Tattoo (КНР)	NaN	10000 об / мин ± 10%	28opt
1282	Тату-машинка для художественной татуировки EZ, Evo Tech, Mint Blue	16281	NaN	около 7,5 часов	3,5 часа	3,5 мм	1600 мАч	5,0-12 В	NaN	авиационный алюминий	NaN	NaN	NaN	NaN	9000 об/мин ±10%	28opt
1283	Роторная тату-машинка для художественной татуировки EZ Dagger V2, Black	10733	140 г	NaN	NaN	NaN	NaN	5-9 В	NaN	авиационный алюминий	NaN	NaN	EZ Tattoo (КНР)	NaN	NaN	28opt
1284	Роторная тату-машинка для художественной татуировки EZ P3, Green	11132	228 г	приблизительно 5 часов	NaN	2,5 мм, 2,6 мм, 2,8 мм, 3,2 мм, 3,6 мм, 4,0 мм	2000 мАч	5 - 9 В постоянного тока	NaN	авиационный алюминий	NaN	Швеция	EZ Tattoo (КНР)	NaN	10000 об / мин ± 10%	28opt
1285	Роторная тату-машинка для художественной татуировки EZ P3 Pro, Matte Red	22540	247 г	NaN	NaN	2,0 мм, 2,4 мм, 2,8 мм, 3,3 мм, 3,7 мм, 4,2 мм	1600 мАч	5 - 12 В постоянного тока	NaN	авиационный алюминий	NaN	EZ без сердечника	EZ Tattoo (КНР)	6 месяцев	10000 об / мин ± 10%	28opt
1286	Тату-машинка для художественной татуировки EZ P4 SE, Matte Grey	8344	195 г	NaN	NaN	3,5 мм	NaN	NaN	NaN	авиационный алюминий	NaN	NaN	EZ Tattoo (КНР)	NaN	7000 – 9000	28opt
1287	Тату-машинка для художественной татуировки EZ, Evo Tech, Red	16281	NaN	около 7,5 часов	3,5 часа	3,5 мм	1600 мАч	5,0-12 В постоянного тока	NaN	авиационный алюминий	NaN	NaN	NaN	NaN	9000 об/мин ±10%	28opt
1288	Роторная тату-машинка для художественной татуировки EZ, P2 EPIC, Emerald	15810	250 г	NaN	5 часов	0-4,5 мм	5000 мАч	5-12 В	NaN	авиационный алюминий	NaN	бесщеточный	EZ Tattoo (КНР)	NaN	9000 об/мин, 60-150 Гц	28opt
1289	Роторная тату-машинка для художественной татуировки EZ P3, Silver	11132	228 г	приблизительно 5 часов	NaN	2,5 мм, 2,6 мм, 2,8 мм, 3,2 мм, 3,6 мм, 4,0 мм	2000 мАч	5 - 9 В постоянного тока	NaN	авиационный алюминий	NaN	Швеция	EZ Tattoo (КНР)	NaN	10000 об / мин ± 10%	28opt
1290	Роторная тату-машинка для художественной татуировки EZ, P2 EPIC, Black	15043	250 г	NaN	5 часов	NaN	5000 мАч	5-12 В	NaN	авиационный алюминий	NaN	бесщеточный	EZ Tattoo (КНР)	NaN	9000 об/мин, 60-150 Гц	28opt
1291	Тату-машинка для художественной татуировки EZ, Portex Generation P2S, Matte Desert Gold	10580	197 г	NaN	NaN	3,5 мм	1800 мАч	5-9 В	NaN	авиационный алюминий	NaN	EZ Customized Swiss Motor	EZ Tattoo (КНР)	6 месяцев	NaN	28opt
1292	Роторная тату-машинка для художественной татуировки EZ Avant V2, Red	11543	194 г	NaN	NaN	2,5 мм, 2,6 мм, 2,8 мм, 3,2 мм, 3,6 мм, 4,0 мм	NaN	5 - 12 В постоянного тока	NaN	авиационный алюминий	NaN	NaN	EZ Tattoo (КНР)	NaN	9000 об / мин ± 10%	28opt
1293	Тату-машинка для художественной татуировки EZ Portex Generation P2S, Gold Gradient	10580	197 г	NaN	NaN	4 мм	1800 мАч	5 - 9 В постоянного тока	NaN	авиационный алюминий	NaN	EZ Customized Swiss Motor	EZ Tattoo (КНР)	6 месяцев	10800 об / мин ± 10%	28opt
1294	Роторная тату-машинка для художественной татуировки EZ P3, Red	11132	228 г	приблизительно 5 часов	NaN	2,5 мм, 2,6 мм, 2,8 мм, 3,2 мм, 3,6 мм, 4,0 мм	2000 мАч	5 - 9 В постоянного тока	NaN	авиационный алюминий	NaN	Швеция	EZ Tattoo (КНР)	NaN	10000 об / мин ± 10%	28opt
1295	Роторная тату-машинка для художественной татуировки EZ Filter Freedom, Black	8220	200 г	NaN	NaN	3,5 мм	1500 мАч	6 - 9 В постоянного тока	NaN	авиационный алюминий	NaN	EZ без сердечника	EZ Tattoo (КНР)	6 месяцев	10000 об / мин ± 10%	28opt
1296	Тату-машинка для художественной татуировки EZ Portex Generation P2S, Mint Green Gradient	10580	197 г	NaN	NaN	4 мм	1800 мАч	5-9 В постоянного тока	NaN	авиационный алюминий	NaN	EZ Customized Swiss Motor	EZ Tattoo (КНР)	6 месяцев	10800 об / мин ± 10%	28opt
1297	Роторная тату-машинка для художественной татуировки EZ, P2 EPIC, Red	15043	250 г	NaN	5 часов	NaN	5000 мАч	5-12 В	NaN	авиационный алюминий	NaN	бесщеточный	EZ Tattoo (КНР)	NaN	9000 об/мин, 60-150 Гц	28opt
1298	Роторная тату-машинка для художественной татуировки EZ, P2 EPIC, Silver	15043	250 г	NaN	5 часов	NaN	5000 мАч	5-12 В	NaN	авиационный алюминий	NaN	бесщеточный	EZ Tattoo (КНР)	NaN	9000 об/мин, 60-150 Гц	28opt
3385	Ambition Hunter Storm	7661	NaN	5	3	3.5	1800	NaN	NaN	Аллюминий	9	бесколлекторный Ambition	Китай	6 месяцев	12000	fenix-tattoo
3386	Equaliser Hybrid Fox Wireless	42763	210	NaN	NaN	4.2	NaN	NaN	NaN	NaN	NaN	бесколлекторный Equaliser	Польша	1 год	NaN	fenix-tattoo
3387	Defender Iron S Chromium	24991	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	fenix-tattoo
3388	Ambition Ninja Max	14553	223	5 - 6	1,5 - 2	4.0, 3.5	1700	NaN	NaN	Аллюминий	12	Custom coreless motor	Китай	6 месяцев	10500	fenix-tattoo
3389	Mast Sensor Tattoo Machine With RCA Connection Matte Black	9758	NaN	NaN	NaN	4.0	NaN	NaN	NaN	Аллюминий	12	Brushless Motor	Китай	6 месяцев	10000	fenix-tattoo
3390	EQUALISER Pen ENDURO Black Edition	15648	NaN	NaN	NaN	3.5	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	fenix-tattoo
3391	EZ EvoTech Pro Black	11482	NaN	5 - 7	2,5	3.5	2000	NaN	NaN	Аллюминий	NaN	EZ Customized External Rotor Brushless Motor	Китай	6 месяцев	9000	fenix-tattoo
3392	Ambition Ninja Ultra	15120	190	5 - 6	1,5 - 2	4.0, 3.5	1900	NaN	NaN	Аллюминий	12	бесщеточный Ambition Coreless	Китай	6 месяцев	13000	fenix-tattoo
3400	Ambition Ninja Max Version 3	14175	253	6 - 7	6	3.5, 4.0	2400	NaN	NaN	Аллюминий	12	Custom coreless motor	Китай	6 месяцев	10500	fenix-tattoo
3401	Ambition T-REX Storm	7542	193	6 - 7	1,5 - 2	4.0	1800	NaN	NaN	Аллюминий	9	Coreless motor	Китай	6 месяцев	12000	fenix-tattoo
3402	Ambition T-REX Beginner	4997	215	4,5 - 5	3,5 -4	3.5	1600	NaN	NaN	Аллюминий	8	NaN	Китай	6 месяцев	6900	fenix-tattoo
3403	GLOVCON INOX LADY PEN MAKEUP MACHINE V2	38906	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	fenix-tattoo
3404	FKirons Spektra Xion Gorilla Gold Rush	57057	NaN	NaN	NaN	3.2, 3.7	NaN	NaN	NaN	NaN	6	MotorBolt	США	1 год	NaN	fenix-tattoo
3405	EQUALISER JC Hummer Black	15154	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	fenix-tattoo
3406	Skinductor Vertigo II	18236	NaN	NaN	NaN	3.5	NaN	NaN	NaN	NaN	NaN	NaN	Россия	1 год	NaN	fenix-tattoo
3407	Ambition Kiss of Dragon V1	7560	254	4 - 6	2.5	2.0, 2.3, 2.6, 3.0, 3.4, 3.8, 4.2	1600	NaN	NaN	Аллюминий	8	Powerfull Motor	Китай	6 месяцев	9000	fenix-tattoo
3408	INKin Inferno Adjustable Stroke Green Black 1 PowerBolt	21551	236 - 257	6 - 8	2	2.0, 2.5, 3.0, 3.5, 4.0, 4.5	1800	10	NaN	Аллюминий	12	Coreless Motor	Китай	6 месяцев	12000	fenix-tattoo
3409	EZ EvoTech S Black 3.5 mm	9568	NaN	4	2	3.5, 4.0	1520	NaN	NaN	Аллюминий	NaN	EZ Customized Swiss Motor	Китай	6 месяцев	12000	fenix-tattoo
3410	Vlad Blad Avenger 2 PRO	41451	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	fenix-tattoo
3411	Ambition Ninja Nova	14648	170	6 - 8	3	3.5, 4.0	2000	5 - 12	NaN	Аллюминий	NaN	Бесщеточный мотор	Китай	6 месяцев	10000	fenix-tattoo
3412	Mast Tour Siya Black	16968	NaN	4	2	3.0	1200	NaN	NaN	Аллюминий	8	Custom Mast Coreless motor	Китай	6 месяцев	10000	fenix-tattoo
3413	Тату машинка Ink Machines Stingray X2 Blazing gold	68716	NaN	NaN	NaN	4.0	NaN	NaN	NaN	NaN	6	NaN	Швеция	1 год	8000	fenix-tattoo
3414	Cheyenne HAWK SOL Nova Unlimited Black 2.5 mm	93953	184	5	3	2.5, 3.5, 4.0, 5.0	NaN	NaN	NaN	Аллюминий	NaN	Brushless DC Motor	Германия	1 год	NaN	fenix-tattoo
3415	Mast Archer 5 Star Series	16828	192	7	2	3.5	2000	NaN	NaN	NaN	NaN	NaN	Китай	6 месяцев	NaN	fenix-tattoo
3416	Lithuanian Irons Z Rotary Aluminum Matte Black Anodized	33931	140	NaN	NaN	1.0, 2.0, 3.0, 4.0	NaN	NaN	NaN	NaN	8,5	Faulhaber	Литва	1 год	NaN	fenix-tattoo
3417	MT Mustang Tattoo Zoon	23099	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	fenix-tattoo
3418	ABS Zetton Wireless Black	13703	213	6	3	3.5, 4.0	2400	NaN	NaN	Аллюминий	8	Brushless motor	Китай	6 месяцев	10000	fenix-tattoo
3419	FKirons Spektra Xion Urban Camo	57057	NaN	NaN	NaN	3.2, 3.7	NaN	NaN	NaN	NaN	6	MotorBolt	США	1 год	NaN	fenix-tattoo
3420	Тату машинка Ink Machines Dragonfly X2 Crazy lime	63221	NaN	NaN	NaN	3.7	NaN	NaN	NaN	NaN	6	NaN	Швеция	1 год	8000	fenix-tattoo
3421	EQUALISER Fox Black	10422	NaN	NaN	NaN	3.5	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	fenix-tattoo
3422	Vlad Blad AVENGER	41838	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	fenix-tattoo
3423	Vlad Blad Seawolf Rotary Machine	13136	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	fenix-tattoo
3424	Dragonhawk Rotary Tattoo Machine SEA Black	10611	NaN	NaN	NaN	3.5	NaN	NaN	NaN	NaN	12	NaN	NaN	NaN	9000	fenix-tattoo
3425	EZ Defender X Silver 3.5 mm	11462	NaN	NaN	NaN	3.5, 4.0	NaN	NaN	NaN	NaN	NaN	NaN	Китай	6 месяцев	NaN	fenix-tattoo
3426	Dragonhawk Extreme Rotary Tattoo Machine Pen Black	6255	NaN	NaN	NaN	3.5	NaN	NaN	NaN	NaN	NaN	NaN	Китай	6 месяцев	10000	fenix-tattoo
3427	FKirons Spektra Edge X Tangerine	41496	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	fenix-tattoo
3428	Ambition Xnet Bestia Adjustable Stroke Wireless Black	15120	NaN	6	3	2.4, 2.7, 3.0, 3.3, 3.6, 3.9, 4.2	2400	NaN	NaN	Аллюминий	12	Coreless Motor	Китай	6 месяцев	10500	fenix-tattoo
3429	Mast Flex	7295	NaN	NaN	NaN	3.5	NaN	NaN	NaN	NaN	12	Coreless Motor	Китай	6 месяцев	10000	fenix-tattoo
3430	WJX Maxon	15318	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	fenix-tattoo
3431	MT Mustang Tattoo Sting	26563	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	fenix-tattoo
3432	Bishop Rotary Micro Angelo Black Edition	38150	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	США	NaN	NaN	fenix-tattoo
3433	Skinductor Vertigo GO! Hard	12767	NaN	NaN	NaN	3.5	NaN	NaN	NaN	NaN	NaN	NaN	Россия	1 год	NaN	fenix-tattoo
3434	Xtreme X Tattoo Machine	21846	183	5 - 10	NaN	4.0	2000	NaN	NaN	Аллюминий	NaN	бесщеточный двигатель Faulhaber	США	1 год	NaN	fenix-tattoo
3435	Ambition Ninja Pro Version 1 Gold	13892	200	7	3	3.5, 4.0	2400	NaN	NaN	NaN	NaN	NaN	Китай	6 месяцев	NaN	fenix-tattoo
3436	Dragonhawk Wireless Tattoo Machine Pen X4 Black	12380	NaN	4	2	3.5	900	NaN	NaN	Аллюминий	12	Coreless Motor	Китай	6 месяцев	10000	fenix-tattoo
3437	Mast Flip 2 Wireless	14589	213	4 - 6	3	2.4, 2.7, 3.0, 3.3, 3.6, 3.9, 4.2	1700	NaN	NaN	Аллюминий	12	MCore-C3	Китай	6 месяцев	9500	fenix-tattoo
3438	EZ Avant Pen	25986	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	Китай	NaN	NaN	fenix-tattoo
3439	EZ Portex Gen2 VERSATILE New Black 2 PowerBolt	19117	196	3 - 4	1	3.5	1000	NaN	NaN	Аллюминий	NaN	EZ Customized Swiss Motor	Китай	6 месяцев	9000	fenix-tattoo
3440	EZ Lola Air S PMU Silver 1 PowerBolt	8545	105	4 - 6	2	3.0	1200	NaN	NaN	Аллюминий	NaN	Coreless Motor	Китай	6 месяцев	8000 - 10000	fenix-tattoo
3441	ACUS M1	121968	181	11	3	3.0, 3.7, 4.5	1500	NaN	NaN	NaN	NaN	Безколлекторный двигатель Faulhaber	Германия	1 год	NaN	fenix-tattoo
3442	Burlak Tattoo Machines Solo Pro	25986	104	NaN	NaN	3.8	NaN	NaN	NaN	NaN	11	NaN	Россия	1 год	10000	fenix-tattoo
3443	Dragonhawk Fold 3 Wireless Tattoo Kit	14081	213	5	1,5	2.4, 2.7, 3.0, 3.3, 3.6, 3.9, 4.2	1500	NaN	NaN	NaN	8	Coreless Motor	Китай	6 месяцев	6500	fenix-tattoo
3444	Vlad Blad ULTRON 3 3.7 mm	92952	NaN	5 - 7	0,15	3.7, 4.2, 4.7	NaN	NaN	NaN	NaN	12,6	M3Pro	Россия	NaN	NaN	fenix-tattoo
3445	Ink Machines Scorpion NEO Blazing gold	45860	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	fenix-tattoo
3446	Dragonhawk Extreme Rotary Tattoo Machine Carbon Steel Black	4149	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	fenix-tattoo
4629	Mast Nano Wireless Rotary Pen Machine with Battery PMU SMP	14451	146	6	3	3.2	1200	NaN	NaN	Аллюминий	NaN	NaN	Китай	6 месяцев	9000	fenix-tattoo
3447	EZ P3 Pro Turbo Black 1 PowerBolt	17791	NaN	4,5	2	3.0, 3.5, 4.0, 4.5, 5.0	1600	10	NaN	Аллюминий	12	EZ Customized External Rotor Brushless Motor	Китай	6 месяцев	10000	fenix-tattoo
3448	EQUALISER Fox Mini Black	23836	NaN	NaN	NaN	3.5	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	fenix-tattoo
3449	Cheyenne HAWK Pen Black	52300	NaN	NaN	NaN	3.5	NaN	NaN	NaN	NaN	NaN	Precision DC motor	Германия	1 год	NaN	fenix-tattoo
3450	Goochie M8	30799	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	fenix-tattoo
3451	Ambition XNET Elite Pro	9450	275	6 - 7	1.5 - 2	4.0	1900	NaN	NaN	Аллюминий	12	Кастомизированный бесщёточный XNET Coreless Motor	Китай	6 месяцев	10500	fenix-tattoo
3452	InkJecta Ultra Light Blue Tongue	43481	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	fenix-tattoo
3453	ABS Vibe Black	11268	NaN	7	3	4.0	2700	3,7	NaN	Аллюминий	12	Бесщеточный мотор	Китай	6 месяцев	10000	fenix-tattoo
3454	Vlad Blad Ultron 4 Pro Blackout	137013	NaN	NaN	NaN	3.2, 3.5, 3.8, 4.2, 4.7, 5.5	NaN	NaN	NaN	Аллюминий	NaN	M3Ultra с системой стабилизации DirectPower	Россия	NaN	NaN	fenix-tattoo
3455	Ambition VIBE Max Black 2.5 - 4.5 mm	14175	NaN	6 - 7	1,5 - 2	2.5, 3.5, 4.0, 4.5	1800	NaN	NaN	Аллюминий	12	Бесщеточный мотор	Китай	6 месяцев	10000	fenix-tattoo
3456	EZ P2 EPIC Black 3.5 mm	17659	NaN	NaN	NaN	3.5, 4.5	NaN	NaN	NaN	NaN	NaN	NaN	Китай	NaN	NaN	fenix-tattoo
3457	Dragonhawk X7 Wireless Smart Screen AI	20275	213	6 - 7	2 - 3	3.5	1800	NaN	NaN	NaN	10500	бесколлекторный M-Core	Китай	6 месяцев	10500	fenix-tattoo
3458	Ambition Xnet Vipera Adjustable Stroke Black	15120	NaN	7	3	2.4, 2.7, 3.0, 3.3, 3.6, 3.9, 4.2	2400	NaN	NaN	NaN	12	Custom Coreless Motor	Китай	6 месяцев	10500	fenix-tattoo
3459	Inkjecta Flite X1 Glass	99740	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	fenix-tattoo
3460	ABS Ninja	12821	210	3 - 7	2	4.0	1650 / 2400	NaN	NaN	Аллюминий	10	Ambition Custom motors	Китай	6 месяцев	9000	fenix-tattoo
3461	Cheyenne HAWK SOL Nova	64969	NaN	NaN	NaN	3.5	NaN	NaN	NaN	NaN	NaN	Brushless DC motor	Германия	1 год	NaN	fenix-tattoo
3462	Mast Dawn	5656	NaN	NaN	NaN	3.2	NaN	NaN	NaN	NaN	8	NaN	Китай	NaN	6500	fenix-tattoo
3463	Skinductor Vertigo Long Stroke	16828	NaN	NaN	NaN	4.2	NaN	NaN	NaN	NaN	NaN	NaN	Россия	1 год	NaN	fenix-tattoo
3464	EZ P4 MINI Grey	10152	NaN	NaN	NaN	3.5	NaN	NaN	NaN	Аллюминий	NaN	NaN	Китай	NaN	8000 - 10000	fenix-tattoo
3465	ACUS C2	52128	NaN	NaN	NaN	3.5, 4.1	NaN	6 - 10	NaN	NaN	NaN	Бесщеточный мотор (Made in Germany)	Германия	1 год	NaN	fenix-tattoo
3466	Inox Prime RUNIC ARCANA	23579	NaN	6	2	2.4, 2.7, 3.0, 3.3, 3.6, 3.8, 4.2	1800	NaN	NaN	NaN	9	бесколлекторный Inox Prime	Польша	1 год	11000	fenix-tattoo
3467	Ambition Ninja Pro Version 3 Gold	13892	NaN	7	3	3.5	2400	NaN	NaN	Аллюминий	12	Japan Coreless Motor	Китай	6 месяцев	10500	fenix-tattoo
4600	Ambition VIBE Black	12096	NaN	7	3	4.0	2700	3,7	NaN	Аллюминий	12	Бесщеточный мотор	Китай	6 месяцев	10000	fenix-tattoo
4601	Bishop Rotary The Power WAND Shader 3.5 mm	81990	NaN	NaN	NaN	3.5, 4.2, 5.0	NaN	NaN	NaN	NaN	NaN	NaN	США	NaN	NaN	fenix-tattoo
4602	Ambition Storm Wand Black	12411	NaN	NaN	NaN	4.0	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	fenix-tattoo
4603	Ambition XNET Titan 270 Red	14613	257	7 - 8	2 - 3	4.0, 5.0	2400	NaN	NaN	Аллюминий	8	Coreless motor	Китай	6 месяцев	10000	fenix-tattoo
4604	Mast Tour Special Edition Camo Green	11937	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	fenix-tattoo
4605	FKirons Spektra Direkt 2 Bubble Gum	40180	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	fenix-tattoo
4606	Defender Titanium GunMetal	29490	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	fenix-tattoo
4607	MT Mustang Tattoo Evolution	50815	179 - 198	4 - 6 / 12 - 16	1,2 / 3	3.8	18350 - 18650	NaN	NaN	Аллюминий	6	NaN	Россия	1 год	NaN	fenix-tattoo
4608	Defender Onyx Brownstone	16101	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	fenix-tattoo
4609	InkJecta Eclipse Classic Black/Blue	58463	NaN	NaN	NaN	3.25	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	fenix-tattoo
4610	CNC X-WE PLUS Wireless Tattoo Pen	28130	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	fenix-tattoo
4611	Cheyenne HAWK Pen 2	61433	140	4	NaN	3.5	NaN	NaN	NaN	NaN	NaN	BLDC motor	Германия	1 год	NaN	fenix-tattoo
4612	Arena A-power	28960	181	10	1,5	3.5	1800	NaN	NaN	Аллюминий	8	NaN	Китай	6 месяцев	11000	fenix-tattoo
4613	Mast Fold Pro	20549	200	6	1.5	2.4, 2.7, 3.0, 3.3, 3.6, 3.9, 4.2	1500	NaN	NaN	NaN	5.5	M-Core-C2	Китай	6 месяцев	NaN	fenix-tattoo
4614	Skinductor Vertigo GO! Soft	12767	NaN	NaN	NaN	3.5	NaN	NaN	NaN	NaN	NaN	NaN	Россия	NaN	NaN	fenix-tattoo
4615	EQUALISER FOX MINI V2 Black	14208	NaN	NaN	NaN	3.5	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	fenix-tattoo
4616	GLOVCON PEN COSMETIC Makeup Black	26312	NaN	NaN	NaN	3.5	NaN	NaN	NaN	NaN	4	NaN	Польша	NaN	NaN	fenix-tattoo
4617	Cheyenne HAWK Thunder Silver без держателя	28988	NaN	NaN	NaN	4.0	NaN	NaN	NaN	NaN	NaN	Precision DC motor	Германия	1 год	NaN	fenix-tattoo
4618	Microbeau (FK Irons) Xion Mini GunMetal	50108	NaN	NaN	NaN	2.5	NaN	NaN	NaN	NaN	NaN	NaN	США	NaN	NaN	fenix-tattoo
4619	EZ Filter X30  1 PowerBolt	7647	242	5 - 7	2	2.0, 2.4, 2.8, 3.1, 3.4, 3.7, 4.0	1600	NaN	NaN	Аллюминий	12	Customized Coreless Motor	Китай	6 месяцев	9500	fenix-tattoo
4620	Mast Aion Wireless Tattoo Machine 3.5 mm	13451	NaN	6	1	4.0, 3.5	1500	NaN	NaN	Аллюминий	12	японский мотор без сердечника	Китай	6 месяцев	9900	fenix-tattoo
4621	Arena SMP PMU	10943	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	fenix-tattoo
4622	Inox Prime Wireless 3.5 mm	79959	NaN	8	3	3.5, 4.2	NaN	NaN	NaN	NaN	NaN	NaN	Польша	1 год	NaN	fenix-tattoo
4623	Cheyenne HAWK 10 Years Anthracite Edition Matt Anthracite	53477	NaN	NaN	NaN	2.5	NaN	NaN	NaN	NaN	NaN	Precision DC motor	Германия	1 год	NaN	fenix-tattoo
4624	CNC Rhein Wireless Tattoo Machine Black	27831	NaN	NaN	NaN	3.5	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	fenix-tattoo
4625	Mast Tour Wireless MINI	9119	NaN	NaN	NaN	2.5	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	fenix-tattoo
4626	CNC CW2 Wireless Tattoo Pen Black	23940	NaN	NaN	NaN	3.0, 4.0	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	fenix-tattoo
4632	FK Irons The ONE Charcoal 3.0 mm	63576	NaN	6	NaN	4.0	1850	NaN	NaN	NaN	NaN	NaN	США	1 год	NaN	fenix-tattoo
4633	Mast Saber Wireless Battery Pen Black	16538	190	8	2	3.5	2000	NaN	NaN	Аллюминий	12	NaN	Китай	6 месяцев	10500	fenix-tattoo
4634	EQUALISER MIKRON Turbo Pen	44993	NaN	NaN	NaN	3.5	NaN	NaN	NaN	NaN	NaN	NaN	Польша	NaN	NaN	fenix-tattoo
4635	Inox Prime RUNIC IMPERA	30703	NaN	8	3	3.8	NaN	NaN	NaN	NaN	NaN	NaN	Польша	1 год	NaN	fenix-tattoo
4636	Mast Tour Black	6728	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	fenix-tattoo
4637	EZ Portex Generation 2S (P2S) Pro Silver 1 PowerBolt	9781	197	5	2	3.5	1800	NaN	NaN	Аллюминий	NaN	Бесщеточный мотор	Китай	6 месяцев	10800	fenix-tattoo
4638	Ambition Zetton Pro Wireless Black	15309	272	6	3	3.5, 4.0	2400	NaN	NaN	Аллюминий	10	Brushless motor	Китай	6 месяцев	10000	fenix-tattoo
4639	Bishop Rotary The Power WAND Packer 4.2 mm Full Set	125990	NaN	NaN	NaN	3.5, 4.2, 5.0	NaN	NaN	NaN	NaN	NaN	NaN	США	1 год	NaN	fenix-tattoo
4640	Ambition Trident Wireless	10534	NaN	NaN	NaN	4.0	NaN	NaN	NaN	NaN	NaN	NaN	Китай	6 месяцев	NaN	fenix-tattoo
4641	Mast Tour Pro Plus	11596	NaN	NaN	NaN	4.0	NaN	NaN	NaN	Аллюминий	10	Brushless motor mcore-r1	Китай	6 месяцев	10000	fenix-tattoo
4642	EZ Filter Tora Black	5744	196	5	2	3.5	1600	NaN	NaN	Аллюминий	NaN	Coreless Motor	Китай	6 месяцев	10000	fenix-tattoo
4643	Cheyenne HAWK Pen Unio	86195	NaN	NaN	NaN	2.5, 4.0	NaN	NaN	NaN	NaN	NaN	DC motor	Германия	1 год	NaN	fenix-tattoo
4644	Ambition Ninja Pro Version 2 Gold	13892	NaN	7	3	3.5	2400	NaN	NaN	NaN	12	Japan Coreless Motor	Китай	6 месяцев	10500	fenix-tattoo
4645	Mast Archer S Matte Black	21793	NaN	4	1	4.2	1520	NaN	NaN	Аллюминий	12	бесщеточный Mcore	Китай	6 месяцев	11500	fenix-tattoo
4646	Ambition Ninja v2.0	12821	213	4	2	4.0	2200	NaN	NaN	Аллюминий	8	Ambition Custom Motors	Китай	6 месяцев	9000	fenix-tattoo
4647	Microbeau (FK Irons) Bellar Red Bottom	106523	NaN	NaN	NaN	2.1	NaN	NaN	NaN	NaN	NaN	NaN	США	NaN	NaN	fenix-tattoo
4648	Burlak Tattoo Machines Solo 2 Black / Blue 26 mm	24991	104	NaN	NaN	3.8	NaN	NaN	NaN	Аллюминий	11	NaN	Россия	1 год	10000	fenix-tattoo
4649	Dragonhawk Atom M6 Super Rotary Tattoo Pen Black	7107	NaN	NaN	NaN	4.0	NaN	NaN	NaN	NaN	12	NaN	Китай	6 месяцев	10500	fenix-tattoo
4650	Ambition Paco 2	12852	243	5 - 6	1,5 - 2	2.2, 2.6, 3.0, 3.4, 3.8, 4.2	1700	NaN	NaN	NaN	9	Coreless Motor	Китай	6 месяцев	10000	fenix-tattoo
4651	WJX Pico Black	9379	NaN	NaN	NaN	3.5	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	fenix-tattoo
4652	CNC X-UP	29878	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	fenix-tattoo
4653	Ambition Ninja	12821	210	3 - 7	2	4.0	1650 / 2400	NaN	NaN	NaN	10	Ambition Custom motors	Китай	NaN	9000	fenix-tattoo
4654	FKirons Spektra Flux Blue + PowerBolt	105893	178	10	2	4.0	NaN	NaN	NaN	NaN	NaN	NaN	США	1 год	NaN	fenix-tattoo
4655	EZ P2 MT (Multi-Touch) Red And Black 1 PowerBolt	17181	NaN	NaN	NaN	3.5	NaN	NaN	NaN	NaN	NaN	NaN	Китай	NaN	NaN	fenix-tattoo
4656	Eikon Helix Rotary Machine Silver RCA	24063	NaN	NaN	NaN	3.4	NaN	8,6	NaN	NaN	NaN	Maxon	Канада	1 год	NaN	fenix-tattoo
4657	FKirons Spektra HALO 2 Crossover Bubble Gum	41496	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	fenix-tattoo
4658	BEST by Alla Budaragina Pink Gloss	41791	NaN	NaN	NaN	2.6, 3.6	NaN	NaN	NaN	NaN	NaN	11500	NaN	NaN	NaN	fenix-tattoo
4659	Mast Flip Black	13829	NaN	NaN	NaN	2.6, 2.8, 3.0, 3.2, 3.5, 3.8, 4.8	NaN	NaN	NaN	Аллюминий	12	NaN	Китай	6 месяцев	10000	fenix-tattoo
4660	Jack & Alexx LILIT Pro	66833	NaN	4	2,5	3.5	1000	NaN	NaN	NaN	NaN	NaN	Беларусь	1 год	NaN	fenix-tattoo
4661	Vlad Blad Avenger 3 PRO	137356	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	Россия	NaN	NaN	fenix-tattoo
4662	Vlad Blad ULTRON PEN	29230	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	fenix-tattoo
4663	Critical Tattoo Torque Tattoo Pen Machine 4.2 mm	109626	NaN	10	NaN	3.5, 4.2, 5.0	NaN	NaN	NaN	NaN	NaN	NaN	США	1 год	NaN	fenix-tattoo
4664	Mast Pen	4997	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	fenix-tattoo
4665	Skinductor Vertigo S NEW	14589	NaN	NaN	NaN	3.5	NaN	NaN	NaN	NaN	NaN	NaN	Россия	NaN	NaN	fenix-tattoo
4666	INKin HOVER FM Dotwork Black	13936	226	5	2	3.5	1800	NaN	NaN	Аллюминий	NaN	INKin Customized Swiss Motor	Китай	6 месяцев	10000	fenix-tattoo
4667	Eikon Symbeos Lining Machine	24063	NaN	NaN	NaN	3.4	NaN	NaN	NaN	NaN	NaN	Symbeos №4	Канада	NaN	NaN	fenix-tattoo
4668	Burlak Tattoo Machines Nika 2	26949	NaN	NaN	NaN	3.8	NaN	NaN	NaN	Аллюминий	9	NaN	Россия	1 год	10000	fenix-tattoo
4669	MT Mustang Tattoo Аэро Белый Муар	10042	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	fenix-tattoo
4670	Mast Flash Black	7951	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	fenix-tattoo
4671	Critical Tattoo Torque Tattoo Pen Machine Full Set 3.5 mm	129675	NaN	10	NaN	3.5, 4.2, 5.0	NaN	NaN	NaN	NaN	NaN	NaN	США	1 год	NaN	fenix-tattoo
4672	Dragonhawk Atom M5 Rotary Pen Black	8054	NaN	NaN	NaN	3.5	NaN	NaN	NaN	NaN	12	NaN	Китай	6 месяцев	10500	fenix-tattoo
4673	INKin Inkflexo Adjustable Stroke Matte Black 1 PowerBolt	13394	NaN	5 - 7	2	2.0, 2.4, 2.8, 3.3, 3.7, 4.2	1600	NaN	NaN	Аллюминий	NaN	InkFlexo Coreless Motor	Китай	6 месяцев	12000	fenix-tattoo
4674	Тату машинка Ink Machines Scorpion X2 Evil black 22 mm	84069	NaN	NaN	NaN	3.7	NaN	NaN	NaN	NaN	NaN	NaN	Швеция	1 год	NaN	fenix-tattoo
4675	Ambition Ninja Adjustable Travel - Paco v2.2	14931	243	5	2	2.2, 2.6, 3.0, 3.4, 3.8, 4.2	1650	NaN	NaN	NaN	9	Powerful coreless Motor	Китай	6 месяцев	10000	fenix-tattoo
4676	Arena Tattoo Creation Black	22494	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	fenix-tattoo
4677	Eikon Symbeos Rotary System - Flex System - Black	43292	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	Канада	NaN	NaN	fenix-tattoo
4678	EZ Avant Flex Golden	9379	NaN	NaN	NaN	3.5	NaN	NaN	NaN	NaN	NaN	NaN	Китай	NaN	NaN	fenix-tattoo
4679	Mast Armor Wireless Dragonhawk Black	16334	186	8 - 12	2 - 3	3.5	NaN	NaN	NaN	Аллюминий	12	NaN	Китай	6 месяцев	10500	fenix-tattoo
4680	Defender Diamond GunMetal	27988	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	fenix-tattoo
4681	Arenahawk A-Power 4.0 Black	10422	NaN	5 - 8	NaN	4.0	1200	NaN	NaN	Аллюминий	10	NaN	Китай	6 месяцев	10000	fenix-tattoo
4682	CNC X-WE Wireless Tattoo Pen	22811	NaN	NaN	1,5	3.5	NaN	NaN	NaN	NaN	NaN	DC-Coreless motor	Китай	NaN	10000	fenix-tattoo
4683	Mast Fold 2 Pro Wireless Black 1 PowerBolt	14553	233	5 - 7	2 - 3	2.4, 2.7, 3.0, 3.3, 3.6, 3.9, 4.2	2000	NaN	NaN	NaN	8	MCore-C1	Китай	6 месяцев	6500	fenix-tattoo
4684	Ambition Cheyenne Green Battery Pen Wireless Lithium	16882	NaN	NaN	NaN	4.0	NaN	NaN	NaN	NaN	NaN	NaN	Китай	NaN	NaN	fenix-tattoo
4685	Mast Archer Wireless Battery Black	14587	NaN	8	2	3.5, 4.2	2000	NaN	NaN	Аллюминий	12	Direct Motor	Китай	6 месяцев	10500	fenix-tattoo
4686	Ambition Soldier Max Black	15120	201	8 - 10	2 - 3	4.0	2400	NaN	NaN	Аллюминий	12	Powerful brushless motor	Китай	6 месяцев	13000	fenix-tattoo
4687	Ambition XNET Flamingo Black	11174	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	Китай	NaN	NaN	fenix-tattoo
4688	Mast Player Edition	9254	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	fenix-tattoo
4689	Noir Wireless Rotary Tattoo Pen Machine	12677	143	10	4	3.5	2000	NaN	NaN	Аллюминий	8	NaN	Китай	6 месяцев	11000	fenix-tattoo
4690	Mast Rotary Tattoo Machine Pen for PMU SMP Black	9521	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	fenix-tattoo
4691	Skinductor Vertigo II Heavy	21174	NaN	NaN	NaN	3.5	NaN	NaN	NaN	NaN	NaN	NaN	Россия	1 год	NaN	fenix-tattoo
4692	EZ Lola Air pro Red 1 PowerBolt	12955	111	4 - 6	2	2.0, 2.2, 2.5, 2.8, 3.1, 3.3	1000	NaN	NaN	Аллюминий	NaN	Ez Coreless Motor	Китай	1 год	7000 - 9000	fenix-tattoo
4693	EZ P5 Touchscreen Black	18370	178	5	2	3.5	1800	NaN	NaN	Аллюминий	NaN	External Rotor Brushless Motor	Китай	6 месяцев	9000	fenix-tattoo
4694	Simplicity Artist	28873	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	fenix-tattoo
4695	Skinductor Vertigo Heavy Long Stroke	17325	NaN	NaN	NaN	4.2	NaN	NaN	NaN	NaN	NaN	NaN	Россия	NaN	NaN	fenix-tattoo
4696	ACUS M1 Ayre	137871	207	11	3	3.0, 3.7, 4.5	1500	NaN	NaN	NaN	NaN	Безколлекторный двигатель Faulhaber	Германия	1 год	NaN	fenix-tattoo
4697	Ambition XNET FLUX Black	17534	NaN	NaN	NaN	4.0	NaN	NaN	NaN	NaN	NaN	NaN	Китай	NaN	NaN	fenix-tattoo
4698	Ambition Ninja v3.0 High Capacity Battery	12947	NaN	6	2	4.0	2400	NaN	NaN	NaN	10	Бесколлекторый двигатель	Китай	6 месяцев	9000	fenix-tattoo
4699	Cheyenne HAWK SOL Terra без держателя	59970	NaN	NaN	NaN	4.0	NaN	NaN	NaN	NaN	NaN	brushless DC motor	Германия	1 год	NaN	fenix-tattoo
4700	Microbeau (FK Irons) Flux Mini Wireless PMU 3.0 mm Stealth 1 PowerBolt	76459	156	NaN	NaN	2.5, 3.0	NaN	NaN	NaN	NaN	NaN	NaN	США	1 год	NaN	fenix-tattoo
4701	Skinductor Vertigo Heavy	16413	NaN	NaN	NaN	3.5	NaN	NaN	NaN	NaN	NaN	NaN	Россия	NaN	NaN	fenix-tattoo
4702	EZ P2 DotFree Black	15626	NaN	NaN	NaN	3.5	NaN	NaN	NaN	NaN	NaN	NaN	Китай	NaN	NaN	fenix-tattoo
4703	Ambition Flash Max	15120	199	2 - 3	6 - 8	4.0, 3.5	2400	5 - 12	NaN	Аллюминий	NaN	Бесщеточный мотор	Китай	6 месяцев	10000	fenix-tattoo
4704	EZ Filter Freedom Black	6699	200	5	2	3.5	1500	6 - 9	NaN	Аллюминий	12	Coreless Motor	Китай	6 месяцев	10000	fenix-tattoo
4705	Lithuanian Irons Cyber	104803	190	4 - 6	NaN	4.0	1900	NaN	NaN	NaN	NaN	Brushless Faulhaber Motor	Литва	NaN	NaN	fenix-tattoo
4706	Lithuanian Irons Cyber X	86070	190	4 - 6	NaN	4.0	1900	NaN	NaN	NaN	NaN	Brushless Faulhaber Motor	Литва	NaN	NaN	fenix-tattoo
4707	Bishop Rotary The Power WAND Shader 3.5 Advanced Battery - Full Set	148628	NaN	NaN	NaN	3.5, 4.2, 5.0	NaN	NaN	NaN	NaN	NaN	NaN	США	1 год	NaN	fenix-tattoo
4708	Ambition Ninja Big Button	12821	230	7	2	4.0	2400	NaN	NaN	NaN	10	Japan Corless Motor	Китай	6 месяцев	9000	fenix-tattoo
4709	EZ P4 SE Black	6699	NaN	NaN	NaN	3.5	NaN	NaN	NaN	Аллюминий	NaN	Japanese Coreless Motor	Китай	6 месяцев	7000 - 9000	fenix-tattoo
4710	Ambition Soldier Pen 1 Black	10701	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	Китай	NaN	NaN	fenix-tattoo
4711	INKin Rampage Black 4.0 mm 1 PowerBolt	17369	217	5 - 7	2	4.0, 4.5	1600	NaN	NaN	Аллюминий	NaN	Brushless Motor	Китай	6 месяцев	10000	fenix-tattoo
4712	Mast Flip Pro Wireless	15083	260	6	2.5	2.4, 2.7, 3.0, 3.3, 3.6, 3.9, 4.2	1800	NaN	NaN	Аллюминий	12	MCore-C3	Китай	6 месяцев	9500	fenix-tattoo
4713	Arena Boom Short	10320	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	fenix-tattoo
4714	Ambition Zetton Wireless Black	15248	213	6	3	3.4, 3.8	2400	NaN	NaN	Аллюминий	8	Brushless motor	Китай	6 месяцев	10000	fenix-tattoo
4715	Mast Lancer Black 3.5 mm	16006	NaN	12	2 - 3	3.5, 4.2	1800	NaN	NaN	NaN	12	NaN	Китай	6 месяцев	10500	fenix-tattoo
4716	STING - Contur Professional Gold	55873	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	fenix-tattoo
4717	Mast P10 PMU Pen Dark Blue	8906	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	8	Coreless motor	Китай	6 месяцев	9000	fenix-tattoo
4718	EQUALISER Mikron PMU Make-Up Machine	35129	NaN	NaN	NaN	2.8	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	fenix-tattoo
4719	MT Mustang Tattoo Элемент 2 Белый Муар	12503	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	fenix-tattoo
4720	Cheyenne HAWK Pen ARTIST EDITION Roman Abrego	83631	NaN	NaN	NaN	3.5	NaN	NaN	NaN	Аллюминий	NaN	Precision DC motor	Германия	1 год	NaN	fenix-tattoo
4721	Equalizer Wireless Neutron Rotary Tattoo Machine 3.5 mm	54975	NaN	NaN	NaN	3.5, 4.0	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	fenix-tattoo
4722	MT Mustang Tattoo Элемент Белый Муар	12503	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	fenix-tattoo
4723	InkJecta Flite Nano Ultra LITE Blue Tongue	67731	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	fenix-tattoo
4724	Ambition Soldier 270 Wireless Black	17483	284	8 - 10	2 - 3	4.0, 4.5	2400	NaN	NaN	Аллюминий	10	Powerful brushless motor	Китай	6 месяцев	12000	fenix-tattoo
4725	EZ Dagger V2 Black 3.2 mm	14587	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	Китай	NaN	NaN	fenix-tattoo
4726	Dragonhawk 7 Stroke L3 Machine Black	14966	222	5 - 7	3	2.4, 4.2	2000	NaN	NaN	NaN	8	M-Core	Китай	6 месяцев	6500	fenix-tattoo
4727	GLOVCON Pen Pills THICK	39076	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	5	NaN	Польша	NaN	NaN	fenix-tattoo
4728	Microbeau (FK Irons) Spektra Flux S Max Wireless PMU 4.5 mm Oudwood 1 PowerBolt	105995	NaN	NaN	NaN	2.5, 3.2, 4.5	NaN	NaN	NaN	NaN	NaN	NaN	США	1 год	NaN	fenix-tattoo
4729	GLOVCON Mini PMU	30541	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	fenix-tattoo
4730	Mast Fold 2 Pro Wireless Two Grips Gold	16065	298	5 - 7	2 - 3	2.4, 4.2	2000	NaN	NaN	NaN	8	MCore-C1	Китай	6 месяцев	6500	fenix-tattoo
4731	EZ Filter Pen V2 Plus Black	21101	NaN	NaN	NaN	3.5	NaN	NaN	NaN	Аллюминий	NaN	Precision DC Motor	Китай	NaN	8000	fenix-tattoo
4732	Deuce Machines Hybrid Black RCA	25265	NaN	NaN	NaN	3.8, 4.2	NaN	NaN	NaN	NaN	NaN	Swiss Motor 4W	Россия	NaN	NaN	fenix-tattoo
4733	Mast Magi Pen Permanent Black	7107	NaN	NaN	NaN	2.0, 3.0	NaN	NaN	NaN	NaN	12	NaN	NaN	NaN	12000	fenix-tattoo
4734	EQUALISER Mikron Grey	38309	NaN	NaN	NaN	3.5	NaN	NaN	NaN	NaN	4.5	Faulhaber	Польша	NaN	NaN	fenix-tattoo
4735	Vlad Blad Seawolf Rotary Direct Drive 3.0	16443	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	fenix-tattoo
4736	Vlad Blad Seawolf Rotary Machine	21945	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	fenix-tattoo
4737	Microbeau (FK Irons) Spektra Flux S Wireless PMU GunMetal 1 PowerBolt	88609	170	10	NaN	3.0	NaN	NaN	NaN	NaN	9	Brushless motor	США	1 год	NaN	fenix-tattoo
4738	EZ Portex Generation 2S (P2S) Matte Xmas Green3.5 mm 1 PowerBolt	8899	197	5	2	3.5, 4.0	1800	NaN	NaN	Аллюминий	12	EZ Customized Swiss Motor	Китай	6 месяцев	10800	fenix-tattoo
4739	Skinductor R1 Ultra Black	11367	NaN	NaN	NaN	3.0, 4.0	NaN	NaN	NaN	NaN	NaN	NaN	Россия	NaN	NaN	fenix-tattoo
4740	Ink Machines COBRA Evil Black (30 mm) 1 PowerBolt	125860	NaN	NaN	NaN	3.0, 4.0	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	fenix-tattoo
4741	Ambition Shura-X Wireless Black	13325	NaN	6 - 7	2 - 2,5	3.5, 4.0	1800	NaN	NaN	Аллюминий	12	Custom Coreless Motor	Китай	6 месяцев	10000	fenix-tattoo
4742	Ambition Hunter 2	7560	NaN	5	3	3.5	1800	NaN	NaN	Аллюминий	9	mabuchi flat motor	Китай	6 месяцев	11000	fenix-tattoo
4743	EZ EvoTech Black 1 PowerBolt	23566	197	7,5	3,5	3.5	1600	NaN	NaN	Аллюминий	NaN	EZ Customized External Rotor Brushless Motor	Китай	NaN	9000	fenix-tattoo
4744	FK irons Spektra Flux Max ULTRA Bundle Bubblegum 4.0 mm	141397	208 - 227	NaN	NaN	3.2, 4.0, 4.5	NaN	NaN	NaN	NaN	NaN	NaN	США	1 год	NaN	fenix-tattoo
4745	Ambition T-REX V1-S	4725	234	4 - 6	2.5	3.5	1600	NaN	NaN	Аллюминий	8	Custom coreless motor	Китай	6 месяцев	9000	fenix-tattoo
4746	Microbeau (FK Irons) Spektra Xion S Bubble Gum	54700	NaN	NaN	NaN	1.8, 2.5	NaN	NaN	NaN	NaN	NaN	6 W MotorBolt	США	1 год	NaN	fenix-tattoo
4747	Ambition Kiss of Dragon Black	13411	NaN	NaN	NaN	3.5	NaN	NaN	NaN	NaN	NaN	NaN	Китай	NaN	NaN	fenix-tattoo
4748	Тату машинка Bishop Rotary WAND Shader 3.5 mm	67287	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	США	NaN	NaN	fenix-tattoo
4749	Ambition Sally Wireless Black	9284	NaN	3 - 4	1 - 1,5	2.0, 2.4, 2.8, 3.2, 3.5	1000	NaN	NaN	Аллюминий	12	custom coreless motor	Китай	6 месяцев	12500	fenix-tattoo
4750	EQUALISER ERGO Black	14162	NaN	NaN	NaN	3.5	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	fenix-tattoo
4751	Arena Black Queen	11855	NaN	NaN	NaN	3.5	NaN	NaN	NaN	Аллюминий	10	NaN	Китай	6 месяцев	10000	fenix-tattoo
4752	Cheyenne HAWK SOL Luna без держателя	59970	NaN	NaN	NaN	2.5	NaN	NaN	NaN	NaN	NaN	brushless DC motor	Германия	1 год	NaN	fenix-tattoo
4753	Ambition Dragon Kiss Gold	6822	NaN	3	2	3.5	900	NaN	NaN	Аллюминий	8	Coreless Motor	Китай	6 месяцев	9000	fenix-tattoo
4754	Noir Rotary Tattoo Pen Machine	6202	143	NaN	NaN	3.5	NaN	NaN	NaN	Аллюминий	NaN	NaN	Китай	6 месяцев	NaN	fenix-tattoo
4755	Lithuanian Irons Buffalo Rotary	39701	140	NaN	NaN	5.0	NaN	NaN	NaN	NaN	8,5	DC Faulhaber motor with 2 ball bearings	Литва	1 год	NaN	fenix-tattoo
4756	MT Mustang Tattoo Vader	23099	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	fenix-tattoo
4757	InkJecta Flite Nano Titan Blue Tongue	67731	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	fenix-tattoo
4758	Ambition XNET Vane Gold	15072	NaN	NaN	NaN	4.0	NaN	NaN	NaN	Аллюминий	NaN	NaN	Китай	6 месяцев	NaN	fenix-tattoo
4759	EZ P3 Pro Red Глянцевая 1 PowerBolt	13776	NaN	4,5	2	2.0, 2.4, 2.8, 3.3, 3.7, 4.2	1600	10	NaN	Аллюминий	12	EZ Coreless Motor	Китай	6 месяцев	10000	fenix-tattoo
4760	Ambition Boxster Black	11340	NaN	7	2	4.0	1650	NaN	NaN	NaN	NaN	NaN	Китай	6 месяцев	NaN	fenix-tattoo
4761	CNC Maxon Motor Machine	26833	NaN	NaN	NaN	3.2	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	fenix-tattoo
4762	FKirons Spektra Flux Max Stealth 4.5 mm 1 PowerBolt	99397	NaN	NaN	NaN	3.2, 4.0, 4.5	NaN	NaN	NaN	NaN	NaN	NaN	США	1 год	NaN	fenix-tattoo
4763	Ambition Mars-U Black	14931	217	6	2	2.2, 2.6, 3.0, 3.4, 3.8, 4.2	1800	NaN	NaN	Аллюминий	10	built-in coreless motor	Китай	6 месяцев	9000	fenix-tattoo
4764	InkJecta Flite Nano Elite Lime Green	67731	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	fenix-tattoo
4765	Bishop MAGI by Nikko Hurtado - Black Edition	48080	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	США	NaN	NaN	fenix-tattoo
4766	Skinductor Vertigo II Heavy Long Stroke	24032	NaN	NaN	NaN	4.2	NaN	NaN	NaN	NaN	NaN	NaN	Россия	NaN	NaN	fenix-tattoo
4767	Vlad Blad ULTRON PEN PMU	30001	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	fenix-tattoo
4768	Mast Nano Pink	9758	NaN	NaN	NaN	3.2	NaN	NaN	NaN	NaN	NaN	NaN	Китай	6 месяцев	9000	fenix-tattoo
4769	Inox Prime Wireless Pen Rotary Tattoo Machine	38881	NaN	8	3	4.0	NaN	NaN	NaN	NaN	4	NaN	Польша	1 год	NaN	fenix-tattoo
4770	Jconly Epoch Wireless Pen Machine	34827	267	5 - 7	4	2.4, 2.7, 3.0, 3.3, 3.6, 3.9, 4.2	2000	NaN	NaN	Аллюминий	NaN	Custom Coreless Motor	Китай	6 месяцев	NaN	fenix-tattoo
4771	Microbeau (FK Irons) Apollo SMP Rose Gold	50579	NaN	NaN	NaN	2.3	NaN	NaN	NaN	NaN	NaN	NaN	США	NaN	NaN	fenix-tattoo
4772	Mast Fold 2 Wireless	18784	215	2 - 3	1,5	2.4, 2.7, 3.0, 3.3, 3.6, 3.9, 4.2	1500	NaN	NaN	Аллюминий	8	MCore-C3	Китай	6 месяцев	6500	fenix-tattoo
4773	Bishop Rotary - V6 Graphite Black RCA 3.5 mm	39574	NaN	NaN	NaN	3.5, 4.2	NaN	NaN	NaN	NaN	NaN	NaN	США	NaN	NaN	fenix-tattoo
4774	ACUS M1 Plus	123764	207	11	3	3.0, 3.7, 4.5	1500	NaN	NaN	NaN	NaN	Безколлекторный двигатель Faulhaber	Германия	NaN	NaN	fenix-tattoo
4775	Mast Tour Amy Black	14303	NaN	2 - 3	1 - 2	4.0	750	NaN	NaN	Аллюминий	9	Mcore-C1	Китай	6 месяцев	10400	fenix-tattoo
4776	Burlak Tattoo Machines ELF	34646	NaN	NaN	NaN	3.8	NaN	NaN	NaN	Аллюминий	9	NaN	Россия	1 год	9000	fenix-tattoo
4777	Cheyenne HAWK SOL Nova NEW 2.5 mm	64969	NaN	NaN	NaN	2.5, 3.5, 4.5	NaN	NaN	NaN	NaN	NaN	Brushless DC motor	Германия	1 год	NaN	fenix-tattoo
4778	Equaliser Unicorn MAX Wireless	52737	212	NaN	NaN	4.2	NaN	NaN	NaN	NaN	NaN	бесколлекторный Equaliser	Польша	NaN	NaN	fenix-tattoo
4779	Tattoo Staff Brotherhood Direct Drive V2.0	6385	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	fenix-tattoo
4780	Mast P20 Purple	12316	NaN	NaN	NaN	2.5	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	fenix-tattoo
\.


--
-- Name: tattoo_machines_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.tattoo_machines_id_seq', 4780, true);


--
-- Name: tattoo_machines tattoo_machines_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tattoo_machines
    ADD CONSTRAINT tattoo_machines_pkey PRIMARY KEY (id);


--
-- Name: tattoo_machines unique_product; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tattoo_machines
    ADD CONSTRAINT unique_product UNIQUE (source, "Название", "Цена");


--
-- PostgreSQL database dump complete
--

