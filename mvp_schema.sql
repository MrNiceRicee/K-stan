--
-- PostgreSQL database dump
--

-- Dumped from database version 13.3
-- Dumped by pg_dump version 13.3

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
-- Name: kpop_groups; Type: TABLE; Schema: public; Owner: joshua
--

CREATE TABLE public.kpop_groups (
    id bigint NOT NULL,
    picture text,
    name character varying(255),
    short_name character varying(255),
    korean_name character varying(255),
    debut date,
    company character varying(255),
    members integer,
    og_members character varying(255),
    fanclub_name character varying(255),
    active character varying(255),
    stans integer DEFAULT 0
);


ALTER TABLE public.kpop_groups OWNER TO joshua;

--
-- Name: kpop_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: joshua
--

CREATE SEQUENCE public.kpop_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.kpop_groups_id_seq OWNER TO joshua;

--
-- Name: kpop_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: joshua
--

ALTER SEQUENCE public.kpop_groups_id_seq OWNED BY public.kpop_groups.id;


--
-- Name: kpop_idols; Type: TABLE; Schema: public; Owner: joshua
--

CREATE TABLE public.kpop_idols (
    id bigint NOT NULL,
    picture text,
    stage_name character varying(255),
    name character varying(255),
    korean_name character varying(255),
    korean_stage_name character varying(255),
    dob date,
    "group" character varying(255),
    country character varying(255),
    second_country character varying(255),
    height integer,
    weight integer,
    birthplace character varying(255),
    other_group character varying(255),
    former_group character varying(255),
    gender character varying(255),
    "position" character varying(255),
    instagram character varying(255),
    twitter character varying(255),
    group_id integer,
    bias integer DEFAULT 0,
    bias_wrecker integer DEFAULT 0
);


ALTER TABLE public.kpop_idols OWNER TO joshua;

--
-- Name: kpop_idols_id_seq; Type: SEQUENCE; Schema: public; Owner: joshua
--

CREATE SEQUENCE public.kpop_idols_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.kpop_idols_id_seq OWNER TO joshua;

--
-- Name: kpop_idols_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: joshua
--

ALTER SEQUENCE public.kpop_idols_id_seq OWNED BY public.kpop_idols.id;


--
-- Name: kpop_groups id; Type: DEFAULT; Schema: public; Owner: joshua
--

ALTER TABLE ONLY public.kpop_groups ALTER COLUMN id SET DEFAULT nextval('public.kpop_groups_id_seq'::regclass);


--
-- Name: kpop_idols id; Type: DEFAULT; Schema: public; Owner: joshua
--

ALTER TABLE ONLY public.kpop_idols ALTER COLUMN id SET DEFAULT nextval('public.kpop_idols_id_seq'::regclass);


--
-- Data for Name: kpop_groups; Type: TABLE DATA; Schema: public; Owner: joshua
--

COPY public.kpop_groups (id, picture, name, short_name, korean_name, debut, company, members, og_members, fanclub_name, active, stans) FROM stdin;
2	\N	KARA	\N	카라	2007-03-29	DSP	4	5	Kamilia	No	0
6	\N	4Minute	\N	포미닛	2009-06-15	Cube	5	5	4nia	No	0
8	\N	Brown Eyed Girls	B.E.G.	브라운 아이드 걸스	2006-03-02	Mystic	4	4	Everlasting	Yes	0
15	\N	miss A	\N	미쓰에이	2010-07-01	JYP	3	4	Say A	No	0
17	\N	Crayon Pop	\N	크레용팝	2012-07-17	Chrome	4	5	\N	No	0
18	\N	D-Unit	\N	디유닛	2012-08-01	D-Business	2	3	Unique	No	0
19	\N	D.Holic	\N	디홀릭	2014-10-29	H.Mate	4	5	\N	No	0
20	\N	Davichi	\N	다비치	2008-02-04	CJ E&M	2	2	\N	Yes	0
21	\N	BESTie	\N	베스티	2013-07-11	YNB	4	4	BESTiny	No	0
26	\N	Blady	\N	블레이디	2011-05-16	Star Planet	5	4	Hi ade	No	0
27	\N	Bob Girls	\N	단발머리	2014-06-10	Chrome	4	4	\N	No	0
28	\N	C-REAL	\N	씨리얼	2011-10-11	NAP	3	5	\N	No	0
29	\N	ChoColat	\N	쇼콜라	2011-08-16	Paramount	5	5	Chocolatier	No	0
30	\N	Badkiz	\N	배드키즈	2014-03-24	Zoo	5	5	\N	No	0
31	\N	4TEN	\N	포텐	2014-08-26	Jungle	4	4	\N	No	0
32	\N	15&	\N	피프틴앤드	2012-10-05	JYP	2	2	\N	No	0
34	\N	EvoL	\N	이블	2012-08-10	Stardom	5	5	Voller	No	0
36	\N	f(x)	\N	에프엑스	2009-08-24	SM	4	5	MeU	No	0
38	\N	Rainbow	\N	레인보우	2010-08-12	DSP	7	7	\N	No	0
40	\N	Tahiti	\N	타히티	2012-06-23	J-line	5	6	\N	No	0
41	\N	Fiestar	\N	피에스타	2012-08-31	LOEN	5	6	Let's	No	0
43	\N	Ladies' Code	LC	레이디스 코드	2013-03-07	Polaris	3	5	Lavely	Hiatus	0
46	\N	Wassup	\N	와썹	2013-08-07	Mafia	7	7	\N	No	0
49	\N	Unicorn	\N	유니콘	2015-09-03	Cartoon Blue	4	5	\N	No	0
52	\N	F-ve Dolls	5Dolls	파이브돌스	2011-01-20	MBK	6	5	\N	No	0
53	\N	GI	Global Icon	지아이	2013-04-03	Simtong	3	5	\N	No	0
54	\N	GLAM	\N	글램	2012-07-16	Big Hit	4	4	\N	No	0
55	\N	GP Basic	\N	지피 베이직	2011-03-18	Jacyhan	4	6	Spade	No	0
56	\N	Jewelry	\N	쥬얼리	2001-03-30	Star Empire	4	4	\N	No	0
57	\N	Baby V.O.X	\N	베이비복스	1997-07-05	DR Music	5	5	\N	No	0
60	\N	Minx	\N	밍스	2014-09-18	Happy Face	5	5	\N	No	0
61	\N	Pungdeng-E	\N	풍뎅이	2013-12-11	DOMA	3	3	\N	Yes	0
62	\N	Tiny-G	\N	타이니지	2012-08-23	GNG	3	4	\N	No	0
63	\N	Two X	\N	투엑스	2012-08-20	J. Tune	4	5	\N	No	0
67	\N	Rania	\N	라니아	2011-04-06	DR	5	8	\N	No	0
68	\N	Rubber Soul	\N	러버소울	2015-02-10	Happy Tribe	2	3	\N	Yes	0
69	\N	Playback	\N	플레이백	2015-06-25	Coridel	5	4	\N	Yes	0
70	\N	SPICA	\N	스피카	2012-02-07	CJ E&M	5	5	Mercury	No	0
71	\N	Sunny Hill	\N	써니힐	2007-09-20	Nega	4	5	\N	No	0
7	https://dbkpop.com/wp-content/uploads/2020/04/apink_look_concept_profile.jpg	Apink	\N	에이핑크	2011-04-19	Plan A	6	7	Pink Panda	Yes	0
42	https://dbkpop.com/wp-content/uploads/2017/01/hello_venus.jpg	Hello Venus	HV	헬로비너스	2012-05-09	Fantagio	6	6	Hello Cupid	No	0
23	https://dbkpop.com/wp-content/uploads/2017/01/clc_profile_helicopter.jpg	CLC	\N	씨엘씨	2015-03-19	Cube	7	5	Chesire	Yes	0
44	https://dbkpop.com/wp-content/uploads/2016/11/laboum_summer_special_all_profile.jpg	Laboum	\N	라붐	2014-08-27	NH	5	6	Latte	Yes	0
48	https://dbkpop.com/wp-content/uploads/2020/11/gfriend_members_profile_walpurgis_night.jpg	Gfriend	\N	여자친구	2015-01-15	Source	6	6	Buddy	Yes	0
50	https://dbkpop.com/wp-content/uploads/2020/07/berry_good_profile.jpg	Berry Good	\N	베리굿	2014-05-21	Asia Bridge	6	5	\N	No	0
65	https://dbkpop.com/wp-content/uploads/2017/01/secret_1.jpg	SECRET	\N	시크릿	2009-10-13	TS	3	4	Secret Time	No	0
33	https://dbkpop.com/wp-content/uploads/2020/06/dia_flower_4_seasons_concept_hd_all_group_profile.jpg	DIA	\N	다이아	2015-07-14	MBK	7	7	AID	Yes	0
73	https://dbkpop.com/wp-content/uploads/2016/12/bonus_baby_1.jpg	Bonus Baby	\N	보너스베이비	2017-01-01	Maroo	6	6	\N	No	0
25	https://dbkpop.com/wp-content/uploads/2017/10/brave_girls_members_summer_queen.jpg	Brave Girls	\N	브레이브걸스	2011-04-08	Brave	4	5	\N	Yes	0
13	https://dbkpop.com/wp-content/uploads/2016/12/girls_day_everyday5-e1526987033397.jpg	Girl's Day	GsD	걸스데이	2010-07-07	DreamT	4	5	Dai5y	Hiatus	0
10	https://dbkpop.com/wp-content/uploads/2019/11/aoa_new_moon_concept_all_group_profile.jpg	AOA	\N	에이오에이	2012-07-30	FNC	4	8	ELVIS	Yes	0
16	https://dbkpop.com/wp-content/uploads/2017/10/9muses_profile_group.jpg	9Muses	Nine Muses	나인뮤지스	2010-08-12	Star Empire	4	9	MINE	No	0
72	https://dbkpop.com/wp-content/uploads/2016/11/momoland_starry_night_concept_all_group_wide.jpg	Momoland	\N	모모랜드	2016-11-09	Double Kick	6	7	\N	Yes	0
14	https://dbkpop.com/wp-content/uploads/2016/12/wonder_girls_1.jpg	Wonder Girls	WG	원더걸스	2007-02-13	JYP	4	5	Wonderful	No	0
37	https://dbkpop.com/wp-content/uploads/2020/07/red_velvet_finale_members_profile.jpg	Red Velvet	RV	레드벨벳	2014-08-01	SM	5	4	\N	Yes	0
11	https://dbkpop.com/wp-content/uploads/2017/02/dalshabet_1_fri_sat_sun.jpg	Dal Shabet	\N	달샤벳	2011-01-03	Happy Face	4	6	Darling	Hiatus	0
4	https://dbkpop.com/wp-content/uploads/2016/11/t-ara_tiamo.jpg	T-ara	\N	티아라	2009-07-29	MBK	4	6	QUEEN'S	Hiatus	0
47	https://dbkpop.com/wp-content/uploads/2017/11/gugudan_chococo_factory_all.jpg	Gugudan	\N	구구단	2016-06-28	Jellyfish	8	9	\N	No	0
12	https://dbkpop.com/wp-content/uploads/2018/04/exid_I_Love_You_profile.jpg	EXID	\N	이엑스아이디	2012-02-16	Yedang	5	6	LEGO	Yes	0
3	https://images.squarespace-cdn.com/content/v1/56eb012f27d4bd29de975fae/1542874011033-N1MZKE6ITTO2P0JY2LH9/HIST_2NE1_HEADER.jpg	2NE1	\N	투애니원	2009-05-06	YG	4	4	Blackjack	No	0
39	https://dbkpop.com/wp-content/uploads/2016/11/Twice_members_Eyes_wide_open_story.jpg	TWICE	\N	트와이스	2015-10-20	JYP	9	9	Once	Yes	3
51	\N	BLACKPINK	\N	블랙핑크	2016-08-08	YG	4	4	\N	Yes	6
74	\N	myB	\N	마이비	2015-08-25	Maroo	6	6	\N	No	0
75	\N	S.E.S	\N	에스.이.에스	1997-11-01	SM	3	3	\N	No	0
76	\N	The Grace	CSJH	천상지희	2005-04-29	SM	3	4	\N	No	0
77	\N	Mixx	\N	믹스	2016-05-02	Chiko	5	4	\N	No	0
81	\N	S.I.S	\N	에스아이에스	2017-08-25	Double X	6	6	\N	Yes	0
83	\N	ELRIS	\N	엘리스	2017-07-01	Hunus	7	5	\N	Yes	0
84	\N	Favorite	\N	페이버릿	2017-07-05	Astory	6	6	\N	Yes	0
85	\N	Good Day	\N	굿데이	2017-08-30	C9	10	10	\N	No	0
86	\N	P.O.P	\N	피오피	2017-07-26	DWM	6	6	\N	No	0
87	\N	G-reyish	Greyish	그레이시	2017-06-01	Elijah	4	4	\N	Yes	0
88	\N	CoCoSoRi	\N	코코소리	2016-01-05	MOLE	2	2	\N	No	0
90	\N	Bloomy	\N	블루미	2016-02-01	DS	4	4	\N	Yes	0
91	\N	Bulldok	\N	불독	2016-10-20	Kconic	5	3	\N	No	0
92	\N	Highteen	\N	하이틴	2016-10-14	Elijah	4	4	\N	Yes	0
93	\N	Matilda	\N	마틸다	2016-03-18	Box	4	4	\N	No	0
94	\N	Dorothy	\N	도로시	2016-08-16	Leek Mill	3	5	\N	No	0
95	\N	OhBliss	\N	오블리스	2016-10-17	JT Corea	5	5	\N	Yes	0
96	\N	Girls Girls	\N	여자여자	2015-12-09	H Brothers	4	5	\N	No	0
97	\N	O21	\N	오투원	2016-06-21	Houxiu	3	6	\N	No	0
98	\N	Apple.B	\N	애플비	2017-08-01	GH	5	5	\N	No	0
99	\N	H.U.B	HUB	허브	2017-02-09	New Planet	5	4	\N	No	0
101	\N	LipBubble	\N	립버블	2017-03-22	Zenith	7	7	\N	No	0
102	\N	Marmello	\N	마르멜로	2017-05-24	Rolling	5	5	\N	No	0
111	\N	We Girls	\N	위걸스	2018-08-31	Afternoon	8	8	\N	Yes	0
112	\N	Gawi Bawi Bo	GBB	지비비	2018-05-01	LOUDers	5	5	\N	Yes	0
115	\N	Cherry On Top	\N	체리온탑	2018-08-09	United	4	4	\N	No	0
117	\N	FLAVOR	\N	플레이버	2018-11-26	FENT	3	3	\N	Yes	0
119	\N	Heygirls	\N	헤이걸스	2017-11-20	Moai	4	4	\N	Yes	0
120	\N	ABRY	\N	에이브리	2017-11-15	withHC	4	4	\N	Yes	0
121	\N	Rose Finger	\N	로즈핑거	2018-10-03	YC:Bros	4	4	\N	No	0
122	\N	Destiny	\N	데스티니	2018-09-28	D-SIDE	4	4	\N	Yes	0
124	\N	Kitten Girls	\N	키튼걸스	2018-09-04	Wannabe	4	4	\N	No	0
125	\N	Camila	\N	카밀라	2018-08-29	Camila	3	3	\N	No	0
126	\N	Sha Sha	\N	샤샤	2018-02-27	Major Ent	6	6	\N	No	0
127	\N	AiRiSu	\N	아이리수	2018-07-25	Jang	4	4	\N	No	0
128	\N	Yellow Bee	\N	옐로비	2017-11-23	Addiction	5	5	\N	No	0
129	\N	Wable	\N	와블	2016-02-17	Kiwi	2	2	\N	Yes	0
130	\N	Busters	\N	버스터즈	2017-11-27	JTG	5	5	Bu-Chu	Yes	0
131	\N	KHAN	\N	칸	2018-05-23	Maroo	2	2	\N	No	0
132	\N	GsA	Girls' Alert	소녀주의보	2017-05-25	Roots	5	5	\N	Yes	0
133	\N	Hi Cutie	\N	하이큐티	2017-10-12	Space	4	5	\N	Yes	0
134	\N	Gavy NJ	\N	가비엔제이	2005-11-11	Good Fellas	3	3	\N	Yes	0
135	\N	I.C.E	\N	아이스	2015-11-16	HS	3	4	\N	Yes	0
136	\N	Wanna.B	\N	워너비	2014-11-17	Zenith	5	4	Ru.B	No	0
137	\N	Hint	\N	힌트	2017-03-31	Starpro	5	7	\N	Yes	0
138	\N	2EYES	\N	투아이즈	2013-07-20	SidusHQ	4	5	\N	No	0
139	\N	GeeGu	\N	지구	2017-10-26	NOS	7	9	\N	No	0
140	\N	A.DE	\N	에이디이	2016-07-23	2ABLE	6	7	\N	No	0
223		Imfact		임팩트	2016-01-27	Star Empire	5	5		Yes	0
123	https://dbkpop.com/wp-content/uploads/2019/01/purplebeck_crystal_ball_profile.jpg	PURPLEBECK	\N	퍼플백	2019-06-24	Majesty	5	5	Beckies	Yes	0
105	https://dbkpop.com/wp-content/uploads/2018/03/girlkind_fanxi_1.jpg	Girlkind	\N	걸카인드	2018-01-16	Nextlevel	5	5	\N	Yes	0
145	https://dbkpop.com/wp-content/uploads/2020/02/episode_open_my_door_members_sm.jpg	Episode	\N	에피소드	2020-02-04	Pops	5	5	\N	Yes	0
142	https://dbkpop.com/wp-content/uploads/2019/06/lusty_im_thirsty_profile.jpg	Lusty	\N	러스티	2019-06-26	babaplay	5	5	\N	Yes	0
114	https://dbkpop.com/wp-content/uploads/2020/07/dreamnote_dream_wish_profile.jpg	Dreamnote	\N	드림노트	2018-11-07	iME	6	8	\N	Yes	0
104	https://dbkpop.com/wp-content/uploads/2018/03/honey_popcorn_all_profile.jpg	Honey Popcorn	\N	허니팝콘	2018-03-21	Kyun Create	3	3	\N	Yes	0
144	https://dbkpop.com/wp-content/uploads/2019/04/bvndit_carnival_concept_profile.jpg	BVNDIT	\N	밴디트	2019-04-10	MNH	5	5	\N	Yes	0
146	https://dbkpop.com/wp-content/uploads/2020/01/cignature_members_arisong.jpg	cignature	\N	시그니처	2020-02-04	C9	7	7	\N	Yes	0
113	https://dbkpop.com/wp-content/uploads/2018/12/cherry_bullet_profile.jpg	Cherry Bullet	\N	체리블렛	2019-01-21	FNC	7	10	\N	Yes	0
108	https://dbkpop.com/wp-content/uploads/2019/11/izone_bloom_iz_i_will_group.jpg	IZ*ONE	IZONE	아이즈원	2018-10-29	Off The Record	12	12	\N	Yes	0
82	https://dbkpop.com/wp-content/uploads/2020/06/weki_meki_hide_and_seek_teaser_hide_all_group.jpg	Weki Meki	WeMe	위키미키	2017-08-08	Fantagio	8	8	\N	Yes	0
109	https://dbkpop.com/wp-content/uploads/2019/06/nature_nature_world_code_m_concept_profile.jpg	Nature	\N	네이처	2018-08-03	n.CH	9	9	\N	Yes	0
143	https://dbkpop.com/wp-content/uploads/2019/03/Everglow_Members_Profile_77.82X_78.29_La_Di_Da.jpg	Everglow	\N	에버글로우	2019-03-18	Yuehua	6	6	\N	Yes	0
80	https://dbkpop.com/wp-content/uploads/2017/01/dreamcatcher_dystopia_lose_myself_profile.jpg	DreamCatcher	\N	드림캐쳐	2017-01-13	Happy Face	7	7	\N	Yes	0
141	https://dbkpop.com/wp-content/uploads/2019/01/itzy_guess_who_members.jpg	ITZY	\N	있지	2019-02-12	JYP	5	5	Mitzy	Yes	0
79	https://dbkpop.com/wp-content/uploads/2017/01/pristin_we_like.jpg	Pristin	\N	프리스틴	2017-03-21	Pledis	10	10	\N	No	0
100	https://dbkpop.com/wp-content/uploads/2017/10/hashtag_profile_group.jpg	Hash Tag	Hashtag	해시태그	2017-10-11	LUK	7	7	\N	Yes	0
103		fromis_9	\N	프로미스나인	2018-01-24	Off The Record	9	9	\N	Yes	0
106	https://dbkpop.com/wp-content/uploads/2018/04/GI-DLE_Dumdi_Dumdi_Members.jpg	(G)I-DLE	\N	(여자)아이들	2018-05-02	Cube	6	6	\N	Yes	1
152	\N	HighSchool	\N	여고생	2019-04-30	Richworld	4	4	High Class	Yes	0
155	\N	KEEMBO	\N	킴보	2020-04-10	ARA-LINE	2	2	\N	Yes	0
159	\N	API	\N	에이피아이	2019-04-19	BRICKWORKS	5	5	\N	Yes	0
160	\N	FANATICS	\N	파나틱스	2019-08-06	FENT	8	6	\N	Yes	0
161	\N	ILUV	I LUV	아이러브	2019-04-30	WKS ENE	7	7	\N	No	0
162	\N	Melody Pink	\N	멜로디핑크	2019-09-25	KD	4	4	\N	Yes	0
164	\N	ICU	\N	아이씨유	2019-10-22	Liz	5	5	\N	Yes	0
172	\N	BlackSwan	\N	블랙스완	2020-10-16	DR	5	5	\N	Yes	0
173	\N	BOTOPASS	\N	보토패스	2020-08-26	WKS ENE	8	8	\N	Yes	0
175	\N	aespa	æspa	에스파	2020-11-17	SM	4	4	My	Yes	0
176	\N	AREAL	\N	에이리얼	2020-08-21	JZ Factory	4	4	\N	Yes	0
180	\N	MAJORS	\N	메이져스	2021-03-09	ANS	6	6	\N	Yes	0
181	\N	PRISMA	\N	프리즈마	2020-10-31	UnionWave	5	5	\N	Yes	0
183		BIGBANG		빅뱅	2006-08-19	YG	4	5	VIP	Yes	0
185		TVXQ!	TVXQ	동방신기	2003-12-26	SM	2	5	Cassiopeia	Yes	0
188		Infinite		인피니트	2010-06-09	Woollim	6	7	Inspirit	Yes	0
190		U-KISS		유키스	2008-08-28	NH Media	6	6	Kissme	Yes	0
192		Highlight	Beast	하이라이트	2009-10-14	Around Us	4	6	B2uty	Yes	0
193		MBLAQ		엠블랙	2009-10-14	J. Tune	3	5	A+	Yes	0
197		ZE:A		제국의 아이들	2010-01-07	Star Empire	9	9	ZE:A Style	Hiatus	0
199		MYNAME		마이네임	2011-10-27	H2	5	5	MYgirl	Yes	0
201		2AM		투에이엠	2008-06-21	JYP, Big Hit	4	4	I Am	No	0
202		2PM		투피엠	2008-07-04	JYP	6	7	Hottest	Yes	0
204		Boyfriend		보이프렌드	2011-05-26	Starship	6	6	Bestfriend	No	0
205		24K		투포케이	2012-09-06	Choeun	5	6	24U	Yes	0
206		100%		백퍼센트	2012-09-18	TOP Media	4	7	Perfection	Yes	0
207		Teen Top		틴탑	2010-07-09	TOP Media	5	6	Angel	Yes	0
208		CNBLUE		씨엔블루	2010-01-14	FNC	4	4	Boice	Yes	0
209		FTISLAND		에프티 아일랜드	2007-06-07	FNC	4	5	Primadonna	Yes	0
210		N.Flying		엔플라잉	2015-05-20	FNC	4	4	N.Fia	Yes	0
211		Fly to the Sky		플라이 투 더 스카이	1999-11-21	SM, H2	2	2	Fly High	Yes	0
212		g.o.d.		지오디	1999-01-26	JYP, SidusHQ	5	5	Fan God	Yes	0
213		H.O.T		에이치오티	1996-09-07	SM	5	5	Club H.O.T	No	0
214		HISTORY		히스토리	2013-04-26	LOEN	5	5	Storia	No	0
215		Homme		옴므	2010-06-28	Big Hit	2	2		No	0
216		8Eight		에이트	2007-09-06	Big Hit	3	3	Sweet Voice	No	0
217		CROSS GENE		크로스진	2012-07-08	Amuse	5	6	Chromosome	Yes	0
218		DAY6		데이식스	2015-09-07	JYP	5	6		Yes	0
219		Dalmatian	DMTN	달마시안	2010-09-01	Monkey Funch	7	7	Dalmate	No	0
220		C-Clown		씨클라운	2012-06-19	Yedang	6	6	Crown	No	0
169	https://dbkpop.com/wp-content/uploads/2017/10/neonpunch_profile.jpg	NeonPunch	\N	네온펀치	2018-06-27	A100	5	5	\N	No	0
163	https://dbkpop.com/wp-content/uploads/2019/07/rocket_punch_red_punch_concept_all_group_profile.jpg	Rocket Punch	\N	로켓펀치	2019-08-07	Woollim	6	6	\N	Yes	0
153	https://dbkpop.com/wp-content/uploads/2020/06/weeekly_we_are_teaser_2_all_group.jpg	Weeekly	\N	위클리	2020-07-30	Play M	7	7	\N	Yes	0
166	https://dbkpop.com/wp-content/uploads/2020/10/stayc_members_Staydom.jpg	STAYC	\N	스테이씨	2020-11-12	Hi-Up	6	6	\N	Yes	0
171	https://dbkpop.com/wp-content/uploads/2020/07/blastar_one_way_profile.jpg	Blastar	\N	블레스타	2020-07-31	VH	5	5	\N	No	0
157	https://dbkpop.com/wp-content/uploads/2020/05/secret_Number_who_dis_profile.jpg	SECRET NUMBER	\N	시크릿넘버	2020-05-19	Vine	5	5	\N	Yes	0
158	https://dbkpop.com/wp-content/uploads/2020/05/woo_ah_wish_members.jpg	woo!ah!	\N	우아	2020-05-15	NV	5	6	\N	Yes	0
167	https://dbkpop.com/wp-content/uploads/2020/09/precious_members_profile_bebe.jpg	Precious	PRCS	프레셔스	2020-09-23	Umi	5	5	\N	Yes	0
179	https://dbkpop.com/wp-content/uploads/2020/07/purple_kiss_members_profile-1.jpg	Purple Kiss	\N	퍼플키스	2021-03-15	RBW	7	7	\N	Yes	0
165	https://dbkpop.com/wp-content/uploads/2020/10/bling_bling_profile.jpg	Bling Bling	\N	블링블링	2020-11-17	Major9	6	6	\N	Yes	0
203	https://dbkpop.com/wp-content/uploads/2018/06/btob_this_is_us_all_profile.jpg	BtoB		비투비	2012-03-21	Cube	7	7	Melody	Yes	0
174	https://dbkpop.com/wp-content/uploads/2021/03/lunarsolar_members.jpg	LUNARSOLAR	\N	루나솔라	2020-09-02	J Planet	4	4	Haedal	Yes	0
187	https://dbkpop.com/wp-content/uploads/2019/04/exo_love_shot_3.jpg	EXO		엑소	2012-04-08	SM	9	12	EXO-L	Yes	0
196	https://dbkpop.com/wp-content/uploads/2018/04/vixx_eau_de_vixx_all_profile.jpg	VIXX		빅스	2012-05-24	Jellyfish	5	6	Starlight	Yes	0
151	https://dbkpop.com/wp-content/uploads/2019/08/ans_2019_8_member_profile.jpg	ANS	\N	에이엔에스	2019-09-16	ANS	8	6	\N	No	0
150	https://dbkpop.com/wp-content/uploads/2019/09/ariaz_debut_concept_all.jpg	Ariaz	\N	아리아즈	2019-10-23	Rising Star	6	6	\N	Yes	0
184	https://dbkpop.com/wp-content/uploads/2020/01/super_junior_timeless_teaser_all_1.jpg	Super Junior	SJ	슈퍼주니어	2005-11-06	SM	11	12	ELF	Yes	0
195	https://dbkpop.com/wp-content/uploads/2018/04/bap_hands_up_all_profile.jpg	B.A.P	BAP	비에이피	2012-01-27	TS	6	6	BABY	No	0
200	https://dbkpop.com/wp-content/uploads/2017/10/got7_7_for_7_all_profile.jpg	GOT7		갓세븐	2014-01-16	JYP	7	7	I GOT7	Yes	0
177	https://dbkpop.com/wp-content/uploads/2021/01/tri-be_members_conmigo.jpg	TRI.BE	\N	트라이비	2021-02-17	TR - Mellow	7	7	\N	Yes	0
194	https://dbkpop.com/wp-content/uploads/2016/11/b1a4_members_profile_a_day_of_love.jpg	B1A4		비원에이포	2010-04-19	WM	5	5	BANA	Yes	0
222	https://dbkpop.com/wp-content/uploads/2020/02/ikon_i_DECIDE_concept_all_group.jpg	iKON		아이콘	2015-09-15	YG	6	7	iKONIC	Yes	0
224		JJCC		제이제이씨씨	2014-03-13	Jackie Chan Group	5	6		No	0
225		JYJ		제이와이제이	2010-09-08	C-JeS	3	3	Cassiopeia	Yes	0
227		K-Much		케이머치	2014-01-07	Chrome	4	5		No	0
228		MR.MR		미스터미스터	2012-10-04	WinningIn	6	5		Yes	0
229		N-Sonic		엔소닉	2011-10-05	C2K	6	5		No	0
230		N-Train		엔트레인	2011-05-27	MediaLine	5	5		No	0
233		Phantom		팬텀	2011-11-25	Brand New, RBW	3	3		No	0
235		ROMEO		로미오	2015-11-04	CT	7	7		Yes	0
236		SECHSKIES	6KIES	젝스키스	1997-04-15	DSP, YG	5	6	Yellowkies	Yes	0
238		AlphaBat		알파벳	2013-11-14	Simtong	5	9		Yes	0
239		A-JAX		에이젝스	2012-06-01	DSP	5	7	A-LIGHT	No	0
240		ASTRO		아스트로	2016-02-23	Fantagio	6	6	AROHA	Yes	0
241		Shinhwa		신화	1998-03-24	SM, Good, Shinhwa	6	6	Shinhwa Changjo	Yes	0
242		Snuper		스누퍼	2015-11-16	Widmay	6	6	Swing	Yes	0
243		SS501		더블에스오공일	2005-06-08	DSP, CI	5	5	Triple S	No	0
244		Supernova		초신성	2007-09-21	CJ E&M	5	6		Yes	0
245		ToppDogg		탑독	2013-10-22	Stardom, Hunus	5	13	ToppKlass	No	0
246		Turbo		터보	1995-09-06	MBK, Turbo Co.	3	2		Hiatus	0
247		UP10TION		업텐션	2015-09-11	TOP Media	10	10	HONEY10	Yes	0
249		VROMANCE		브로맨스	2016-06-12	RBW	4	4		Yes	0
250		UNIQ		유니크	2014-10-20	Yuehua	5	5	Unicorn	Yes	0
251		Boys Republic		소년공화국	2013-06-03	Happy Tribe, Universal	5	5	Royal Family	Hiatus	0
252		TRAX		트랙스	2004-07-20	SM	2	4		No	0
253		TST	Top Secret	일급비밀	2017-01-04	JSL	5	7		Yes	0
256		Wanna One		워너원	2017-08-07	YMC	11	11	Wannable	No	0
257		Seven O'Clock	SOC	세븐어클락	2017-03-16	Staro, KDH	5	6		No	0
259		Myteen		마이틴	2017-07-26	The Music Works	6	7		No	0
261		Blanc7		블랑세븐	2017-03-03	Jackpot	7	7	Prism	No	0
262		Masc		마스크	2016-08-19	JJ Holic	4	8		Yes	0
263		VOISPER		보이스퍼	2016-02-23	Evermore	4	4		Yes	0
264		14U		원포유	2017-04-17	BG	14	14		No	0
265		A.C.E	ACE	에이스	2017-05-23	Beat	5	5	Choice	Yes	0
266		B.Heart		비하트	2017-01-25	Poong	4	4		Yes	0
267		Be.A		비에이	2017-05-25	Chrome	3	5		Yes	0
268		BLACK6IX		블랙식스	2017-04-07	BLACK HOLE	6	6		Yes	0
269		Honeyst		허니스트	2017-05-17	FNC	4	4		Yes	0
270		MVP		엠브이피	2017-03-13	PH	7	7		Yes	0
272		VERMUDA		버뮤다	2017-07-13	JJJ	5	5		Yes	0
273		Varsity		바시티	2017-01-05	GKC	12	12		Yes	0
276		RAINZ		레인즈	2017-10-12	(Genie)	7	7	Rainzer	No	0
277		MXM		엠엑스엠	2017-09-06	Brand New	2	2		Yes	0
278		Target		타겟	2018-01-23	TNS	7	7		Yes	0
280		Noir		느와르	2018-04-09	LUK	9	9		Yes	0
281		UNB		유앤비	2018-04-07	Unit Culture	9	9		No	0
282		NTB		엔티비	2018-05-28	High Choice	6	6		Yes	0
284		LU:KUS		루커스	2014-07-04	JWK	4	5		Yes	0
287		Mfect	M.fect	엠펙트	2015-04-27	Midas	5	5		Yes	0
289		Hotshot		핫샷	2014-10-29	Star Crew	5	6		No	0
290		THE MAN BLK		더 맨 블랙	2018-11-15	Stardium	10	10		Yes	0
291		D-Crunch		디크런치	2018-08-06	All-S	9	9		Yes	0
292		Spectrum		스펙트럼	2018-05-09	WYNN	6	7		No	0
293		JBJ95		제이비제이95	2018-10-30	Hunus	2	2		Yes	0
295		SG Wannabe		SG 워너비	2004-01-20	B2M	3	4		Yes	0
296		Lucente		루첸트	2018-09-18	NOGA	7	7		Yes	0
297		GreatGuys		멋진녀석들	2017-08-25	DNA	9	9	Grace	Yes	0
298		Bigflo		빅플로	2014-07-19	HO	5	5		Yes	0
300		The Eastlight		더 이스트라이트	2016-11-03	MediaLine	6	6		No	0
301		IZ		아이즈	2017-08-31	Music K	4	4		Yes	0
288	https://dbkpop.com/wp-content/uploads/2019/01/mont_going_up_profile.jpg	M.O.N.T	MONT	몬트	2019-01-04	FM	3	3		Yes	0
260	https://dbkpop.com/wp-content/uploads/2020/07/onf_my_name_members_profile.jpg	ONF		온앤오프	2017-08-02	WM	6	7		Yes	0
254	https://dbkpop.com/wp-content/uploads/2017/02/big_4.jpg	B.I.G		비아이지	2014-07-09	GH	5	5		Yes	0
294	https://dbkpop.com/wp-content/uploads/2019/07/vav_give_me_more_profile.jpg	VAV		브이에이브이	2015-10-31	A team	7	6		Yes	0
226	https://dbkpop.com/wp-content/uploads/2019/07/KNK_SS_Collection_profile.jpg	KNK		크나큰	2016-03-03	YNB	5	5	Tinker Bell	Yes	0
299	https://dbkpop.com/wp-content/uploads/2019/07/in2it_into_the_night_fever_1.jpg	IN2IT		인투잇	2017-10-26	MMO	7	8		Yes	0
237	https://dbkpop.com/wp-content/uploads/2016/12/seventeen_members_semicolon.jpg	Seventeen	SVT	세븐틴	2015-05-26	Pledis	13	13	Carat	Yes	0
255	https://dbkpop.com/wp-content/uploads/2017/02/sf9_9lory_US_concept_all_group.jpg	SF9		에스에프나인	2016-10-05	FNC	9	9	Fantasy	Yes	0
286	https://dbkpop.com/wp-content/uploads/2020/07/verivery_face_you_concept_all_group_profile.jpg	Verivery	VRVR	베리베리	2019-09-01	Jellyfish	7	7		Yes	0
271	https://dbkpop.com/wp-content/uploads/2018/01/trcng_who_am_i.jpg	TRCNG		티알씨엔지	2017-10-10	TS	10	10		Yes	0
279	https://dbkpop.com/wp-content/uploads/2018/04/Stray_Kids_Profile_IN_Life_Back_Door.jpg	Stray Kids	SKZ	스트레이 키즈	2018-03-26	JYP	9	9		Yes	0
274	https://dbkpop.com/wp-content/uploads/2018/01/jbj_true_colors_profile.jpg	JBJ		제이비제이	2017-10-18	Fave	6	6		No	0
275	https://dbkpop.com/wp-content/uploads/2018/04/The_Boyz_profile_Chase.jpg	The Boyz		더보이즈	2017-12-31	Cre.Ker	12	12		Yes	0
234	https://dbkpop.com/wp-content/uploads/2016/12/pentagon_members_we_th.jpg	PENTAGON	PTG	펜타곤	2016-10-10	Cube	9	10		Yes	0
302		HALO		헤일로	2014-07-26	Histar	6	6		Yes	0
303		BLK		비엘케이	2017-11-28	Byking	7	7		No	0
304		MAP6		맵식스	2015-11-10	DreamT	5	5		Yes	0
305		H.B.Y	Hot Blood Youth	열혈남아	2017-08-16	Rainbow	5	5		Yes	0
306		INX		인엑스	2016-08-02	NA	5	5		No	0
307		Beatwin		비트윈	2014-01-06	Elen	2	6		Hiatus	0
308		Madtown		매드타운	2014-10-06	GNI	7	7		No	0
309		Road Boyz		로드 보이즈	2015-11-17	Coconut	5	5		No	0
310		A.cian		에이션	2012-10-10	Wings	4	5		No	0
311		The Legend		전설	2014-07-09	SS	5	5		No	0
312		HIGH4		하이포	2014-04-08	NAP	4	4		No	0
313		BIGSTAR		빅스타	2012-07-12	Brave	5	5		No	0
314		Speed		스피드	2013-01-15	MBK	7	7		No	0
315		A6P		에이식스피	2015-05-20	DS	6	6		No	0
316		M.I.B		엠아이비	2011-10-26	Jungle	4	4		No	0
330		2Z	Tuzi	투지	2020-01-14	Morph	5	5		Yes	0
331		B.O.Y		비오브유	2020-01-20	Music Works	2	2		Yes	0
332		D.COY		디코이	2020-02-19	Rolling	5	5		Yes	0
333		Dustin		더스틴	2020-01-06	LPA	7	7	The Sten	Yes	0
334		OnlyOneOf		온리원오브	2019-05-28	RSVP	7	7		Yes	0
335		E'LAST		엘라스트	2020-06-09	E Entertainment	8	8		Yes	0
336		F.able		페이블	2020-06-04	Haerium	5	5		Yes	0
338		MY.st		마이스트	2020-03-26	MYStar	5	5		Yes	0
339		OFF THE CUFF		오프더커프	2020-04-02	Purple	5	5		Yes	0
342		XENEX		제넥스	2020-02-26	GiEok	5	5		Yes	0
343		1TEAM		원팀	2019-03-27	LiveWorks	5	5		No	0
344		ARGON		아르곤	2019-03-11	MSH	6	6	A-Rang	Yes	0
345		AWEEK		어위크	2019-01-31	Illusion	7	7		Yes	0
346		D1CE		디원스	2019-08-01	Happyface	5	5	Don1y	Yes	0
347		DONGKIZ		동키즈	2019-04-24	Dongyo	5	5		Yes	0
348		N.CUS		엔쿠스	2019-08-27	Kyuri	12	12		Yes	0
349		TREI		트레이	2019-02-19	Banana	3	3		No	0
350		VANNER		배너	2019-02-14	VT	5	5		Yes	0
356		BAE173		비에이이173	2020-11-19	PocketDol	9	9		Yes	0
357		BXK	Boys X King	비엑스케이	2020-11-02	New Planet	6	6		Yes	0
359		Kingdom		킹덤	2021-02-18	GF	7	7	Kingmakers	Yes	0
363		WOW		와우	2021-03-08	A.CONIC	7	7		Yes	0
116	https://dbkpop.com/wp-content/uploads/2020/07/Saturday_IKYK_Bbyong_profile.jpg	Saturday	\N	세러데이	2018-07-18	SD	6	7	\N	Yes	0
156	https://dbkpop.com/wp-content/uploads/2020/05/red_square_profile.jpg	REDSQUARE	RSQ	레드스퀘어	2020-05-19	About	5	5	\N	Yes	0
168	https://dbkpop.com/wp-content/uploads/2020/09/XUM_Members_Profile_DDALALA.jpg	XUM	\N	썸	2020-09-22	A100	3	3	AWEXUM	No	0
154	https://dbkpop.com/wp-content/uploads/2020/02/craxy_my_universe_concept_all_group.jpg	CRAXY	\N	크랙시	2020-03-03	SAITEINMENT	5	5	\N	Yes	0
341	https://dbkpop.com/wp-content/uploads/2020/02/unvs_timeless_concept_all_group_profile.jpg	UNVS		유니버스	2020-02-23	CHITWN	5	5		Yes	0
337	https://dbkpop.com/wp-content/uploads/2020/02/mcnd_into_the_ice_age_all_group_1.jpg	MCND		엠씨엔디	2020-02-27	TOP Media	5	5		Yes	0
340	https://dbkpop.com/wp-content/uploads/2020/02/too_ten_oriented_orchestra_profile.jpg	TOO		티오오	2020-04-01	n.CH	10	10		Yes	0
355	https://dbkpop.com/wp-content/uploads/2020/07/wei_members_profile_identity.jpg	Wei		위아이	2020-10-05	OUI	6	6		Yes	0
170	https://dbkpop.com/wp-content/uploads/2020/08/maka_maka_burning_power_profile.jpg	Maka Maka	\N	마카마카	2020-08-04	Dreamus	5	5	\N	Yes	0
231	https://dbkpop.com/wp-content/uploads/2020/05/nct_2018_empathy_profile.jpg	NCT		엔시티	2016-04-09	SM	18	18	NCTzen	Yes	0
351	https://dbkpop.com/wp-content/uploads/2020/09/drippin_members_a_better_tomorrow.jpg	DRIPPIN		드리핀	2020-10-26	Woollim	7	7		Yes	0
354	https://dbkpop.com/wp-content/uploads/2020/08/ghost9_profile.jpg	Ghost9		고스트나인	2020-09-23	Maroo	9	9		Yes	0
353	https://dbkpop.com/wp-content/uploads/2020/09/p1harmony_members_disharmony_break_out.jpg	P1Harmony	P1H	피원하모니	2020-10-28	FNC	6	6		Yes	0
319	https://dbkpop.com/wp-content/uploads/2019/06/cici_cc_concept_all.jpg	CICI		씨씨	2019-06-27	UPVOTE	4	4		No	0
328	https://dbkpop.com/wp-content/uploads/2019/08/signal_the_first_signal_begins_all.jpg	Signal		시그널	2019-08-28	J-Star	4	4		Yes	0
329	https://dbkpop.com/wp-content/uploads/2020/04/cravity_hideout_remember_who_we_are_all_group_1.jpg	CRAVITY		크래비티	2020-04-14	Starship	9	9		Yes	0
318	https://dbkpop.com/wp-content/uploads/2019/05/we_in_the_zone_profile.jpg	We In The Zone		위인더존	2019-05-27	Choon	5	5		No	0
362	https://dbkpop.com/wp-content/uploads/2021/03/Ciipher_members_profile.jpg	Ciipher		싸이퍼	2021-03-15	Rain	7	7		Yes	0
322	https://dbkpop.com/wp-content/uploads/2019/04/mustB_I_Want_You_all.jpg	MustB		머스트비	2019-01-21	MustM	7	7		Yes	0
320	https://dbkpop.com/wp-content/uploads/2019/06/ab6ix_bcomplete_all_3.jpg	AB6IX		에이비식스	2019-05-22	Brand New	5	5	ABNEW	Yes	0
360	https://dbkpop.com/wp-content/uploads/2021/03/mirae_members_profile.jpg	MIRAE		미래소년	2021-03-17	DSP	7	7		Yes	0
361	https://dbkpop.com/wp-content/uploads/2020/10/t1419_members_before_sunrise_part_2.jpg	T1419		티일사일구	2021-01-11	MLD	9	9		Yes	0
364	https://dbkpop.com/wp-content/uploads/2019/08/SuperM_Members_profile.jpg	SuperM		슈퍼엠	2019-10-04	SM	7	7		Yes	0
358	https://dbkpop.com/wp-content/uploads/2020/01/treasure_members_profile.jpg	Treasure		트레저	2020-08-07	YG	12	12		Yes	0
321	https://dbkpop.com/wp-content/uploads/2019/04/newkidd_newkidd_all_1.jpg	Newkidd		뉴키드	2019-04-25	J-FLO	7	7		Yes	0
327	https://dbkpop.com/wp-content/uploads/2020/01/DKB_Profile_Love.jpg	DKB	Darkbee	다크비	2020-02-03	Brave	9	9		Yes	0
248	https://dbkpop.com/wp-content/uploads/2020/06/VICTON_Mayday_concept_all_group_profile.jpg	VICTON		빅톤	2016-11-09	Plan A	7	7	Alice	Yes	0
352	https://dbkpop.com/wp-content/uploads/2020/09/enhypen_members_profile.jpg	ENHYPEN		엔하이픈	2020-11-30	Be:lift	7	7	ENGENE	Yes	0
1	https://dbkpop.com/wp-content/uploads/2020/08/girls_generation_holiday_night.jpg	Girls' Generation	SNSD	소녀시대	2007-08-05	SM	5	9	SONE	Yes	0
22	https://dbkpop.com/wp-content/uploads/2017/01/april_hello_summer_concept_members_Profile.jpg	April	\N	에이프릴	2015-08-24	DSP	6	6	Fineapple	Yes	0
107	https://dbkpop.com/wp-content/uploads/2019/07/gwsn_the_keys_concept_all.jpg	GWSN	\N	공원소녀	2018-09-05	Kiwi Pop	7	7	Groo	Yes	0
64	https://dbkpop.com/wp-content/uploads/2017/02/stellar_1.jpg	Stellar	\N	스텔라	2011-08-28	Pascal	4	4	Twinkle	No	0
324	https://dbkpop.com/wp-content/uploads/2019/07/limitless_dream_play_all.jpg	Limitless		리미트리스	2019-07-09	ONO	4	4		Yes	0
149	https://dbkpop.com/wp-content/uploads/2019/09/rockit_girl_little_cat_profile.jpg	Rockit Girl	\N	락킷걸	2019-05-30	Rolling	2	2	\N	Yes	0
182	https://dbkpop.com/wp-content/uploads/2017/01/ioi_miss_me.jpg	IOI	I.O.I	아이오아이	2016-05-04	YMC	11	11	\N	No	0
148	https://dbkpop.com/wp-content/uploads/2019/09/3ye_members_stalker_concept_all_group.jpg	3YE	\N	써드아이	2019-05-21	GH	3	3	\N	Yes	0
323	https://dbkpop.com/wp-content/uploads/2019/04/Enoi_Bloom_profile.jpg	ENOi		이엔오아이	2019-04-19	KITHEWHALE	7	7		No	0
198	https://dbkpop.com/wp-content/uploads/2019/04/monsta_x_fantasia_x_profile.jpg	MONSTA X		몬스타엑스	2014-05-14	Starship	6	7	Monbebe	Yes	0
78	https://dbkpop.com/wp-content/uploads/2017/01/loona_members_profile_12_00.jpg	Loona	LOOΠΔ	이달의 소녀	2018-08-20	Blockberry	12	12	\N	Yes	0
9	https://dbkpop.com/wp-content/uploads/2020/07/After_School_Flashback_profile.jpg	After School	\N	애프터스쿨	2009-01-15	Pledis	6	5	Playgirlz	No	0
285	https://dbkpop.com/wp-content/uploads/2019/01/oneus_members_binary_code_black_mirror.jpg	Oneus		원어스	2019-01-09	RBW	6	6		Yes	0
45	https://dbkpop.com/wp-content/uploads/2017/02/Lovelyz_profile_Unforgettable.jpg	Lovelyz	\N	러블리즈	2014-11-17	Woollim	8	8	Lovelinus	Yes	0
59	https://dbkpop.com/wp-content/uploads/2017/02/melody_day_1_kiss_on_the_lips.jpg	Melody Day	\N	멜로디데이	2014-02-25	Cre.Ker	4	3	\N	No	0
186	https://dbkpop.com/wp-content/uploads/2020/08/SHINee_Members_Profile_Good_Evening.jpg	SHINee		샤이니	2008-05-25	SM	4	5	Shawol	Yes	0
258	https://dbkpop.com/wp-content/uploads/2019/11/golden_child_reboot_concept_all_group_cr.jpg	Golden Child		골든 차일드	2017-08-28	Woollim	10	11		Yes	0
191	https://dbkpop.com/wp-content/uploads/2017/11/block_b_shall_we_dance_all_3.jpg	Block B		블락비	2011-04-15	KQ	7	7	BBC	Yes	0
110	https://dbkpop.com/wp-content/uploads/2018/05/uni.t_line_all_3.jpg	Uni.T	\N	유니티	2018-05-18	Unit Culture	8	9	\N	No	0
325	https://dbkpop.com/wp-content/uploads/2019/04/1the9_debut_all_profile.jpg	1the9		원더나인	2019-02-09	MBK	9	9		Yes	0
24	https://dbkpop.com/wp-content/uploads/2016/12/wjsn_members_unnatural.jpg	WJSN	Cosmic Girls	우주소녀	2016-02-25	Starship	13	12	Ujung	Yes	0
283	https://dbkpop.com/wp-content/uploads/2019/07/ateez_zero_fever_part_1_thanxx_profile.jpg	ATEEZ		에이티즈	2018-10-24	KQ	8	8		Yes	0
89	https://dbkpop.com/wp-content/uploads/2017/10/Bolbbalgan4_profile.jpg	Bolbbalgan4	BOL4	볼빨간사춘기	2016-04-22	Shofar	1	2	\N	Yes	0
147	https://dbkpop.com/wp-content/uploads/2019/10/hinapia_concept_photo.jpg	Hinapia	\N	희나피아	2019-11-03	Alseulbit	5	5	\N	No	0
5	https://dbkpop.com/wp-content/uploads/2020/07/SISTAR_Lonely_profile.jpg	SISTAR	\N	씨스타	2010-03-06	Starship	4	4	STAR1	No	0
178	https://dbkpop.com/wp-content/uploads/2021/02/pixy_members_profile.jpg	PIXY	\N	픽시	2021-02-24	ALLART	6	6	Winxy	Yes	0
221	https://dbkpop.com/wp-content/uploads/2020/02/winner_cross_concept_all_group.jpg	WINNER		위너	2014-08-12	YG	4	5	Ace	Yes	0
66	https://dbkpop.com/wp-content/uploads/2016/11/sonamoo_happy_box_part2_group_profile.jpg	Sonamoo	\N	소나무	2014-12-29	TS	5	7	Solbangul	Yes	0
35	https://dbkpop.com/wp-content/uploads/2016/10/oh_my_girl_dear_ohmygirl_dun_dun_dance_concept_profile.jpg	Oh My Girl	OHMG	오마이걸	2015-04-21	WM	7	8	Miracle	Yes	0
232	https://dbkpop.com/wp-content/uploads/2019/05/nuest_members_romanticize.jpg	NU'EST		뉴이스트	2012-03-15	Pledis	5	5	LOΛΕ	Yes	0
317	https://dbkpop.com/wp-content/uploads/2019/07/cix_profile_hello_chapter_3.jpg	CIX		씨아이엑스	2019-07-23	C9	5	5		Yes	0
118	https://dbkpop.com/wp-content/uploads/2021/06/pink_fantasy_members_profile.jpg	Pink Fantasy	\N	핑크판타지	2018-10-28	My Doll	8	8	\N	Yes	0
326	https://dbkpop.com/wp-content/uploads/2019/01/txt_blue_hour_all.jpg	TXT		투모로우바이투게더	2019-03-04	Big Hit	5	5		Yes	0
58	https://dbkpop.com/wp-content/uploads/2019/01/mamamoo_blue_s_concept_profile.jpg	Mamamoo	\N	마마무	2014-06-18	RBW	4	4	Moomoo	Yes	1
189	https://dbkpop.com/wp-content/uploads/2016/11/bts_members_profile_butter.jpg	BTS	Bangtan Boys	방탄소년단	2013-06-13	Big Hit	7	7	ARMY	Yes	5
\.


--
-- Data for Name: kpop_idols; Type: TABLE DATA; Schema: public; Owner: joshua
--

COPY public.kpop_idols (id, picture, stage_name, name, korean_name, korean_stage_name, dob, "group", country, second_country, height, weight, birthplace, other_group, former_group, gender, "position", instagram, twitter, group_id, bias, bias_wrecker) FROM stdin;
4	\N	Aeji	Kwon Aeji	권애지	애지	1999-10-25	Hashtag	South Korea	\N	163	0	Daegu	\N	\N	F	\N	\N	\N	\N	0	0
22	\N	Anthony	Anthony Lo	엔써니 루오	엔써니	1998-03-12	VARSITY	China	USA	179	0	\N	\N	\N	M	\N	\N	\N	273	0	0
27	\N	Ari	Hwang Nayoon	황나윤	아리	1999-03-30	RedSquare	South Korea	\N	0	0	Seoul	\N	Good Day	F	Vocalist	\N	\N	156	0	0
28	\N	Arie	Jeon Minjae	전민재	아리	2000-04-07	MIXX	South Korea	\N	163	45	\N	\N	\N	F	\N	\N	\N	77	0	0
34	\N	Aurora	Yang Lan	양안	오로라	1997-01-14	NATURE	China	\N	0	0	\N	\N	\N	F	\N	\N	\N	109	0	0
10	\N	Ailee	Lee Yejin	이예진	에일리	1989-05-30	\N	South Korea	USA	165	0	Denver	\N	\N	F	\N	aileeonline	\N	\N	0	0
11	\N	Aini	Kim Heejung	김희정	아이니	1991-07-13	\N	South Korea	\N	163	44	\N	\N	Pink Fantasy	F	\N	\N	\N	\N	0	0
55	\N	BEL	Choi Sunghoon	최성훈	벨	2000-05-21	DUSTIN	South Korea	\N	0	0	\N	\N	\N	M	\N	\N	\N	333	0	0
57	\N	Belle	Jin Hyeonjoo	진현주	벨	2001-11-03	Cignature	South Korea	\N	0	0	Goyang	\N	Good Day	F	\N	\N	\N	146	0	0
5	https://dbkpop.com/wp-content/uploads/2016/11/momoland_ahin_profile_starry_night.jpg	AhIn	Lee Ahin	이아인	아인	1999-09-27	MOMOLAND	South Korea	\N	160	44	Wonju	\N	\N	F	\N	\N	\N	72	0	0
15	\N	AleXa	Kim Seri	김세리	알렉사	1996-12-06	\N	USA	\N	0	0	\N	\N	\N	F	\N	\N	\N	\N	0	0
3	\N	Ace	Jang Wooyoung	장우영	에이스	1992-08-28	VAV	South Korea	\N	177	63	\N	\N	\N	M	\N	\N	\N	294	0	0
1079	\N	Seoyeon	Kim Minju	김민주	서연	1995-11-26	Favorite	South Korea	\N	0	0	Gwacheon	\N	\N	F	\N	\N	\N	84	0	0
1080	\N	Seoyoon	Kim Suyoung	김수영	서윤	1995-01-26	BOTOPASS	South Korea	\N	0	0	\N	\N	ILUV	F	\N	\N	\N	173	0	0
20	\N	Andy	Lui Chunyeung	루이쯔양	앤디	1994-10-06	7 O'clock	Hong Kong	\N	0	0	\N	\N	\N	M	\N	\N	\N	\N	0	0
1082	\N	Seoyul	Seo Yuri	서유리	서율	1997-11-26	Berry Good	South Korea	\N	163	0	\N	\N	\N	F	\N	\N	\N	50	0	0
1083	\N	Serim	Park Serim	박세림	세림	1999-03-03	CRAVITY	South Korea	\N	0	0	\N	\N	\N	M	\N	\N	\N	329	0	0
1087	\N	Seungah	Oh Seungah	오승아	승아	1988-09-13	Rainbow	South Korea	\N	167	45	Seoul	Rainbow Blaxx, Rainbow Pixie	\N	F	\N	\N	\N	38	0	0
1088	\N	Seungchan	Kang Seungchan	강승찬	승찬	2003-01-01	Newkidd	South Korea	\N	0	0	\N	\N	\N	M	\N	\N	\N	321	0	0
1089	\N	Seungeun	Shim Seungeun	심승은	승은	2000-12-27	BVNDIT	South Korea	\N	0	0	\N	\N	\N	F	\N	\N	\N	144	0	0
1093	\N	Seungho	Yang Seungho	양승호	승호	1987-10-16	MBLAQ	South Korea	\N	0	0	Seoul	\N	\N	M	\N	\N	\N	193	0	0
1097	\N	Seunghyub	Lee Seunghyub	이승협	승협	1992-10-31	N.Flying	South Korea	\N	0	0	Daegu	\N	\N	M	Vocal	\N	\N	210	0	0
1098	\N	Seunghyun	Song Seungyun	송승현	승현	1992-08-21	FTISLAND	South Korea	\N	0	0	Seoul	\N	\N	M	Guitarist	\N	\N	209	0	0
1102	\N	Seungmin	Bae Seungmin	배승민	승민	1998-10-13	Golden Child	South Korea	\N	0	0	\N	\N	\N	M	\N	\N	\N	258	0	0
1105	\N	Seungri	Lee Seunghyun	이승현	승리	1990-12-12	BIGBANG	South Korea	\N	176	60	Gwangju	\N	\N	M	\N	\N	\N	183	0	0
1106	\N	Seungsik	Kang Seungsik	강승식	승식	1995-04-16	VICTON	South Korea	\N	0	0	\N	\N	\N	M	\N	\N	\N	248	0	0
1107	\N	Seungwoo	Han Seungwoo	한승우	승우	1994-12-24	VICTON	South Korea	\N	0	0	\N	\N	X1	M	\N	\N	\N	248	0	0
1109	\N	Seungyeon	Han Seungyeon	한승연	승연	1988-07-24	KARA	South Korea	\N	0	0	Seoul	\N	\N	F	\N	\N	\N	2	0	0
1110	\N	Seungyeop	Choi Seungyeop	최승엽	승엽	1997-05-08	E'LAST	South Korea	\N	176	60	\N	\N	\N	M	\N	\N	\N	335	0	0
1111	\N	Seungyoon	Cho Seungyoon	조승연	승연	1996-08-05	UNIQ	South Korea	\N	183	68	\N	\N	X1	M	\N	\N	\N	250	0	0
40	\N	B-Joo	Kim Byungjoo	김병주	비주	1994-01-08	Topp Dogg	South Korea	\N	0	0	Seoul	\N	\N	M	\N	\N	\N	\N	0	0
41	\N	B.I	Kim Hanbin	김한빈	비아이	1996-10-22	\N	South Korea	\N	0	0	Goyang	\N	iKON	M	\N	\N	\N	\N	0	0
1113	\N	Seyong	Kim Seyong	김세용	세용	1991-11-20	MYNAME	South Korea	\N	0	0	Busan	\N	\N	M	\N	\N	\N	199	0	0
1114	\N	Seyoung	Lee Seyoung	이세영	세영	1990-02-08	CROSS GENE	South Korea	\N	180	60	Busan	\N	\N	M	\N	\N	\N	217	0	0
1115	\N	Shiho	Kwon Subin	권수빈	시호	2001-08-22	BOTOPASS	South Korea	\N	0	0	\N	\N	\N	F	\N	\N	\N	173	0	0
1116	\N	Shihyun	Kim Shihyun	김시현	시현	1998-05-06	We In The Zone	South Korea	\N	0	0	Changwon	\N	\N	M	\N	\N	\N	318	0	0
1117	\N	Shin	Shin Wonho	신원호	신	1991-10-23	CROSS GENE	South Korea	\N	185	66	Seoul	\N	\N	M	\N	\N	\N	217	0	0
1118	\N	Shin	Kim Suhyun	김수현	신	2000-03-18	Ghost9	South Korea	\N	0	0	\N	\N	\N	M	\N	\N	\N	354	0	0
1119	\N	Shin Hyesung	Jung Pilkyo	정필교	신혜성	1979-11-27	Shinhwa	South Korea	\N	179	65	Seoul	\N	\N	M	\N	\N	\N	241	0	0
1120	\N	Shindong	Shin Donghee	신동희	신동	1985-09-28	Super Junior	South Korea	\N	178	90	Mungyeong	\N	\N	M	\N	\N	\N	184	0	0
1122	\N	Shinye	Kam Yerim	감예림	신예	2004-03-07	MAJORS	South Korea	\N	166	46	\N	\N	\N	F	\N	\N	\N	180	0	0
1123	\N	Shinyoung	Park Shinyoung	박신영	신영	2000-03-19	G-reyish	South Korea	\N	0	0	\N	\N	\N	F	\N	\N	\N	87	0	0
1124	\N	Shotaro	Osaki Shotaro	오사키 쇼타로	쇼타로	2000-11-25	NCT	Japan	\N	0	0	\N	NCT U	\N	M	\N	\N	\N	231	0	0
54	\N	Bekah	Rebecca Kim	김레베카	베카	1989-08-11	\N	South Korea	USA	0	0	Honolulu	\N	After School	F	\N	\N	\N	\N	0	0
1125	\N	Shownu	Son Hyunwoo	손현우	셔누	1992-06-18	MONSTA X	South Korea	\N	0	0	\N	\N	\N	M	\N	\N	\N	198	0	0
918	\N	Mire	Su Mire	수미레	미레	2006-03-26	TRI.BE	Japan	\N	0	0	\N	\N	\N	F	\N	\N	\N	177	0	0
2	https://dbkpop.com/wp-content/uploads/2019/07/limitless_dream_play_AM.jpg	A.M	Seong Hyunwoo	성현우	에이엠	1996-12-31	Limitless	South Korea	\N	181	62	\N	\N	\N	M	\N	\N	\N	324	0	0
51	https://dbkpop.com/wp-content/uploads/2016/11/b1a4_baro_1.jpg	Baro	Cha Sunwoo	차선우	바로	1992-09-05	\N	South Korea	\N	178	63	Gwangju	\N	B1A4	M	\N	\N	\N	\N	0	0
1	https://www.allkpop.com/upload/2019/10/content/081015/1570544113-20191008-sevenoclock.jpg	2Soul	Kim Younghoon	김영훈	이솔	1997-09-10	7 O'clock	South Korea	\N	172	55	\N	\N	\N	M	\N	\N	\N	\N	0	0
61	\N	BIBI	Kim Hyungseo	김형서	비비	1998-09-27	\N	South Korea	\N	0	0	\N	\N	\N	F	\N	\N	\N	\N	0	0
63	\N	Bin	Kwon Soobin	김수빈	빈	1993-10-28	Hot Blood Youth	South Korea	\N	0	0	\N	\N	\N	M	\N	\N	\N	\N	0	0
74	\N	Bokeun	Kim Bokeun	김복은	복은	1994-10-12	SIGNAL	South Korea	\N	0	0	\N	\N	\N	M	\N	\N	\N	328	0	0
66	\N	Bitsaeon	Kim Sangyeon	김상연	빛새온	1995-06-04	MONT	South Korea	\N	181	60	\N	\N	\N	M	\N	\N	\N	\N	0	0
70	\N	BoA	Kwon Boa	권보아	보아	1986-11-05	\N	South Korea	\N	0	0	Guri	\N	\N	F	\N	boakwon	\N	\N	0	0
78	\N	Bomin	Kim Bomin	김보민	보민	2001-09-24	RedSquare	South Korea	\N	0	0	Gwangju	\N	Good Day	F	Dancer	\N	\N	156	0	0
84	\N	Bullet	Jin Junwoo	진준우	블릿	1995-12-02	VARSITY	South Korea	\N	182	65	Seoul	\N	\N	M	\N	\N	\N	273	0	0
92	\N	Chaea	Kim Chaeyoung	김채영	체리	1997-07-05	RedSquare	South Korea	\N	0	0	Gunsan	\N	Good Day	F	Vocalist, Main Dancer	\N	\N	156	0	0
93	\N	Chaebin	Choi Yoobin	최유빈	채빈	1999-07-28	NATURE	South Korea	\N	0	0	\N	\N	\N	F	\N	\N	\N	109	0	0
101	\N	Chaesol	Maeng Chaesol	맹채솔	채솔	1998-07-14	Cignature	South Korea	\N	0	0	Yeosu	\N	Good Day	F	\N	\N	\N	146	0	0
109	https://dbkpop.com/wp-content/uploads/2016/11/Twice_Chaeyoung_profile_Eyes_wide_open.jpg	Chaeyoung	Son Chaeyoung	손채영	채영	1999-04-23	Twice	South Korea	\N	159	0	Seoul	\N	\N	F	\N	\N	\N	39	0	0
102	https://dbkpop.com/wp-content/uploads/2017/01/april_hello_summer_concept_chaewon_profile.jpg	Chaewon	Kim Chaewon	김채원	채원	1997-11-08	APRIL	South Korea	\N	0	0	Gongju	\N	\N	F	\N	\N	\N	22	0	0
60	\N	Bian	Yu Jiwon	유지원	비안	2001-02-13	MAJORS	South Korea	\N	0	0	\N	\N	ANS	F	\N	\N	\N	180	0	0
62	\N	Bic	Nam Seungmin	남승민	빅	2001-04-25	MCND	South Korea	\N	0	0	\N	\N	\N	M	\N	\N	\N	337	0	0
65	\N	Bit	No Minjae	노민재	빛	2004-07-21	BAE173	South Korea	\N	0	0	\N	\N	\N	M	\N	\N	\N	356	0	0
67	\N	Bitto	Lee Changhyun	이창현	비토	1996-08-24	UP10TION	South Korea	\N	0	0	Dongducheon	\N	\N	M	\N	\N	\N	247	0	0
68	\N	Blue	Jung Gahee	정가희	파랑	1994-01-18	Pungdeng-E	South Korea	\N	161	0	Gwangju	\N	\N	F	\N	\N	\N	61	0	0
71	\N	Boa	Kim Boah	김보아	보아	1987-01-14	KEEMBO	South Korea	\N	0	0	\N	\N	SPICA	F	\N	\N	\N	155	0	0
72	\N	Bobby	Kim Jiwon	김지원	바비	1995-12-21	iKON	South Korea	USA	0	0	Seoul	\N	\N	M	\N	\N	\N	222	0	0
73	\N	Bohyung	Kim Bohyung	김보형	보형	1991-03-31	KEEMBO	South Korea	\N	0	0	\N	SPICA-S	SPICA	F	\N	\N	\N	155	0	0
1096	https://dbkpop.com/wp-content/uploads/2019/04/1the9_debut_seunghwan_profile.jpg	Seunghwan	Lee Seunghwan	이승환	승환	2000-05-20	1the9	South Korea	\N	178	64	\N	\N	\N	M	\N	\N	\N	325	0	0
1126	https://dbkpop.com/wp-content/uploads/2018/04/GI-DLE_2020_Shuhua_Profile.jpg	Shuhua	Yeh Shuhua	예슈화	슈화	2000-01-06	(G)I-DLE	Taiwan	\N	161	45	\N	\N	\N	F	\N	\N	\N	106	0	0
1091	https://dbkpop.com/wp-content/uploads/2019/06/clc_me_seunghee_profile.jpg	Seunghee	Oh Seunghee	오승희	승희	1995-10-10	CLC	South Korea	\N	163	0	Gwangju	\N	\N	F	\N	\N	\N	23	0	0
1135	\N	Simyeong	Lee Simyeong	이시명	시명	1999-05-27	BVNDIT	South Korea	\N	0	0	\N	\N	\N	F	\N	\N	\N	144	0	0
1138	\N	Siwan	Yim Siwan	임시완	시완	1988-12-01	ZE:A	South Korea	\N	0	0	Busan	\N	\N	M	\N	\N	\N	197	0	0
1139	\N	Siwon	Choi Siwon	최시원	시원	1986-04-07	Super Junior	South Korea	\N	185	65	Seoul	Super Junior-M	\N	M	\N	\N	\N	184	0	0
1144	\N	Soeun	Bang Soeun	방소은	소은	2005-12-10	TRI.BE	South Korea	\N	0	0	\N	\N	\N	F	\N	\N	\N	177	0	0
1145	\N	Sohee	Kim Sohee	소희	김소희	1995-01-20	Nature	South Korea	\N	162	41	Busan	C.I.V.A	I.B.I	F	\N	\N	\N	109	0	0
1147	\N	Sohee	Kim Sohee	김소희	소희	2003-08-14	Rocket Punch	South Korea	\N	161	46	\N	\N	\N	F	\N	\N	\N	163	0	0
1151	\N	Sojin	Jo Sojin	조소진	소진	1991-10-11	9Muses	South Korea	\N	170	47	Gwangju	9MUSES A	\N	F	\N	josojin_1011	\N	16	0	0
1153	\N	Sojung	Lee Sojung	이소정	소정	1993-09-03	Ladies' Code	South Korea	\N	0	0	Wonju	\N	\N	F	\N	\N	\N	43	0	0
1160	\N	Somyi	Ahn Somyi	안솜이	솜이	2000-01-26	DIA	South Korea	\N	0	0	Changwon	L.U.B	\N	F	\N	\N	\N	33	0	0
1161	\N	Song	Song Yunhyeong	송윤형	송	1995-02-08	iKON	South Korea	\N	0	0	\N	\N	\N	M	\N	\N	\N	222	0	0
1162	\N	Songhee	Yoon Songhee	윤송희	송희	1998-11-08	BVNDIT	South Korea	\N	0	0	\N	\N	\N	F	\N	\N	\N	144	0	0
1163	\N	SongSun	Kim Songsun	김송선	송선	1997-03-22	TRI.BE	South Korea	\N	0	0	\N	\N	\N	F	\N	\N	\N	177	0	0
1167	\N	Soodam	Lee Soodam	이수담	수담	1999-11-09	SECRET NUMBER	South Korea	\N	0	0	\N	\N	\N	F	\N	\N	\N	157	0	0
116	\N	Changbum	Woo Changbum	우창범	창범	1993-10-07	\N	South Korea	\N	0	0	Sokcho	\N	100%	M	\N	\N	\N	\N	0	0
69	https://dbkpop.com/wp-content/uploads/2016/12/kard_rumor_BM_profile.jpg	BM	Matthew Kim	매튜김	비엠	1992-10-20	KARD	South Korea	\N	0	0	\N	\N	\N	M	\N	\N	\N	\N	0	0
127	\N	Chanyoung	Kim Chanyoung	김찬영	찬영	2000-11-20	D-CRUNCH	South Korea	\N	0	0	\N	\N	\N	M	\N	\N	\N	291	0	0
156	\N	Daehyeon	Jang Daehyeon	장대현	대현	1997-02-11	WEi	South Korea	\N	175	0	\N	\N	RAINZ	M	\N	daehyeon0211	\N	355	0	0
171	\N	Dajeong	Jung Dajeong	정다정	다정	2003-07-31	Pixy	South Korea	\N	157	42	\N	\N	\N	F	\N	\N	\N	178	0	0
175	\N	Damon	Hu Boohan	후보한	데이먼	1996-07-02	VARSITY	China	\N	181	0	\N	\N	\N	M	\N	\N	\N	273	0	0
145	https://dbkpop.com/wp-content/uploads/2018/08/loona__chuu_profile.jpg	Chuu	Kim Jiwoo	김지우	츄	1999-10-20	LOONA	South Korea	\N	0	0	Cheongju	Loona yyxy	\N	F	\N	\N	\N	78	0	0
173	https://dbkpop.com/wp-content/uploads/2018/05/dreamcatcher_escape_the_era_dami_profile.jpg	Dami	Lee Yoobin	이유빈	다미	1997-03-07	Dreamcatcher	South Korea	\N	163	0	Seoul	\N	Minx	F	\N	\N	\N	80	0	0
123	https://dbkpop.com/wp-content/uploads/2018/05/aoa_bingle_bangle_chanmi_profile.jpg	Chanmi	Kim Chanmi	김찬미	찬미	1996-06-19	AoA	South Korea	\N	166	47	Gumi	\N	\N	F	\N	chanmi_96a	\N	10	0	0
118	\N	Changjo	Choi Jonghyun	최종현	창조	1995-11-16	Teen Top	South Korea	\N	0	0	Chuncheon	\N	\N	M	\N	\N	\N	207	0	0
131	\N	Cheongeum	Jang Cheongeum	장청음	청음	1996-06-19	Ho1iday	South Korea	\N	0	0	\N	\N	\N	F	\N	\N	\N	\N	0	0
119	\N	Changsub	Lee Changsub	이창섭	창섭	1991-02-26	BtoB	South Korea	\N	177	64	Suwon	\N	\N	M	\N	\N	\N	203	0	0
1168	\N	Soohyun	Shin Soohyun	신수현	수현	1989-03-11	U-KISS	South Korea	\N	0	0	Pocheon	\N	\N	M	\N	\N	\N	190	0	0
1172	\N	Sora	Sakata Sora	사카타 소라	소라	2003-08-30	woo!ah!	Japan	\N	0	0	\N	\N	\N	F	Vocalist	\N	\N	158	0	0
1174	\N	Soso	Wang Chingyi	왕징이	소소	2001-03-14	GWSN	Taiwan	\N	0	0	\N	\N	\N	F	\N	\N	\N	107	0	0
1181	\N	Soyou	Kang Jihyun	강지현	소유	1992-02-12	SISTAR	South Korea	\N	0	0	\N	\N	\N	F	\N	soooo_you	\N	5	0	0
1143	https://dbkpop.com/wp-content/uploads/2020/06/weeekly_we_are_teaser_2_park_soeun.jpg	Soeun	Park Soeun	박소은	소은	2002-10-26	Weeekly	South Korea	\N	168	0	\N	\N	\N	F	Lead Vocal, Lead Dancer	\N	\N	153	0	0
1166	https://dbkpop.com/wp-content/uploads/2019/01/TXT_Soobin_Profile_Blue_Hour.jpg	Soobin	Choi Soobin	최수빈	수빈	2000-12-05	TXT	South Korea	\N	184	65	\N	\N	\N	M	\N	\N	\N	326	0	0
1180	https://dbkpop.com/wp-content/uploads/2018/04/GI-DLE_2020_Soyeon_Profile.jpg	Soyeon	Jeon Soyeon	전소연	소연	1998-08-26	(G)I-DLE	South Korea	\N	157	42	\N	\N	\N	F	\N	\N	\N	106	0	0
141	\N	Chowon	Han Chowon	한초원	초원	2002-09-16	LIGHTSUM	South Korea	\N	168	50	Seoul	\N	\N	F	\N	\N	\N	\N	0	0
142	\N	Chris	Han Chris	한 크리스	크리스	2002-11-19	BLITZERS	South Korea	\N	0	0	\N	\N	\N	M	\N	\N	\N	\N	0	0
143	\N	Chungha	Kim Chungha	김청하	청하	1996-02-09	\N	South Korea	\N	0	0	Dallas	\N	I.O.I	F	\N	\N	\N	\N	0	0
1154	https://dbkpop.com/wp-content/uploads/2020/04/solar_spit_it_out_concept_profile.jpg	Solar	Kim Yongsun	김용선	솔라	1991-02-21	Mamamoo	South Korea	\N	163	43	Seoul	\N	\N	F	Leader	\N	\N	58	0	0
1175	https://dbkpop.com/wp-content/uploads/2020/09/p1harmony_profile_soul_1.jpg	Soul	Haku Shota	하쿠 쇼타	소울	2005-02-01	P1Harmony	Japan	\N	0	0	\N	\N	\N	M	\N	\N	\N	353	0	0
1176	https://dbkpop.com/wp-content/uploads/2018/10/gfriend_memoria_sowon_profile.jpg	Sowon	Kim Sojung	김소정	소원	1995-12-07	Gfriend	South Korea	\N	172	0	Seoul	\N	\N	F	\N	\N	\N	48	0	0
1150	https://dbkpop.com/wp-content/uploads/2016/12/girls_day_everyday5_sojin_profile.jpg	Sojin	Park Sojin	박소진	소진	1986-05-21	Girl's Day	South Korea	\N	167	47	Daegu	\N	\N	F	\N	ssozi_sojin	\N	13	0	0
1189	\N	Subin	Jung Subin	정수빈	수빈	1999-04-05	VICTON	South Korea	\N	0	0	\N	\N	\N	M	\N	\N	\N	248	0	0
150	\N	Cya	Lee Giwook	이기욱	키야	2000-01-24	Onewe	South Korea	\N	0	0	\N	\N	MAS	M	\N	\N	\N	\N	0	0
1192	\N	Sugyeong	Jo Sugyeong	조수경	수경	2000-01-12	Favorite	South Korea	\N	0	0	Haenam	\N	\N	F	\N	\N	\N	84	0	0
1193	\N	Suho	Kim Junmyeon	김준면	수호	1991-05-22	EXO	South Korea	\N	173	65	Seoul	\N	\N	M	\N	\N	\N	187	0	0
1198	\N	Sujin	Bang Sujin	방수진	수진	1996-06-26	Wassup	South Korea	\N	0	0	\N	\N	\N	F	\N	\N	\N	46	0	0
1201	\N	Sumin	Park Sumin	박수민	수민	2001-09-09	Dreamnote	South Korea	\N	166	46	\N	\N	\N	F	\N	\N	\N	114	0	0
1202	\N	Sumin	Bae Sumin	배수민	수민	2001-03-13	STAYC	South Korea	\N	0	0	\N	\N	\N	F	\N	\N	\N	166	0	0
158	\N	Daeil	Kim Daeil	김대일	대일	1992-05-10	\N	South Korea	\N	0	0	Busan	\N	24K	M	\N	\N	\N	\N	0	0
165	https://dbkpop.com/wp-content/uploads/2016/11/Twice_dahyun_profile_moremore.jpg	Dahyun	Kim Dahyun	김다현	다현	1998-05-28	Twice	South Korea	\N	165	0	Seongnam	\N	\N	F	\N	\N	\N	39	1	1
164	\N	Dahye	Song Dahye	송다혜	다혜	1993-06-12	\N	South Korea	\N	0	0	\N	\N	EXID, BESTie	F	\N	dahye0612	\N	\N	0	0
167	\N	Dain	Song Jieun	송지은	다인	1990-06-25	\N	South Korea	\N	0	0	\N	\N	Wassup	F	\N	\N	\N	\N	0	0
168	\N	Dain	Jung Dain	정다인	다인	2004-12-15	HOT ISSUE	South Korea	\N	0	0	\N	\N	\N	F	\N	\N	\N	\N	0	0
170	\N	Dajeong	Kim Dajeong	김다정	다정	1995-08-08	Hashtag	South Korea	\N	170	0	Gwangju	\N	\N	F	\N	\N	\N	\N	0	0
177	\N	Dana	Jang Dana	장다나	다나	2003-12-25	HOT ISSUE	South Korea	\N	0	0	\N	\N	\N	F	\N	\N	\N	\N	0	0
169	https://dbkpop.com/wp-content/uploads/2018/06/momoland_baam_daisy_profile.jpg	Daisy	Yoo Jeongahn	유정안	데이지	1999-01-22	\N	South Korea	\N	0	0	Seoul	\N	MOMOLAND	F	\N	\N	\N	\N	0	0
135	https://dbkpop.com/wp-content/uploads/2016/12/aoa_choa_1-1-e1482876873747.jpg	Choa	Park Choa	박초아	초아	1990-03-06	\N	South Korea	\N	160	42	Incheon	\N	AoA, AOA BLACK	F	\N	queenchoa_	\N	\N	0	0
180	\N	Dany	Jeon Eunji	전은지	다니	1998-01-20	Ho1iday	South Korea	\N	0	0	\N	\N	\N	F	\N	\N	\N	\N	0	0
181	\N	Daon	Ahn Seonil	안선일	다온	2000-12-10	DUSTIN	South Korea	\N	0	0	\N	\N	\N	M	\N	\N	\N	333	0	0
188	\N	Dawon	Cho Dawon	조다원	다원	2000-05-12	VARSITY	South Korea	\N	183	69	\N	\N	\N	M	\N	\N	\N	273	0	0
189	\N	Dawon	Lee Dawon	이다원	다원	1996-12-02	ARIAZ	South Korea	\N	0	0	\N	\N	\N	F	\N	\N	\N	150	0	0
197	\N	Dia	Choi Eunji	최은지	디아	2001-07-16	Pixy	South Korea	\N	165	0	\N	\N	\N	F	\N	\N	\N	178	0	0
214	\N	Donghan	Kim Donghan	김동한	동한	1998-07-03	WEi	South Korea	\N	0	0	Daegu	\N	JBJ	M	\N	\N	\N	355	0	0
224	\N	Dongpyo	Son Dongpyo	손동표	동표	2002-09-09	Mirae	South Korea	\N	166	48	\N	\N	X1	M	\N	\N	\N	360	0	0
232	\N	Douhyun	Yoo Douhyun	유도현	도현	2000-12-25	Mirae	South Korea	\N	0	0	\N	\N	\N	M	\N	\N	\N	360	0	0
238	\N	Dylan	Park Yeonjae	박연재	딜란	2002-07-26	D-CRUNCH	South Korea	\N	0	0	\N	\N	\N	M	\N	\N	\N	291	0	0
178	\N	Daniel	Kang Daniel	강다니엘	다니엘	1996-12-10	Wanna One	South Korea	\N	0	0	Busan	\N	\N	M	\N	\N	\N	256	0	0
179	\N	Dann	Jung Seungbo	정승보	단	1997-11-01	Kingdom	South Korea	\N	178	0	Ilsan	\N	VARSITY	M	\N	\N	\N	359	0	0
182	\N	Dara	Park Sandara	박산다라	다라	1984-11-12	2NE1	South Korea	\N	0	0	\N	\N	\N	F	\N	daraxxi	\N	3	0	0
183	\N	Daseul	Yang Daseul	양다슬	다슬	2000-09-14	Maka Maka	South Korea	\N	0	0	\N	\N	\N	F	\N	\N	\N	170	0	0
1203	\N	Sun J	Jeon Heesun	전희선	썬제이	2001-02-13	Girlkind	South Korea	\N	0	165	\N	\N	\N	F	\N	\N	\N	105	0	0
1204	\N	Sungah	Son Sungah	손성아	성아	1989-07-08	9Muses	South Korea	Fiji	172	48	Suma	\N	\N	F	\N	ssungahhbaby	\N	16	0	0
1205	\N	Sungchan	Jung Sungchan	정성찬	성찬	2001-09-13	NCT	South Korea	\N	0	0	\N	NCT U	\N	M	\N	\N	\N	231	0	0
1208	\N	Sunghyun	Kim Sunghyun	김성현	성현	1996-03-16	IN2IT	South Korea	\N	186	71	\N	\N	\N	M	\N	\N	\N	299	0	0
1209	\N	Sungjae	Yook Sungjae	육성재	성재	1995-05-02	BtoB	South Korea	\N	180	68	Yongin	Big Byung	\N	M	\N	\N	\N	203	0	0
204	\N	Dohee	Yoon Dohee	윤도희	도희	1999-09-24	\N	South Korea	\N	0	0	\N	\N	NeonPunch	F	\N	\N	\N	\N	0	0
1210	\N	Sungjin	Park Sungjin	박성진	성진	1993-01-16	DAY6	South Korea	\N	0	0	\N	\N	\N	M	Guitarist	\N	\N	218	0	0
1211	\N	Sungjong	Lee Sungjong	이성종	성종	1993-09-03	Infinite	South Korea	\N	177	54	Gwangju	Infinite F	\N	M	\N	\N	\N	188	0	0
1212	\N	Sungjoo	Kim Sungjoo	김성주	성주	1994-02-16	UNIQ	South Korea	\N	180	65	\N	\N	\N	M	\N	\N	\N	250	0	0
1213	\N	Sungjun	Park Sungjun	박성준	성준	1992-12-17	Boys Republic	South Korea	\N	175	55	Ansan	\N	\N	M	\N	\N	\N	251	0	0
1214	\N	Sungkyu	Kim Sungkyu	김성규	성규	1989-04-28	Infinite	South Korea	\N	178	62	Jeonju	\N	\N	M	Leader	\N	\N	188	0	0
1215	\N	Sungmin	Lee Sungmin	이성민	성민	1986-01-01	Super Junior	South Korea	\N	175	57	Gyeonggi	Super Junior-M	\N	M	\N	\N	\N	184	0	0
1216	\N	Sungmin	Oh Sungmin	오성민	성민	1990-12-31	Bigflo	South Korea	\N	0	0	\N	\N	\N	M	\N	\N	\N	298	0	0
1218	\N	Sungwoon	Ha Sungwoon	하성운	성운	1994-03-22	Wanna One	South Korea	\N	0	0	Goyang	HOTSHOT	\N	M	\N	\N	\N	256	0	0
1219	\N	Sungyeol	Lee Sungyeol	이성열	성열	1991-08-27	Infinite	South Korea	\N	183	59	Yongin	Infinite F	\N	M	\N	\N	\N	188	0	0
1227	\N	Sunwoo	Choi Sunwoo	최선우	선우	1992-03-12	Boys Republic	South Korea	\N	183	65	Seoul	\N	\N	M	\N	\N	\N	251	0	0
1229	\N	Sunyoul	Seon Yein	선예인	선율	1996-11-06	UP10TION	South Korea	\N	0	0	Wando	\N	\N	M	\N	\N	\N	247	0	0
1231	\N	Surin	Kim Surin	김수린	수린	1991-12-27	Two X	South Korea	\N	0	0	\N	\N	\N	F	\N	\N	\N	63	0	0
1232	\N	Suwoong	Lee Suwoong	이수웅	수웅	1995-01-20	Boys Republic	South Korea	\N	174	56	\N	\N	\N	M	\N	\N	\N	251	0	0
1234	\N	Suyun	Kim Suyun	김수윤	수윤	2001-03-17	Rocket Punch	South Korea	\N	169	52	\N	\N	\N	F	\N	\N	\N	163	0	0
1235	\N	Suzy	Bae Suji	배수지	수지	1994-10-10	miss A	South Korea	\N	168	0	Gwangju	\N	\N	F	\N	skuukzky	\N	15	0	0
1236	\N	Suzy	Kim Suji	김수지	수지	2001-06-03	MAJORS	South Korea	\N	164	45	\N	\N	\N	F	\N	\N	\N	180	0	0
1237	\N	Swan	Kim Suan	김수안	수안	2000-12-28	CRAXY	South Korea	\N	0	0	\N	\N	\N	F	\N	\N	\N	154	0	0
223	\N	Dongmyeong	Son Dongmyeong	곤동명	동명	2000-01-20	Onewe	South Korea	\N	0	0	\N	\N	MAS	M	\N	\N	\N	\N	0	0
1238	\N	Swan	Park Soojin	박수진	수안	2003-07-11	Purple Kiss	South Korea	\N	0	0	\N	\N	\N	F	\N	\N	\N	179	0	0
1240	\N	T.O.P	Choi Seunghyun	최승현	탑	1987-11-04	BIGBANG	South Korea	\N	180	65	Seoul	GD&TOP	\N	M	\N	\N	\N	183	0	0
1241	\N	Taecyeon	Ok Taecyeon	옥택연	택연	1988-12-27	2PM	South Korea	\N	185	76	Busan	\N	\N	M	\N	\N	\N	202	0	0
1206	https://dbkpop.com/wp-content/uploads/2020/09/enhypen_official_profile_Sunghoon_1.jpg	Sunghoon	Park Sunghoon	박성훈	성훈	2002-12-08	ENHYPEN	South Korea	\N	0	0	\N	\N	\N	M	\N	\N	\N	352	0	0
1225	https://dbkpop.com/wp-content/uploads/2020/09/enhypen_official_profile_Sunoo_1.jpg	Sunoo	Kim Sunwoo	김선우	선우	2003-06-24	ENHYPEN	South Korea	\N	0	0	\N	\N	\N	M	\N	\N	\N	352	0	0
1191	https://dbkpop.com/wp-content/uploads/2016/11/bts_SUGA_profile_butter.jpg	Suga	Min Yoongi	민윤기	슈가	1993-03-09	BTS	South Korea	\N	176	59	Daegu	\N	\N	M	\N	\N	\N	189	0	0
1188	https://dbkpop.com/wp-content/uploads/2017/02/dalshabet_subin_2.jpg	Subin	Park Subin	박수빈	수빈	1994-02-12	Dal Shabet	South Korea	\N	0	0	Gwangju	\N	\N	F	\N	\N	\N	11	0	0
1222	https://dbkpop.com/wp-content/uploads/2016/12/sunmi_pporappippam_profile.jpg	Sunmi	Lee Sunmi	이선미	선미	1992-05-02	Wonder Girls	South Korea	\N	167	0	Iksan	\N	\N	F	\N	miyayeah	\N	14	0	0
260	\N	EunB	Byun Eunbi	변은비	은비	2000-11-23	PRECIOUS	South Korea	\N	164	49	Busan	\N	\N	F	\N	\N	\N	167	0	0
247	https://dbkpop.com/wp-content/uploads/2018/12/cherry_bullet_card_mirae.jpg	Ella	Kim Kyungjoo	김경주	엘라	1998-03-26	Pixy	South Korea	\N	0	0	\N	\N	Cherry Bullet	F	\N	\N	\N	178	0	0
240	\N	E-Chan	Lee Changmin	이창민	이찬	1997-02-19	DKB	South Korea	\N	178	63	\N	\N	\N	M	\N	\N	\N	327	0	0
241	\N	E-tion	Lee Changyoon	이창윤	이션	1994-12-24	ONF	South Korea	\N	0	0	Jeonju	\N	\N	M	\N	\N	\N	260	0	0
242	\N	E-Young	Noh Yiyoung	노이영	이영	1992-08-16	After School	South Korea	\N	0	0	Chuncheon	\N	\N	F	\N	e_young0816	\N	9	0	0
1200	https://dbkpop.com/wp-content/uploads/2017/10/sonamoo_happy_box_part2_sumin_profile.jpg	Sumin	Ji Sumin	지수민	수민	1994-03-03	Sonamoo	South Korea	\N	168	0	Yongin	\N	\N	F	Leader	\N	SONAMOO_SuMin	66	0	0
1264	\N	Taeyoung	Kim Taeyoung	김태영	태영	2003-01-27	CRAVITY	South Korea	\N	0	0	\N	\N	\N	M	\N	\N	\N	329	0	0
1266	\N	TAG	Son Youngtaek	손영택	태그	1998-04-13	Golden Child	South Korea	\N	0	0	\N	\N	\N	M	\N	\N	\N	258	0	0
1267	\N	TAG	Yeom Taekyun	염태균	태그	2002-09-30	Ciipher	South Korea	\N	176	54	\N	\N	\N	M	\N	\N	\N	362	0	0
1268	\N	Takuya	Terada Takuya	테라다 타쿠야	타쿠야	1992-03-18	CROSS GENE	Japan	\N	187	68	Moriya	\N	\N	M	\N	\N	\N	217	0	0
255	\N	Euaerin	Lee Hyemin	이혜민	이유애린	1988-05-03	\N	South Korea	\N	174	48	Seoul	\N	9Muses	F	\N	\N	\N	\N	0	0
1269	\N	Tan	Choi Seokwon	최석원	탄	1996-08-25	Ciipher	South Korea	\N	184	75	\N	\N	\N	M	\N	\N	\N	362	0	0
1272	\N	Ten	Chittaphon Leechaiyapornkul	칫따폰 리차이야뽄꾼	텐	1996-02-27	NCT	Thailand	\N	0	0	Bangkok	NCT U,SuperM	\N	M	\N	\N	\N	231	0	0
1273	\N	Teo	Jang Sungsik	장성식	테오	1997-10-22	DKB	South Korea	\N	177	64	\N	\N	\N	M	\N	\N	\N	327	0	0
1280	\N	Tina	Christine Joy Park	크리스틴 조이 박	티나	1994-09-01	Blady	USA	South Korea	0	0	Los Angeles	\N	\N	F	\N	nuhmootina	\N	26	0	0
1282	\N	U	Mizuguchi Yuto	미즈구치 유토	유	1999-03-16	ONF	Japan	\N	0	0	Osaka	\N	\N	M	\N	\N	\N	260	0	0
1292	\N	Victoria	Song Qian	송치엔	빅토리아	1987-02-02	f(x)	China	\N	168	45	Qingdao	\N	\N	F	\N	victoria02_02	\N	36	0	0
1294	\N	Villain	Lee Seunghyun	이승현	빌런	1998-07-17	Spectrum	South Korea	\N	0	0	\N	\N	\N	M	\N	\N	\N	292	0	0
1295	\N	Vita	Kim Jimin	김지민	비타	2000-02-03	MAJORS	South Korea	\N	168	54	\N	\N	\N	F	\N	\N	\N	180	0	0
1298	\N	Way	Heo Minsun	허민선	웨이	1990-07-12	Crayon Pop	South Korea	\N	161	0	Seoul	\N	\N	F	\N	baysunny	\N	17	0	0
1299	\N	Wei	Lee Sungjun	이성준	웨이	1996-07-08	UP10TION	South Korea	\N	0	0	Seoul	\N	\N	M	\N	\N	\N	247	0	0
1252	https://dbkpop.com/wp-content/uploads/2019/04/1the9_debut_taekhyeon_profile.jpg	Taekhyeon	Jung Taekhyeon	정택현	택현	2003-07-28	1the9	South Korea	\N	178	66	Gunpo	\N	\N	M	\N	\N	\N	325	0	0
1275	https://dbkpop.com/wp-content/uploads/2016/12/seventeen_the8_3.jpg	The8	Xu Minghao	쉬밍하오	디에잇	1997-11-07	Seventeen	China	\N	175	53	Anshan	\N	\N	M	\N	\N	\N	237	0	0
1250	https://dbkpop.com/wp-content/uploads/2018/01/block_b_remontage_taeil_profile.jpg	Taeil	Lee Taeil	이태일	태일	1990-09-24	Block B	South Korea	\N	167	57	Seoul	\N	\N	M	\N	\N	\N	191	0	0
1249	https://dbkpop.com/wp-content/uploads/2019/01/TXT_Taehyun_Profile_Blue_Hour.jpg	Taehyun	Kang Taehyun	강태현	태현	2002-02-05	TXT	South Korea	\N	0	0	\N	\N	\N	M	\N	\N	\N	326	0	0
1289	https://dbkpop.com/wp-content/uploads/2018/10/gfriend_memoria_umji_profile.jpg	Umji	Kim Yewon	김예원	엄지	1998-08-19	Gfriend	South Korea	\N	163	0	Incheon	\N	\N	F	\N	\N	\N	48	0	0
1303	\N	Win	Bang Junhyuk	방준혁	윈	2004-12-19	MCND	South Korea	\N	0	0	\N	\N	\N	M	\N	\N	\N	337	0	0
1305	\N	Winwin	Dong Sicheng	뚱쓰청	윈윈	1997-10-28	NCT	China	\N	0	0	Zhejiang	NCT 127	\N	M	\N	\N	\N	231	0	0
1307	\N	Won Hyuk	Won Hyuk	원혁	원혁	2002-02-22	E'LAST	South Korea	\N	181	63	\N	\N	\N	M	\N	\N	\N	335	0	0
1308	\N	Woncheol	Jung Woncheol	정원철	원철	1996-01-12	MY.st	South Korea	\N	0	0	\N	\N	\N	M	\N	\N	\N	338	0	0
277	\N	Eunki	Hong Eunki	홍은기	은기	1997-09-29	\N	South Korea	\N	182	0	\N	\N	RAINZ	M	\N	eun_doitz	eun_doit2	\N	0	0
1312	\N	Wonjin	Ham Wonjin	함원진	원진	2001-03-22	CRAVITY	South Korea	\N	174	57	\N	\N	\N	M	\N	\N	\N	329	0	0
279	\N	Eunsang	Lee Eunsang	이은상	은상	2002-10-26	\N	South Korea	\N	180	58	\N	\N	X1	M	\N	\N	\N	\N	0	0
281	\N	Eunsung	Lee Eunsung	이은성	은성	2000-09-07	TheEastLight	South Korea	\N	0	0	\N	\N	\N	M	\N	\N	\N	\N	0	0
1313	\N	Wonjun	Lee Wonjun	이원준	원준	2002-03-08	E'LAST	South Korea	\N	0	0	\N	\N	\N	M	\N	\N	\N	335	0	0
1314	\N	Wonpil	Kim Wonpil	김원필	원필	1994-04-28	DAY6	South Korea	\N	0	0	\N	\N	\N	M	Keyboardist	\N	\N	218	0	0
1318	\N	Woo-ah	Kim Chaewon	김채원	우아	1997-06-20	CRAXY	South Korea	\N	0	0	\N	\N	\N	F	\N	\N	\N	154	0	0
1319	\N	Woobin	Seo Woobin	서우빈	우빈	2000-10-16	CRAVITY	South Korea	\N	0	0	\N	\N	\N	M	\N	\N	\N	329	0	0
286	\N	Eyedi	Nam Yujin	남유진	아이디	1995-12-08	\N	South Korea	\N	0	0	\N	\N	\N	F	\N	\N	\N	\N	0	0
1320	\N	Woochul	Shin Woochul	신우철	우철	2002-10-02	Newkidd	South Korea	\N	0	0	\N	\N	\N	M	\N	\N	\N	321	0	0
1321	\N	Woodam	Park Woodam	박우담	우담	1995-08-02	D1CE	South Korea	\N	173	0	\N	\N	\N	M	\N	\N	\N	346	0	0
290	\N	G.NA	Gina Jane Choi	최지나	지나	1987-09-13	\N	Canada	South Korea	167	0	Edmonton	\N	\N	F	\N	missginachoi87	\N	\N	0	0
294	\N	Gaeun	Cho Kaeun	조가은	가은	1992-07-28	\N	South Korea	\N	0	0	Changwon	\N	Dal Shabet	F	\N	\N	\N	\N	0	0
295	\N	Gaga	Lee Soobin	이수빈	가가	1994-11-10	Gate9	South Korea	\N	164	0	\N	\N	\N	F	\N	gagag9	\N	\N	0	0
296	\N	Gaga	Li Jia Jia	리 지아 지아	가가	1999-09-01	\N	China	\N	0	0	\N	\N	NATURE	F	\N	\N	\N	\N	0	0
280	https://dbkpop.com/wp-content/uploads/2019/04/wjsn_wj_stay_eunseo_profile.jpg	Eunseo	Son Juyeon	손주연	은서	1998-05-27	Cosmic Girls	South Korea	\N	167	0	Incheon	WJSN The Black	\N	F	\N	_eunseo_v	\N	\N	0	0
271	https://dbkpop.com/wp-content/uploads/2017/01/dia_eunjin_1.jpg	Eunjin	Ahn Eunjin	안은진	은진	1997-08-31	\N	South Korea	\N	170	49	Mokpo	\N	DIA	F	\N	\N	\N	\N	0	0
246	https://dbkpop.com/wp-content/uploads/2019/06/clc_me_elkie_profile.jpg	Elkie	Chong Ting Yan	쫑딩얀	엘키	1998-11-02	\N	Hong Kong	\N	163	45	Hong Kong	\N	CLC	F	\N	\N	\N	\N	0	0
300	\N	Gayoon	Heo Gayoon	허가윤	가윤	1990-05-18	4minute	South Korea	\N	165	0	Seoul	2YOON	\N	F	\N	gayoon_heo	\N	6	0	0
304	\N	Gijung	Kim Gijung	김기중	기중	2001-01-24	IM	South Korea	\N	180	0	\N	\N	\N	M	\N	\N	\N	\N	0	0
303	\N	Gihwan	Kim Gihwan	김기환	기환	1993-11-24	SIGNAL	South Korea	\N	0	0	\N	\N	\N	M	\N	\N	\N	328	0	0
308	\N	Giseok	Jun Giseok	정기석	기석	1997-05-02	IM	South Korea	\N	180	0	\N	\N	\N	M	\N	\N	\N	\N	0	0
319	\N	Green	Kim Jiwon	김지원	지니	1997-07-01	RedSquare	South Korea	\N	0	0	Daegu	\N	Good Day	F	Vocalist	\N	\N	156	0	0
310	\N	Go_U	Jang Junho	고유	장준호	2001-06-15	BLITZERS	South Korea	\N	0	0	\N	\N	\N	M	\N	\N	\N	\N	0	0
351	\N	Hanbyul	Kyung Hanbyul	경한별	한별	2005-07-01	PRECIOUS	South Korea	\N	167	49	Seoul	\N	\N	F	\N	\N	\N	167	0	0
312	\N	Gohn	Kim Dongsung	김동성	곤	1992-08-01	\N	South Korea	\N	0	0	Seoul	\N	Topp Dogg	M	\N	\N	\N	\N	0	0
352	https://dbkpop.com/wp-content/uploads/2018/05/dreamcatcher_escape_the_era_handong_profile.jpg	Handong	Han Dong	한동	한동	1996-03-26	Dreamcatcher	China	\N	0	0	Wuhan	\N	\N	F	\N	\N	\N	80	0	0
297	https://dbkpop.com/wp-content/uploads/2018/05/dreamcatcher_escape_the_era_gahyeon_profile.jpg	Gahyeon	Lee Gahyeon	이가현	가현	1999-02-03	Dreamcatcher	South Korea	\N	0	0	Seongnam	\N	\N	F	\N	\N	\N	80	0	0
316	https://dbkpop.com/wp-content/uploads/2018/08/loona__gowon_profile.jpg	Gowon	Park Chaewon	박채원	고원	2000-11-19	LOONA	South Korea	\N	0	0	\N	Loona yyxy	\N	F	\N	\N	\N	78	0	0
298	\N	Gain	Son Gain	손가인	가인	1987-09-20	Brown Eyed Girls	South Korea	\N	0	0	\N	\N	\N	F	\N	songain87	\N	8	0	0
299	\N	Gaon	Beom Gaon	범가온	가온	2001-03-09	Bonus Baby	South Korea	\N	163	0	\N	\N	\N	F	\N	\N	\N	73	0	0
302	\N	Geummi	Baek Boram	백보람	금미	1988-06-18	Crayon Pop	South Korea	\N	165	0	Seoul	\N	\N	F	Leader	g.mi	\N	17	0	0
305	\N	Gikwang	Lee Gikwang	이기광	기광	1990-03-30	Highlight	South Korea	\N	171	58	Gwangju	\N	Beast	M	\N	\N	\N	192	0	0
306	\N	Giru	Park Giru	박기루	기루	1991-08-14	Blady	South Korea	\N	0	0	Incheon	\N	\N	F	\N	giru_p	\N	26	0	0
1323	\N	Woohyun	Nam Woohyun	남우현	우현	1991-02-08	Infinite	South Korea	\N	176	52	Seoul	Toheart	\N	M	\N	\N	\N	188	0	0
1324	\N	Woojin	Park Woojin	박우진	우진	1999-11-02	AB6IX	South Korea	\N	0	0	Busan	\N	Wanna One	M	\N	\N	\N	320	0	0
1327	\N	Woojin	Lee Woojin	이우진	우진	2003-04-07	Ghost9	South Korea	\N	178	65	\N	TEEN TEEN	\N	M	\N	\N	\N	354	0	0
1328	\N	Woojin	Lee Woojin	이우진	우진	1996-11-22	MY.st	South Korea	\N	0	0	\N	\N	\N	M	\N	\N	\N	338	0	0
1329	\N	Woojoo	Kim Woojoo	김우주	우주	1996-08-12	Wassup	South Korea	\N	0	0	\N	\N	\N	F	\N	\N	\N	46	0	0
1330	\N	Woojoo	Kim Sangyoon	김상윤	우주	1996-09-18	14U	South Korea	\N	0	0	\N	\N	\N	M	\N	\N	\N	264	0	0
329	\N	Habin	Yoo Habin	유하빈	하빈	2002-03-10	\N	South Korea	\N	165	48	\N	\N	Dreamnote	F	\N	\N	\N	\N	0	0
1332	\N	Woolim	Hwang Woolim	황우림	우림	1996-08-29	Playback	South Korea	\N	0	0	\N	\N	\N	F	\N	\N	\N	69	0	0
1333	\N	Woonggi	Cha Woonggi	차웅기	웅기	2002-04-23	TOO	South Korea	\N	0	0	\N	\N	\N	M	\N	\N	\N	340	0	0
1334	\N	Woori	Go Woori	고우리	우리	1988-02-22	Rainbow	South Korea	\N	165	44	Jeonju	Rainbow Blaxx	\N	F	\N	\N	\N	38	0	0
1336	\N	Wooshin	Kim Wooseok	김우석	우신	1996-10-27	UP10TION	South Korea	\N	0	0	Daejeon	\N	X1	M	\N	\N	\N	247	0	0
1337	\N	Woosu	Kim Minseok	김민석	우수	1999-11-23	IZ	South Korea	\N	0	0	\N	\N	\N	M	\N	\N	\N	301	0	0
1339	\N	Wooyeon	Park Jinkyung	박진경	우연	2003-02-11	woo!ah!	South Korea	\N	0	0	\N	\N	\N	F	Vocalist	\N	\N	158	0	0
1341	\N	Wooyoung	Jang Wooyoung	장우영	우영	1989-04-30	2PM	South Korea	\N	178	65	Busan	\N	\N	M	\N	\N	\N	202	0	0
1342	\N	Wooyoung	Jung Wooyoung	정우영	우영	1999-11-26	ATEEZ	South Korea	\N	172	0	\N	\N	\N	M	\N	\N	\N	283	0	0
1344	\N	Wow	Kim Seyoon	김세윤	와우	1993-02-28	A.C.E	South Korea	\N	0	0	Gyeonggi	\N	\N	M	\N	\N	\N	265	0	0
339	\N	Haeyeon	Lee Taeyeon	이태연	해연	1994-01-11	Gate9	South Korea	\N	161	0	\N	\N	\N	F	\N	ha2y2on_gnine	\N	\N	0	0
1345	\N	Wyatt	Shim Jaeyoung	심재영	와이엇	1995-01-23	ONF	South Korea	\N	0	0	Seoul	\N	\N	M	\N	\N	\N	260	0	0
1346	\N	Xeheun	Lee Seheun	이세흔	세흔	1999-07-11	Girlkind	South Korea	\N	0	162	\N	\N	\N	F	\N	\N	\N	105	0	0
1353	\N	Xiumin	Kim Minseok	김민석	시우민	1990-03-26	EXO	South Korea	\N	173	65	Guri	EXO-CBX	\N	M	\N	\N	\N	187	0	0
1357	\N	Y	Choi Sungyoon	최성윤	와이	1995-07-31	Golden Child	South Korea	\N	0	0	\N	\N	\N	M	\N	\N	\N	258	0	0
345	\N	Han Geng	Han Geng	한경	한경	1984-02-09	\N	China	\N	181	66	Mudanjiang	\N	Super Junior	M	\N	\N	\N	\N	0	0
346	\N	Han Hyeri	Han Hyeri	한혜리	한혜리	1997-08-24	I.B.I	South Korea	\N	159	42	Gwangmyeong	\N	\N	F	\N	soh_eee	\N	\N	0	0
350	\N	Hanbyeol	Ahn Hanbyeol	안한별	한별	2003-10-13	\N	South Korea	\N	166	44	\N	\N	Dreamnote	F	\N	\N	\N	\N	0	0
355	\N	Hangyeom	Song Hangyeom	송한겸	한겸	1996-07-17	OMEGA X	South Korea	\N	0	0	\N	\N	7 O'clock	M	\N	\N	\N	\N	0	0
341	https://dbkpop.com/wp-content/uploads/2017/10/neonpunch_predebut_hajeong_profile.jpg	Hajeong	Lee Hajeong	이하정	하정	1997-09-23	\N	South Korea	\N	0	0	\N	\N	NeonPunch	F	\N	sunghyuk_seo	\N	\N	0	0
358	\N	Hanna	Shin Jiyeon	신지연	한나	1994-02-19	MIXX	South Korea	\N	170	48	\N	\N	\N	F	Leader	\N	\N	77	0	0
360	\N	Hansol	Kim Hansol	김한솔	한솔	1993-06-15	\N	South Korea	\N	0	0	Busan	\N	Topp Dogg	M	\N	\N	\N	\N	0	0
363	\N	Harin	Ju Harin	주하린	주하린	1998-03-29	Onewe	South Korea	\N	0	0	\N	\N	MAS	M	\N	\N	\N	\N	0	0
361	\N	Hanwoom	Byun Hanwoom	변한움	한움	2001-06-05	PRECIOUS	South Korea	\N	160	43	Seoul	\N	\N	F	\N	\N	\N	167	0	0
369	\N	Haru	Abe Haruno	아베 하루노	하루	2000-02-21	NATURE	Japan	\N	0	0	\N	\N	\N	F	\N	\N	\N	109	0	0
368	\N	Haru	Han Sangsook	한상숙	하루	1994-07-06	Gate9	South Korea	\N	160	0	Bucheon	\N	\N	F	\N	hanharuuu	\N	\N	0	0
370	\N	Haru	Lee Yoojeong	이유정	하루	1997-02-26	Ho1iday	South Korea	\N	164	0	\N	\N	MyB	F	\N	\N	\N	\N	0	0
392	\N	Heeyu	Choi Heejae	최희재	희유	1995-06-30	MIXX	South Korea	\N	159	0	\N	\N	\N	F	\N	\N	\N	77	0	0
403	\N	Hojung	Go Hojung	고호정	호정	1994-10-20	HOTSHOT	South Korea	\N	0	0	\N	\N	\N	M	\N	\N	\N	289	0	0
383	https://dbkpop.com/wp-content/uploads/2018/08/loona__heejin_profile.jpg	Heejin	Jeon Heejin	전희진	희진	2000-10-19	LOONA	South Korea	\N	0	0	Seongnam	Loona 1/3	\N	F	\N	\N	\N	78	0	0
359	\N	Hanse	Do Hanse	도한세	한세	1997-09-25	VICTON	South Korea	\N	0	0	\N	\N	\N	M	\N	\N	\N	248	0	0
362	\N	Hara†	Koo Hara	구하라	하라	1991-01-13	KARA	South Korea	\N	0	0	Gwangju	\N	\N	F	\N	\N	\N	2	0	0
364	\N	Harin	\N	\N	하린	1995-11-21	Lusty	South Korea	\N	160	43	Seoul	\N	\N	F	Sub Vocal	\N	\N	142	0	0
365	\N	Harin	Park Guenhye	박근혜	하린	2000-05-26	Pink Fantasy	South Korea	\N	164	48	\N	\N	\N	F	\N	\N	\N	118	0	0
1355	https://dbkpop.com/wp-content/uploads/2017/01/pristin_we_like_xiyeon_profile.jpg	Xiyeon	Park Junghyun	박정현	시연	2000-11-14	Pristin	South Korea	\N	164	51	\N	\N	\N	F	\N	\N	\N	79	0	0
1343	https://dbkpop.com/wp-content/uploads/2016/12/seventeen_woozi_2.jpg	Woozi	Lee Jihoon	이지훈	우지	1996-11-22	Seventeen	South Korea	\N	165	54	Busan	\N	\N	M	\N	\N	\N	237	0	0
1358	https://dbkpop.com/wp-content/uploads/2018/04/pentagon_positive_yanan_profile.jpg	Yan An	Yan An	옌안	옌안	1996-10-25	PENTAGON	China	\N	0	0	Shanghai	\N	\N	M	\N	\N	\N	234	0	0
1361	https://dbkpop.com/wp-content/uploads/2018/05/uni.t_Yebin_profile.jpg	Yebin	Baek Yebin	백예빈	예빈	1997-07-13	DIA	South Korea	\N	164	43	Chuncheon	UNI.T	\N	F	\N	\N	\N	33	0	0
1340	https://dbkpop.com/wp-content/uploads/2017/10/trcng_wooyeop_profile.jpg	Wooyeop	Jo Wooyeop	조우엽	우엽	2000-09-27	TRCNG	South Korea	\N	179	0	\N	\N	\N	M	\N	\N	\N	271	0	0
385	\N	Heejoo	Jeon Heejoo	전희주	희주	1996-11-30	Ho1iday	South Korea	\N	0	0	\N	\N	MyB	F	\N	\N	\N	\N	0	0
1306	https://dbkpop.com/wp-content/uploads/2019/04/1the9_debut_sungwon_profile.jpg	Won	Park Sungwon	박성원	성원	2003-12-18	Ciipher	South Korea	\N	177	58	Seoul	\N	1the9	M	\N	\N	\N	362	0	0
1322	https://dbkpop.com/wp-content/uploads/2017/02/unit_woohee.jpg	Woohee	Bae Woohee	배우희	우희	1991-09-21	Dal Shabet	South Korea	\N	0	0	Busan	UNI.T	\N	F	\N	\N	\N	11	0	0
1374	\N	Yellow	Kim Eunbi	김은비	노랑	1993-05-05	Pungdeng-E	South Korea	\N	156	0	Seoul	\N	\N	F	\N	\N	\N	61	0	0
1376	\N	Yena	Jeong Yena	정예나	예나	2000-04-10	G-reyish	South Korea	\N	0	0	\N	\N	\N	F	\N	\N	\N	87	0	0
1382	\N	Yeonha	Ahn Yeonji	안연지	연하	2000-05-19	P.O.P	South Korea	\N	0	0	Yeondong	\N	\N	F	\N	\N	\N	86	0	0
1383	\N	Yeonhee	Kim Yeonhee	김연희	연희	2000-12-06	Rocket Punch	South Korea	\N	161	0	\N	\N	\N	F	\N	\N	\N	163	0	0
393	\N	Henny	Kang Gayoung	강가영	헤니	1994-12-01	\N	South Korea	\N	168	50	\N	\N	MIXX	F	\N	\N	\N	\N	0	0
394	\N	Henry	Henry Lau	헨리 라우	헨리	1989-10-11	Super Junior-M	Canada	Hong Kong, Taiwan	176	63	Toronto	\N	\N	M	\N	\N	\N	\N	0	0
1384	\N	Yeonho	Ju Yeonho	주연호	연호	2000-05-31	Verivery	South Korea	\N	0	0	\N	\N	\N	M	\N	\N	\N	286	0	0
1385	\N	Yeonjoo	Song Yeonjoo	정연주	연주	1997-06-26	P.O.P	South Korea	\N	0	0	Ansan	\N	\N	F	\N	\N	\N	86	0	0
1388	\N	Yeontae	Jeong Yeontae	정연태	연태	1992-07-06	IN2IT	South Korea	\N	178	58	\N	\N	\N	M	\N	\N	\N	299	0	0
1394	\N	Yeosang	Kang Yeosang	강여상	여상	1999-06-15	ATEEZ	South Korea	\N	173	0	Incheon	\N	\N	M	\N	\N	\N	283	0	0
399	\N	Hina	\N	\N	히나	2003-04-07	LIGHTSUM	Japan	\N	0	0	\N	\N	\N	F	\N	\N	\N	\N	0	0
1395	\N	Yeoun	Lee Kyeongbin	이경빈	여운	1997-09-03	ARGON	South Korea	\N	0	0	\N	\N	\N	M	\N	\N	\N	344	0	0
1400	\N	Yerin	Baek Yerin	백예린	백예린	1997-06-26	15&	South Korea	\N	165	0	Daejeon	\N	\N	F	\N	yerinb	\N	32	0	0
402	\N	Hojoon	Jeon Hojoon	전호준	호준	1992-10-31	Topp Dogg	South Korea	\N	0	0	Gwangju	\N	\N	M	\N	\N	\N	\N	0	0
1402	\N	Yeryung	\N	\N	예령	2002-06-22	Lusty	South Korea	\N	169	49	Busan	\N	\N	F	Sub Vocal	\N	\N	142	0	0
1403	\N	Yeseo	Kang Yeseo	강예서	예서	2005-08-22	Busters	South Korea	\N	0	0	\N	\N	\N	F	\N	\N	\N	130	0	0
406	\N	Hongil	Yoon Hongil	윤홍일	홍일	1999-01-11	Astin	South Korea	\N	0	0	\N	\N	\N	M	\N	\N	\N	\N	0	0
1404	\N	Yeso	Lee Yeso	이예소	예소	2001-11-13	G-reyish	South Korea	\N	0	0	\N	\N	\N	F	\N	\N	\N	87	0	0
1405	\N	Yesung	Kim Jongwoon	김종운	예성	1984-08-24	Super Junior	South Korea	\N	178	64	Seoul	\N	\N	M	\N	\N	\N	184	0	0
1407	\N	Yezi	Lee Yeji	이예지	예지	1994-08-26	Fiestar	South Korea	\N	161	0	Gangneung	\N	\N	F	\N	-	fiestar__yezi	41	0	0
1408	\N	Yibo	Wang Yibo	왕이보	이보	1997-08-05	UNIQ	China	\N	182	65	\N	\N	\N	M	\N	\N	\N	250	0	0
413	\N	Hoya	Lee Howon	이호원	호야	1991-03-28	\N	South Korea	\N	178	60	Busan	Infinite H	Infinite	M	\N	\N	\N	\N	0	0
378	https://dbkpop.com/wp-content/uploads/2017/10/brave_girls_hayun_profile.jpg	Hayun	Lee Hayun	이하윤	하윤	1994-08-29	\N	South Korea	\N	0	0	Changwon	\N	Brave Girls	F	\N	hayoon.y	\N	\N	0	0
423	\N	Hwani	Jo Sihyeon	조시환	화니	1994-11-16	DUSTIN	South Korea	\N	0	0	\N	\N	\N	M	\N	\N	\N	333	0	0
458	\N	Hyogyeong	Jang Hyogyeong	장효경	효경	1999-11-15	ARIAZ	South Korea	\N	0	0	\N	\N	\N	F	\N	\N	\N	150	0	0
420	\N	Huiyeon	Oh Huiyeon	오휘연	휘연	2005-08-01	LIGHTSUM	South Korea	\N	0	0	\N	\N	\N	F	\N	\N	\N	\N	0	0
470	\N	Hyuna	Kim Hyuna	김현아	현아	1992-06-06	4minute	South Korea	\N	164	0	Jeolla	\N	Wonder Girls	F	\N	hyunah_aa	\N	6	0	0
436	https://dbkpop.com/wp-content/uploads/2018/05/aoa_bingle_bangle_hyejeong_profile.jpg	Hyejeong	Shin Hyejeong	신혜정	혜정	1993-08-10	AoA	South Korea	\N	170	48	Seoul	\N	\N	F	\N	dongdong810	\N	10	0	0
417	\N	Hui	Liang Hui	양휘	양휘	1995-07-18	24K	China	\N	178	58	\N	\N	\N	M	\N	\N	\N	205	0	0
419	\N	Huijun	Noh Huijun	노휘준	휘준	2003-10-07	MCND	South Korea	\N	0	0	\N	\N	\N	M	\N	\N	\N	337	0	0
1409	\N	Yijeong	Jang Yijeong	장이정	이정	1993-09-10	HISTORY	South Korea	\N	173	58	Jinju	\N	\N	M	\N	\N	\N	214	0	0
1411	\N	Yixuan	Zhou Yixuan	조이쉔	이쉔	1990-12-11	UNIQ	China	\N	183	65	\N	\N	\N	M	\N	\N	\N	250	0	0
1412	\N	Yiyeon	Jung Dasol	정다솔	이연	1995-05-28	BVNDIT	South Korea	\N	0	0	\N	\N	\N	F	\N	\N	\N	144	0	0
1414	\N	Yonggeun	Jo Yonggeun	조용근	용근	1995-01-23	D1CE	South Korea	\N	174	54	\N	\N	\N	M	\N	\N	\N	346	0	0
1370	https://dbkpop.com/wp-content/uploads/2018/07/lovelyz_wag_zak_yein_profile.jpg	Yein	Jeong Yein	정예인	예인	1998-06-04	Lovelyz	South Korea	\N	166	0	Incheon	\N	\N	F	\N	\N	\N	45	0	0
1366	https://dbkpop.com/wp-content/uploads/2019/06/clc_me_yeeun_profile.jpg	YeeEun	Jang Yeeun	장예은	예은	1998-08-10	CLC	South Korea	\N	166	0	Dongducheon	\N	\N	F	\N	\N	\N	23	0	0
1398	https://dbkpop.com/wp-content/uploads/2017/11/red_velvet_perfect_velvet_yeri_profile.jpg	Yeri	Kim Yerim	김예림	예리	1999-03-05	Red Velvet	South Korea	\N	158	0	Seoul	\N	\N	F	\N	\N	\N	37	0	0
1401	https://dbkpop.com/wp-content/uploads/2018/10/gfriend_memoria_yerin_profile.jpg	Yerin	Jung Yerin	정예린	예린	1996-08-19	Gfriend	South Korea	\N	167	0	Incheon	\N	\N	F	\N	\N	\N	48	0	0
1379	https://dbkpop.com/wp-content/uploads/2018/04/pentagon_positive_yeo_one_profile.jpg	Yeo One	Yeon Changgu	여창구	여원	1996-03-27	PENTAGON	South Korea	\N	0	0	\N	\N	\N	M	\N	\N	\N	234	0	0
1417	https://dbkpop.com/wp-content/uploads/2019/07/CIX_Hello_Stranger_Concept_Yonghee.jpg	Yonghee	Kim Yonghee	김용희	용희	2000-02-17	CIX	South Korea	\N	177	59	\N	\N	\N	M	\N	\N	\N	317	0	0
1386	https://dbkpop.com/wp-content/uploads/2019/01/TXT_Yeonjun_Profile_Blue_Hour.jpg	Yeonjun	Choi Yeonjun	최연준	연준	1999-09-13	TXT	South Korea	\N	183	63	\N	\N	\N	M	\N	\N	\N	326	0	0
1378	https://dbkpop.com/wp-content/uploads/2016/12/wonder_girls_yeeun_1.jpg	Yenny	Park Yeeun	박예은	예은	1989-05-26	Wonder Girls	South Korea	\N	165	0	Goyang	\N	\N	F	\N	hatfelt	\N	14	0	0
1410	https://dbkpop.com/wp-content/uploads/2020/09/Everglow_77.82X_78.29_La_Di_Da_Concept_Yiren_3.jpg	Yiren	Wang Yiren	왕이런	이런	2000-12-29	Everglow	China	\N	0	0	\N	\N	\N	F	\N	\N	\N	143	0	0
1420	\N	Yongseok	Kim Yongseok	김용석	용석	1993-01-08	CROSS GENE	South Korea	\N	176	64	Seoul	\N	\N	M	\N	\N	\N	217	0	0
1422	\N	Yongseung	Kim Yongseung	김용승	용승	2000-06-17	Verivery	South Korea	\N	0	0	\N	\N	\N	M	\N	\N	\N	286	0	0
1424	\N	Yoochun	Park Yoochun	박유천	유천	1986-07-04	JYJ	South Korea	\N	0	0	Seoul	\N	TVXQ	M	\N	\N	\N	225	0	0
444	\N	Hyeongjun	Song Hyeongjun	송형준	형준	2002-11-30	\N	South Korea	\N	174	55	\N	\N	X1	M	\N	\N	\N	\N	0	0
1427	\N	Yoojun	Jun Yoojun	정유준	유준	1995-07-26	D1CE	South Korea	\N	0	0	\N	\N	\N	M	\N	\N	\N	346	0	0
1430	\N	Yoojung	Lee Taeyeop	이태엽	유정	1997-05-19	OnlyOneOf	South Korea	\N	0	0	\N	\N	\N	M	\N	\N	\N	334	0	0
447	\N	Hyeongseok	Chu Hyeongseok	추형석	형석	2000-09-13	Astin	South Korea	\N	0	0	\N	\N	\N	M	\N	\N	\N	\N	0	0
448	\N	Hyeongshin	Kim Hyungshin	김형신	형신	2002-05-03	HOT ISSUE	South Korea	\N	0	0	\N	\N	\N	F	\N	\N	\N	\N	0	0
449	\N	Hyeran	Noh Hyeran	노혜란	혜란	1993-04-09	\N	South Korea	\N	0	0	\N	\N	Brave Girls	F	\N	hrannnoh	\N	\N	0	0
1433	\N	Yoon	Heo Yoon	허윤	윤	1994-09-23	4TEN	South Korea	\N	0	0	\N	\N	\N	F	\N	\N	\N	31	0	0
1440	\N	Yoonhye	Jung Yoonhye	정윤혜	윤혜	2001-10-04	FANATICS	South Korea	\N	173	0	\N	FANATICS FLAVOR	\N	F	\N	\N	\N	160	0	0
1441	\N	Yoonji	\N	\N	윤지	1998-07-21	Lusty	South Korea	\N	163	45	\N	\N	\N	F	Rap, Leader	\N	\N	142	0	0
1446	\N	Yoseob	Yang Yoseob	양요섭	요섭	1990-01-05	Highlight	South Korea	\N	171	56	Seoul	\N	Beast	M	\N	\N	\N	192	0	0
1447	\N	Yoshinori	Kanemoto Yoshinori	카네모토 요시노리	요시노리	2000-05-15	Treasure	Japan	\N	0	0	Kobe	\N	\N	M	\N	\N	\N	358	0	0
1448	\N	Youi	Kim Jihyeo	유아이	유아이	2000-04-24	Dreamnote	South Korea	\N	163	45	\N	\N	\N	F	\N	\N	\N	114	0	0
1449	\N	Young K	Kang Young-hyun	강영현	영케이	1993-12-19	DAY6	South Korea	Canada	0	0	\N	\N	\N	M	Bassist	\N	\N	218	0	0
1450	\N	Youngbin	Kim Youngbin	김영빈	영빈	1993-11-23	SF9	South Korea	\N	0	0	\N	\N	\N	M	\N	\N	\N	255	0	0
1456	\N	Youngmin	Jo Youngmin	조영민	영민	1995-04-24	Boyfriend	South Korea	\N	180	0	Anyang	\N	\N	M	\N	\N	\N	204	0	0
1458	\N	Youngseo	Ryu Youngseo	류영서	영서	2002-06-13	BAE173	South Korea	\N	0	0	\N	\N	\N	M	\N	\N	\N	356	0	0
1459	\N	Youngwoong	Cho Youngwoon	조영웅	영웅	1999-05-01	14U	South Korea	\N	0	0	\N	\N	\N	M	\N	\N	\N	264	0	0
465	\N	Hyoyeon	Kim Hyoyeon	김효연	효연	1989-09-22	SNSD	South Korea	\N	158	48	Incheon	\N	\N	F	\N	watasiwahyo	\N	\N	0	0
467	\N	Hyuk	Yang Hyuk	양혁	혁	2000-03-15	OMEGA X	South Korea	\N	183	67	\N	\N	ENOi	M	\N	\N	\N	\N	0	0
469	\N	Hyun	Park Sunghyun	박성현	성현	1997-08-25	7 O'clock	South Korea	\N	176	58	Suwon	\N	\N	M	\N	\N	\N	\N	0	0
471	\N	Hyuna	Moon Hyuna	문현아	현아	1987-01-19	\N	South Korea	\N	172	50	Yeosu	\N	9Muses	F	\N	moongom119	\N	\N	0	0
457	https://dbkpop.com/wp-content/uploads/2017/11/gugudan_chococo_factory_hyeyeon_profile.jpg	Hyeyeon	Cho Hyeyeon	조혜연	혜연	2000-08-05	\N	South Korea	\N	0	0	\N	Gugudan Oguogu	Gugudan	F	\N	\N	\N	\N	0	0
421	https://dbkpop.com/wp-content/uploads/2018/04/The_Boyz_Giddy_Up_Hwall_profile.jpg	Hwall	Heo Hyunjoon	허현준	활	2000-03-09	\N	South Korea	\N	178	56	Busan	\N	The Boyz	M	\N	\N	\N	\N	0	0
477	\N	Hyunho	Lee Hyunho	이현호	현호	1998-11-04	D-CRUNCH	South Korea	\N	0	0	\N	\N	\N	M	\N	\N	\N	291	0	0
479	\N	Hyunji	Kim Hyunji	김현지	현지	1992-06-30	Hashtag	South Korea	\N	165	0	\N	\N	\N	F	\N	\N	\N	\N	0	0
482	\N	Hyunjoo	Lee Hyunjoo	이현주	현주	1998-02-05	UNI.T	South Korea	\N	0	0	Seoul	\N	APRIL	F	\N	\N	\N	110	0	0
484	\N	Hyunkyung	Kim Hyunjong	김현종	현경	1998-09-05	Romeo	South Korea	\N	0	0	\N	\N	\N	M	\N	\N	\N	235	0	0
485	\N	Hyunmin	Byun Hyunmin	변현민	현민	1999-04-17	\N	South Korea	\N	170	0	\N	\N	RAINZ	M	\N	bhm__99	bhm___99	\N	0	0
487	\N	Hyunseo	Go Hyunseo	고현서	현서	1999-06-17	\N	South Korea	\N	0	0	\N	\N	G-reyish	F	\N	\N	\N	\N	0	0
486	\N	Hyunoh	Park Hyunoh	백현우	현우	1999-02-12	D-CRUNCH	South Korea	\N	0	0	\N	\N	\N	M	\N	\N	\N	291	0	0
489	\N	Hyunseung	Jang Hyunseung	장현승	현승	1989-09-03	\N	South Korea	\N	177	58	Suncheon	Troublemaker	Beast	M	\N	\N	\N	\N	0	0
496	\N	Hyunwoo	Baek Hyunwoo	박현오	현오	1999-03-19	D-CRUNCH	South Korea	\N	0	0	\N	\N	\N	M	\N	\N	\N	291	0	0
497	\N	Hyunwook	Ji Hyunwook	지현욱	현욱	1998-07-01	D-CRUNCH	South Korea	\N	0	0	\N	\N	\N	M	\N	\N	\N	291	0	0
532	\N	Jaebin	Deung Bin	등빈	재빈	1997-02-13	VARSITY	China	\N	168	0	Hunan	\N	\N	M	\N	\N	\N	273	0	0
533	\N	Jaechan	Park Jaechan	박재찬	재찬	2001-12-06	Dongkiz	South Korea	\N	177	58	\N	\N	\N	M	\N	\N	\N	347	0	0
480	https://dbkpop.com/wp-content/uploads/2018/08/loona__hyunjin_profile.jpg	Hyunjin	Kim Hyunjin	김현진	현진	2000-11-15	LOONA	South Korea	\N	0	0	Jeonju	Loona 1/3	\N	F	\N	\N	\N	78	0	0
475	\N	Hyungsik	Park Hyungsik	박형식	형식	1991-11-16	ZE:A	South Korea	\N	0	0	Yongin	\N	\N	M	\N	\N	\N	197	0	0
476	\N	Hyungwon	Chae Hyungwon	채형원	형원	1994-01-15	MONSTA X	South Korea	\N	0	0	Gwangju	\N	\N	M	\N	\N	\N	198	0	0
1460	\N	Yua	Mikami Yua	미카미 유아	유아	1993-08-16	Honey Popcorn	Japan	\N	0	0	\N	\N	\N	F	\N	\N	\N	104	0	0
500	\N	I	Cha Yoonji	차윤지	아이	1996-12-02	\N	South Korea	\N	0	0	Busan	\N	\N	F	\N	\N	\N	\N	0	0
1463	\N	Yubin	Kim Yubin	김유빈	유빈	2002-02-27	Bling Bling	South Korea	\N	166	47	\N	\N	\N	F	\N	\N	\N	165	0	0
1465	\N	Yuem	Park Subin	박수빈	유음	1996-12-25	H.U.B	South Korea	\N	0	0	\N	\N	\N	F	\N	\N	\N	99	0	0
1471	\N	Yuji	Son Yuji	손유지	유지	1998-11-25	3YE	South Korea	\N	160	45	\N	\N	Apple.B	F	\N	\N	\N	148	0	0
1473	\N	Yujin	Seo Yoojin	소유진	유진	1994-06-18	Playback	South Korea	\N	0	0	\N	\N	\N	F	\N	\N	\N	69	0	0
1467	https://dbkpop.com/wp-content/uploads/2017/01/pristin_we_like_yuha_profile.jpg	Yuha	Kang Kyungwon	강경원	유하	1997-11-05	Hinapia	South Korea	\N	170	50	\N	\N	Pristin	F	\N	\N	\N	147	0	0
1452	https://dbkpop.com/wp-content/uploads/2018/04/The_Boyz_Giddy_Up_Younghoon_profile.jpg	Younghoon	Kim Younghoon	김영훈	영훈	1997-08-08	The Boyz	South Korea	\N	182	63	\N	\N	\N	M	\N	\N	\N	275	0	0
1461	https://dbkpop.com/wp-content/uploads/2016/12/wonder_girls_yubin_1.jpg	Yubin	Kim Yubin	김유빈	유빈	1988-10-04	Wonder Girls	South Korea	\N	163	0	Gwangju	\N	\N	F	\N	\N	\N	14	0	0
1429	https://dbkpop.com/wp-content/uploads/2017/10/weki_meki_yoojung_profile-1.jpg	Yoojung	Choi Yoojung	최유정	유정	1999-11-12	Weki Meki	South Korea	\N	0	0	Guri	I.O.I, WJMK	\N	F	\N	\N	\N	82	0	0
1472	https://dbkpop.com/wp-content/uploads/2019/06/clc_me_yujin_profile.jpg	Yujin	Choi Yujin	최유진	유진	1996-08-12	CLC	South Korea	\N	164	0	Jeonju	\N	\N	F	\N	\N	\N	23	0	0
1475	https://dbkpop.com/wp-content/uploads/2018/10/izone_coloriz_ahn_yujin_profile.jpg	Yujin	Ahn Yujin	안유진	유진	2003-09-01	IZ*ONE	South Korea	\N	0	0	Cheongju	\N	\N	F	\N	\N	\N	108	0	0
1476	https://dbkpop.com/wp-content/uploads/2018/10/gfriend_memoria_yuju_profile.jpg	Yuju	Choi Yuna	최유나	유주	1997-10-04	Gfriend	South Korea	\N	169	0	Goyang	\N	\N	F	\N	\N	\N	48	0	0
1453	https://dbkpop.com/wp-content/uploads/2018/04/bap_hands_up_youngjae_profile.jpg	Youngjae	Yoo Youngjae	유영재	영재	1994-01-24	B.A.P	South Korea	\N	178	65	Seoul	\N	\N	M	\N	\N	\N	195	0	0
1466	https://dbkpop.com/wp-content/uploads/2017/10/got7_7_for_7_yugyeom_profile.jpg	Yugyeom	Kim Yugyeom	김유겸	유겸	1997-11-17	GOT7	South Korea	\N	180	64	Namyangju	\N	\N	M	\N	\N	\N	200	0	0
1423	https://dbkpop.com/wp-content/uploads/2016/10/oh_my_girl_yooa_profile_dear_ohmygirl_dun_dun_dance.jpg	Yooa	Yoo Siah	유시아	유아	1995-09-17	Oh My Girl	South Korea	\N	160	50	Seoul	\N	\N	F	\N	\N	\N	35	0	0
1454	https://dbkpop.com/wp-content/uploads/2017/10/got7_7_for_7_youngjae_profile.jpg	Youngjae	Choi Youngjae	최영재	영재	1996-09-17	GOT7	South Korea	\N	175	59	Mokpo	\N	\N	M	\N	\N	\N	200	0	0
1487	\N	Yunji	Lee Yunji	이윤지	윤지	1992-04-04	Playback	South Korea	\N	0	0	\N	\N	\N	F	\N	\N	\N	69	0	0
517	\N	IU	Lee Jieun	이지은	아이유	1993-05-16	\N	South Korea	\N	162	0	Seoul	\N	\N	F	\N	dlwlrma	\N	\N	0	0
1489	\N	Yunkyung	Seo Yunkyung	서윤경	윤경	2001-11-01	Rocket Punch	South Korea	\N	161	0	\N	\N	\N	F	\N	\N	\N	163	0	0
1490	\N	Yunmin	Yun Min	윤민	윤민	2001-02-26	Newkidd	South Korea	\N	0	0	\N	\N	\N	M	\N	\N	\N	321	0	0
1491	\N	Yunseong	Hwang Yunseong	황윤성	윤성	2000-10-30	DRIPPIN	South Korea	Seoul	181	60	\N	\N	\N	M	\N	\N	\N	351	0	0
1497	\N	Yurim	Park Yurim	박유림	유림	1998-04-13	3YE	South Korea	\N	164	0	\N	\N	Apple.B	F	\N	\N	\N	148	0	0
1498	\N	Yuta	Nakamoto Yuta	나카모토 유타	유타	1995-10-26	NCT	Japan	\N	0	0	Osaka	NCT 127	\N	M	\N	\N	\N	231	0	0
534	\N	Jaehan	Kim Jaehan	김재한	재한	1995-07-01	OMEGA X	South Korea	\N	0	0	\N	\N	Spectrum	M	\N	\N	\N	\N	0	0
526	https://dbkpop.com/wp-content/uploads/2016/12/kard_rumor_jseph_profile.jpg	J.seph	Kim Taehyung	김태형	제이셉	1992-06-21	KARD	South Korea	USA	0	0	\N	\N	\N	M	\N	\N	\N	\N	0	0
561	\N	Jeewon	Kim Jiwon	김지원	지원	1999-04-01	Cignature	South Korea	\N	0	0	Busan	\N	Good Day	F	\N	\N	\N	146	0	0
575	\N	Jeongseung	Park Jeongseung	박정승	정승	2002-05-20	D-CRUNCH	South Korea	\N	0	0	\N	\N	\N	M	\N	\N	\N	291	0	0
554	https://dbkpop.com/wp-content/uploads/2016/11/momoland_show_me_jane_profile.jpg	Jane	Sung Jiyeon	성지연	제인	1997-12-20	MOMOLAND	South Korea	\N	167	46	Changwon	\N	\N	F	\N	\N	\N	72	0	0
578	https://dbkpop.com/wp-content/uploads/2016/11/twice_moremore_concept_HD_Jeongyeon_profile.jpg	Jeongyeon	Yoo Jeongyeon	유정연	정연	1996-11-01	Twice	South Korea	\N	168	0	Suwon	\N	\N	F	\N	\N	\N	39	0	0
536	\N	Jaeho	Kim Jaeho	김재호	재호	1992-09-17	HISTORY	South Korea	\N	174	58	\N	\N	\N	M	\N	\N	\N	214	0	0
537	\N	Jaehwan	Kim Jaehwan	김재환	재환	1996-05-27	Wanna One	South Korea	\N	0	0	Seoul	\N	\N	M	\N	\N	\N	256	0	0
1500	\N	Yuuri	Tokunaga Yuuri	도쿠나가 유우리	유우리	2001-05-16	LUNARSOLAR	Japan	\N	0	0	\N	\N	\N	F	\N	\N	\N	174	0	0
1501	\N	Yuvin	Song Yuvin	송유빈	유빈	1998-04-28	B.O.Y	South Korea	\N	0	0	\N	\N	MYTEEN	M	\N	\N	\N	331	0	0
1503	\N	YY	Kim Moonyong	김문용	와이와이	1991-08-30	UNVS	South Korea	\N	0	0	\N	\N	\N	M	\N	\N	\N	341	0	0
1506	\N	Zero	Nasukawa Shota	나스카와 쇼타	제로	2003-01-20	T1419	Japan	\N	0	0	\N	\N	\N	M	\N	\N	\N	361	0	0
547	\N	Jaeseok	Park Jaeseok	박재석	재석	1995-11-20	\N	South Korea	\N	0	0	\N	\N	Golden Child	M	\N	\N	\N	\N	0	0
1509	\N	Ziu	Park Heejun	박희준	지우	1997-06-16	VAV	South Korea	\N	185	70	\N	\N	\N	M	\N	\N	\N	294	0	0
1512	\N	Zuho	Bae Juho	백주호	주호	1996-07-04	SF9	South Korea	\N	0	0	\N	\N	\N	M	\N	\N	\N	255	0	0
1513	\N	Zuny	Kim Joomi	김주미	주니	1994-12-08	Ladies' Code	South Korea	\N	0	0	Gwangju	\N	\N	F	\N	\N	\N	43	0	0
16	https://dbkpop.com/wp-content/uploads/2017/01/hello_venus_alice.jpg	Alice	Song Joohee	송주희	앨리스	1990-03-21	Hello Venus	South Korea	\N	166	47	Wonju	\N	\N	F	\N	jh.song_alice	\N	42	0	0
282	https://dbkpop.com/wp-content/uploads/2018/05/pristin_v_like_a_v_eunwoo_profile.jpg	Eunwoo	Jeong Eunwoo	정은우	은우	1998-07-01	Hinapia	South Korea	\N	167	48	\N	Pristin V	Pristin	F	\N	\N	\N	147	0	0
528	https://dbkpop.com/wp-content/uploads/2017/10/got7_7_for_7_jackson_profile.jpg	Jackson	Jackson Wang	잭슨 왕	잭슨	1994-03-28	GOT7	Hong Kong	\N	174	63	Hong Kong	\N	\N	M	\N	\N	\N	200	0	0
200	https://dbkpop.com/wp-content/uploads/2016/12/seventeen_dk_2.jpg	DK	Lee Seongmin	이석민	도겸	1997-02-18	Seventeen	South Korea	\N	178	68	Yongin	\N	\N	M	\N	\N	\N	237	0	0
251	https://dbkpop.com/wp-content/uploads/2018/04/The_Boyz_Giddy_Up_Eric_profile.jpg	Eric	Son Youngjae	손영재	에릭	2000-12-22	The Boyz	South Korea	\N	171	56	\N	\N	\N	M	\N	\N	\N	275	0	0
1493	https://dbkpop.com/wp-content/uploads/2018/04/GI-DLE_2020_Yuqi_Profile.jpg	Yuqi	Song Yuqi	송우기	우기	1999-09-23	(G)I-DLE	China	\N	162	48	Beijing	\N	\N	F	\N	\N	\N	106	0	0
1505	https://dbkpop.com/wp-content/uploads/2016/11/zelo_never_give_up_profile.jpg	Zelo	Choi Junhong	최준홍	젤로	1996-10-15	B.A.P	South Korea	\N	182	63	Mokpo	\N	\N	M	\N	\N	\N	195	0	0
1445	https://dbkpop.com/wp-content/uploads/2017/01/hello_venus_yooyoung.jpg	Yooyoung	Lee Yooyoung	이유영	유영	1995-01-23	Hello Venus	South Korea	\N	170	49	Suwon	\N	\N	F	\N	hv_u0	\N	42	0	0
342	https://dbkpop.com/wp-content/uploads/2017/10/trcng_hakmin_profile.jpg	Hakmin	Lee Hakmin	이학민	학민	2000-09-20	TRCNG	South Korea	\N	171	0	\N	\N	\N	M	\N	\N	\N	271	0	0
562	\N	Jehyun	Moon Jehyun	문제현	제현	1999-04-20	OMEGA X	South Korea	\N	0	0	\N	\N	1TEAM	M	\N	\N	\N	\N	0	0
45	https://dbkpop.com/wp-content/uploads/2017/10/neonpunch_predebut_baekah_profile.jpg	Baekah	Kim Sua	김수아	백아	1999-10-24	XUM	South Korea	\N	0	0	\N	\N	NeonPunch	F	\N	sunghyuk_seo	\N	168	0	0
263	https://dbkpop.com/wp-content/uploads/2017/01/dia_eunchae_1.jpg	Eunchae	Kwon Chaewon	권채원	은채	1999-05-26	DIA	South Korea	\N	0	0	\N	\N	\N	F	\N	\N	\N	33	0	0
565	\N	Jenissi	Kim Taeyang	김태양	제니씨	1991-08-02	\N	South Korea	\N	0	0	Seoul	\N	Topp Dogg	M	\N	\N	\N	\N	0	0
826	https://dbkpop.com/wp-content/uploads/2018/12/blackpink_lisa_profile_the_album.jpg	Lisa	Pranpriya Manoban	쁘란쁘리야 마노반	리사	1997-03-27	BLACKPINK	Thailand	\N	170	46	Bangkok	\N	\N	F	\N	\N	\N	51	0	0
656	https://dbkpop.com/wp-content/uploads/2017/10/Bolbbalgan4_Jiyoung_profile.jpg	Jiyoung	Ahn Jiyoung	안지영	지영	1995-09-14	Bolbbalgan4	South Korea	\N	0	0	Yeongju	\N	\N	F	\N	\N	\N	89	0	0
652	https://dbkpop.com/wp-content/uploads/2017/10/Bolbbalgan4_Jiyoon_profile.jpg	Jiyoon	Woo Jiyoon	우지윤	지윤	1996-01-06	Bolbbalgan4	South Korea	\N	0	0	Yeongju	\N	\N	F	\N	\N	\N	89	0	0
570	\N	Jeonggyu	Lim Jeonggyu	임정규	정규	1997-11-05	7 O'clock	South Korea	\N	181	62	\N	\N	\N	M	\N	\N	\N	\N	0	0
418	https://dbkpop.com/wp-content/uploads/2017/01/dia_newtro_huihyeon_profile_.jpg	Huihyeon	Ki Huihyeon	기희현	희현	1995-06-16	DIA	South Korea	\N	167	46	Namwon	\N	\N	F	\N	\N	\N	33	0	0
1011	https://dbkpop.com/wp-content/uploads/2018/05/pristin_v_like_a_v_roa_profile.jpg	Roa	Kim Minkyung	김민경	로아	1997-07-29	Hinapia	South Korea	\N	172	49	\N	Pristin V	Pristin	F	\N	\N	\N	147	0	0
573	\N	Jeongkyun	Jeong Jeongkyun	정정균	정균	1987-11-27	\N	South Korea	\N	180	60	\N	\N	N-Train, Bigflo	M	\N	\N	\N	\N	0	0
1368	https://dbkpop.com/wp-content/uploads/2017/01/pristin_we_like_yehana_profile.jpg	Yehana	Kim Yewon	김예원	예하나	1999-02-22	Pristin	South Korea	\N	0	0	Ilsan	\N	\N	F	\N	\N	\N	79	0	0
838	https://dbkpop.com/wp-content/uploads/2017/10/weki_meki_lua_profile-1.jpg	Lua	Kim Sookyung	김수경	루아	2000-10-06	Weki Meki	South Korea	\N	0	0	\N	\N	\N	F	\N	\N	\N	82	0	0
582	\N	Jessica	Jessica Jung	제시카 정	제시카	1989-04-18	\N	South Korea	\N	0	0	\N	\N	SNSD	F	\N	jessica.syj	\N	\N	0	0
590	\N	Jian	Kim Jian	김지안	지안	2006-11-04	LIGHTSUM	South Korea	\N	0	0	\N	\N	\N	F	\N	\N	\N	\N	0	0
567	https://dbkpop.com/wp-content/uploads/2017/01/dia_jenny_1.jpg	Jenny	Lee Soyul	이소율	제니	1996-09-04	\N	South Korea	\N	165	47	Seoul	\N	DIA	F	\N	\N	\N	\N	0	0
604	\N	Jihyo	Lee Jihyo	이지효	지효	2001-04-22	PRECIOUS	South Korea	\N	166	49	Gyeonggi	\N	\N	F	\N	\N	\N	167	0	0
605	\N	Jihyun	Nam Jihyun	남지현	지현	1990-01-09	4minute	South Korea	\N	167	0	Seoul	\N	\N	F	\N	njh9019	\N	6	0	0
645	\N	Jiwon	Yang Jiwon	양지원	지원	1988-04-05	UNI.T	South Korea	\N	0	0	Seoul	SPICA-S	SPICA	F	\N	\N	\N	110	0	0
603	https://dbkpop.com/wp-content/uploads/2016/11/Twice_Jihyo_profile_Eyes_wide_open.jpg	Jihyo	Park Jisoo	박지수	지효	1997-02-01	Twice	South Korea	\N	162	0	Guri	\N	\N	F	Leader, Main Vocal	\N	\N	39	0	0
623	https://dbkpop.com/wp-content/uploads/2018/08/loona__jinsoul_profile.jpg	JinSoul	Jung Jinsol	정진솔	진솔	1997-06-13	LOONA	South Korea	\N	0	0	\N	Loona Odd Eye Circle	\N	F	\N	\N	\N	78	0	0
643	https://dbkpop.com/wp-content/uploads/2018/05/dreamcatcher_escape_the_era_jiu_profile.jpg	Jiu	Kim Minji	김민지	지유	1994-05-17	Dreamcatcher	South Korea	\N	167	0	Daejeon	\N	Minx	F	Leader	\N	\N	80	0	0
598	\N	Jihoo	Lim Soojung	임수정	지후	1998-08-05	IZ	South Korea	\N	0	0	\N	\N	\N	M	\N	\N	\N	301	0	0
599	\N	Jihoon	Park Jihoon	박지훈	지훈	1999-05-29	Wanna One	South Korea	\N	0	0	Masan	\N	\N	M	\N	\N	\N	256	0	0
602	\N	Jihun	Kim Jihun	김지훈	지훈	1995-02-20	KNK	South Korea	\N	186	73	\N	\N	\N	M	\N	\N	\N	226	0	0
151	https://dbkpop.com/wp-content/uploads/2017/10/sonamoo_happy_box_part2_dana_profile.jpg	D.ana	Cho Eunae	조은애	디애나	1995-09-10	Sonamoo	South Korea	\N	170	0	Seoul	\N	\N	F	Rapper	\N	SONAMOO_Dana	66	0	0
451	https://dbkpop.com/wp-content/uploads/2016/12/wonder_girls_hyelim_1.jpg	Hyerim	Woo Hyerim	우혜림	혜림 	1992-09-01	Wonder Girls	South Korea	\N	167	0	Seoul	\N	\N	F	\N	wg_lim	\N	14	0	0
612	\N	Jingyu	Lee Jingyu	이진규	진규	1998-04-22	Astin	South Korea	\N	0	0	\N	\N	\N	M	\N	\N	\N	\N	0	0
1335	https://dbkpop.com/wp-content/uploads/2018/04/pentagon_positive_wooseok_profile.jpg	Wooseok	Jeong Wooseok	정우석	우석	1998-01-31	PENTAGON	South Korea	\N	0	0	\N	\N	\N	M	\N	\N	\N	234	0	0
315	https://dbkpop.com/wp-content/uploads/2016/11/b1a4_gongchan_1.jpg	Gongchan	Gong Chansik	공찬식	공찬	1993-08-14	B1A4	South Korea	\N	181	60	Suncheon	\N	\N	M	\N	\N	\N	194	0	0
875	https://dbkpop.com/wp-content/uploads/2016/12/girls_day_everyday5_minah_profile.jpg	Minah	Bang Minah	방민아	민아	1993-05-13	Girl's Day	South Korea	\N	165	47	Incheon	\N	\N	F	\N	bbang_93	\N	13	0	0
558	https://dbkpop.com/wp-content/uploads/2020/09/enhypen_official_profile_Jay_1.jpg	Jay	Park Jongsung	박종성	제이	2002-04-20	ENHYPEN	South Korea	United States	0	0	\N	\N	\N	M	\N	\N	\N	352	0	0
644	https://dbkpop.com/wp-content/uploads/2020/09/p1harmony_profile_jiung_2.jpg	Jiung	Choi Jiwoong	최지웅	지웅	2001-10-07	P1Harmony	South Korea	\N	0	0	\N	\N	\N	M	\N	\N	\N	353	0	0
618	\N	Jinhwa	Choi Jinhwa	최진화	진화	2002-01-15	BLITZERS	South Korea	\N	180	64	\N	\N	\N	M	\N	\N	\N	\N	0	0
619	\N	Jinju	Park Jinju	박진주	진주	1990-04-28	\N	South Korea	\N	0	0	\N	\N	Wassup	F	\N	\N	\N	\N	0	0
83	https://dbkpop.com/wp-content/uploads/2016/11/t-ara_tiamo_boram.jpg	Boram	Jeon Boram	전보람	보람	1986-03-22	T-ara	South Korea	\N	155	45	Seoul	\N	\N	F	\N	bo_ram_0322	\N	4	0	0
943	https://dbkpop.com/wp-content/uploads/2016/12/apink_naeun_1.jpg	Naeun	Son Naeun	손나은	나은	1994-02-10	Apink	South Korea	\N	168	0	Seoul	\N	\N	F	\N	marcella_the_naeun	\N	7	0	0
1499	https://dbkpop.com/wp-content/uploads/2018/04/pentagon_positive_yuto_profile.jpg	Yuto	Adachi Yuto	아다치 유토	유토	1998-01-23	PENTAGON	Japan	\N	0	0	\N	\N	\N	M	\N	\N	\N	234	0	0
455	https://dbkpop.com/wp-content/uploads/2018/10/izone_coloriz_kang_hyewon_profile.jpg	Hyewon	Kang Hyewon	강혜원	혜원	1999-07-05	IZ*ONE	South Korea	\N	0	0	Yangsan	\N	\N	F	\N	\N	\N	108	0	0
409	https://dbkpop.com/wp-content/uploads/2018/04/pentagon_positive_hongseok_profile.jpg	Hongseok	Yang Hongseok	양홍석	홍석	1994-04-17	PENTAGON	South Korea	\N	0	0	\N	\N	\N	M	\N	\N	\N	234	0	0
1038	https://dbkpop.com/wp-content/uploads/2016/11/b1a4_sandeul_1.jpg	Sandeul	Lee Junghwan	이정환	산들	1992-03-20	B1A4	South Korea	\N	178	62	Busan	\N	\N	M	\N	\N	\N	194	0	0
513	https://dbkpop.com/wp-content/uploads/2017/11/red_velvet_perfect_velvet_irene_3_profile.jpg	Irene	Bae Juhyun	배주현	아이린	1991-03-29	Red Velvet	South Korea	\N	161	0	Daegu	Red Velvet - IRENE SEULGI	\N	F	\N	\N	\N	37	0	0
340	https://dbkpop.com/wp-content/uploads/2018/12/cherry_bullet_card_haeyoon.jpg	Haeyoon	Park Haeyoon	박해윤	해윤	1996-01-10	Cherry Bullet	South Korea	\N	157	43	\N	\N	\N	F	\N	\N	\N	113	0	0
1179	https://dbkpop.com/wp-content/uploads/2016/11/t-ara_sugar_free_soyeon.jpg	Soyeon	Park Soyeon	박소연	소연	1987-10-05	T-ara	South Korea	\N	163	46	Andong	\N	\N	F	\N	melodysoyani	\N	4	0	0
631	\N	Jisan	Choi Jinsang	최지상	지산	1999-11-03	Hot Blood Youth	South Korea	\N	0	0	\N	\N	\N	M	\N	\N	\N	\N	0	0
1220	https://dbkpop.com/wp-content/uploads/2017/01/pristin_we_like_sungyeon_profile.jpg	Sungyeon	Bae Sungyeon	배성연	성연	1999-05-25	Pristin	USA	South Korea	0	0	California	\N	\N	F	\N	\N	\N	79	0	0
566	https://dbkpop.com/wp-content/uploads/2018/12/blackpink_Jennie_profile_the_album.jpg	Jennie	Kim Jennie	김제니	제니	1996-01-16	BLACKPINK	South Korea	\N	163	50	Anyang	\N	\N	F	\N	\N	\N	51	4	7
639	\N	Jisun	Hwang Jisun	황지선	지선	1989-10-17	S#aFLA	South Korea	\N	165	46	\N	\N	Girl's Day, New F.O	F	\N	\N	\N	\N	0	0
611	https://dbkpop.com/wp-content/uploads/2016/10/ohmygirl_jine_2.jpg	JinE	Shin Hyejin	신혜진	진이	1995-01-22	\N	South Korea	\N	160	48	Pohang	\N	Oh My Girl	F	\N	\N	\N	\N	0	0
649		Jiwoo	Jeon Jiwoo	전지우	지우	1996-10-04	KARD	South Korea	\N	0	0	\N	\N	\N	F	\N	\N	\N	\N	0	0
651	\N	Jiyoon	Jeon Jiyoon	전지윤	지윤	1990-10-15	4minute	South Korea	\N	165	0	Seoul	2YOON	\N	F	\N	jenyerjiyoon	\N	6	0	0
658	\N	JJ	Jun Jihyeok	전진혁	제이제이	1998-12-11	DUSTIN	South Korea	\N	0	0	\N	\N	\N	M	\N	\N	\N	333	0	0
655	\N	Jiyoung	Kang Jiyoung	강지영	지영	1994-01-18	\N	South Korea	\N	0	0	Paju	\N	KARA	F	\N	\N	\N	\N	0	0
665	\N	Jonghyeong	Kim Jonghyeong	김종형	종형	2002-04-13	Dongkiz	South Korea	\N	178	65	\N	\N	\N	M	\N	\N	\N	347	0	0
657	\N	Jiyul	Yang Jungyoon	양정윤	지율	1991-07-30	\N	South Korea	\N	0	0	Seoul	\N	Dal Shabet	F	\N	\N	\N	\N	0	0
681	\N	Jueun	Jo Jueun	조주은	주은	2001-01-27	ARIAZ	South Korea	\N	0	0	\N	\N	\N	F	\N	\N	\N	150	0	0
708	\N	Junhyuk	Choi Junhyuk	최준혁	준혁	1992-04-21	HOTSHOT	South Korea	\N	0	0	Ulsan	\N	\N	M	\N	\N	\N	289	0	0
709	\N	Junhyuk	Lee Junhyuk	이준혁	이준혁	2000-05-16	Mirae	South Korea	\N	180	63	Seoul	\N	\N	M	\N	\N	\N	360	0	0
667	\N	Jonghyun†	Kim Jonghyun	김종현	종현	1990-04-08	\N	South Korea	\N	173	56	Seoul	\N	SHINee	M	\N	\N	\N	\N	0	0
671	https://dbkpop.com/wp-content/uploads/2018/06/momoland_baam_jooe_profile.jpg	Joo E	Lee Joowon	이주원	주이	1999-08-18	MOMOLAND	South Korea	\N	164	45	Bucheon	\N	\N	F	\N	\N	\N	72	0	0
654	\N	Jiyou	Im Changsook	임창숙	지유	1989-06-15	Two X	South Korea	\N	0	0	\N	\N	\N	F	\N	\N	\N	63	0	0
670	\N	JOO	Jung Minjoo	정민주	주	1990-10-11	\N	South Korea	\N	0	0	Seoul	\N	\N	F	\N	\N	\N	\N	0	0
659	\N	JK	Kim Jikang	김지강	지강	1998-03-17	Girlkind	South Korea	\N	0	161	\N	\N	\N	F	\N	\N	\N	105	0	0
660	\N	Johnny	John Seo	존 서	쟈니	1995-02-09	NCT	USA	\N	0	0	Chicago	NCT 127	\N	M	\N	\N	\N	231	0	0
661	\N	Johyun	Shin Jiwon	신지원	조현	1996-04-14	Berry Good	South Korea	\N	0	0	\N	\N	\N	F	\N	\N	\N	50	0	0
675	\N	Jooyeon	Lee Jooyeon	이주연	주연	1987-03-19	\N	South Korea	\N	0	0	Seoul	\N	After School	F	\N	jupppal	\N	\N	0	0
662	\N	Jongho	Choi Jongho	최종호	종호	2000-10-12	ATEEZ	South Korea	\N	176	0	\N	\N	\N	M	\N	\N	\N	283	0	0
1317	https://dbkpop.com/wp-content/uploads/2018/10/izone_coloriz_jang_wonyoung_profile.jpg	Wonyoung	Jang Wonyoung	장원영	원영	2004-08-31	IZ*ONE	South Korea	\N	0	0	Seoul	\N	\N	F	\N	\N	\N	108	0	0
1391	https://dbkpop.com/wp-content/uploads/2017/01/hello_venus_yeoreum-1-e1484006190478.jpg	Yeoreum	Ahn Chaeyeon	안채연	여름	1996-06-04	Hello Venus	South Korea	\N	167	48	\N	\N	\N	F	\N	\N	\N	42	0	0
1290	https://dbkpop.com/wp-content/uploads/2016/11/bts_V_profile_butter.jpg	V	Kim Taehyung	김태형	뷔	1995-12-30	BTS	South Korea	\N	179	62	Daegu	\N	\N	M	\N	\N	\N	189	0	0
1511	https://dbkpop.com/wp-content/uploads/2020/06/weeekly_we_are_teaser_1_Zoa.jpg	Zoa	Cho Hyewon	조혜원	조아	2005-05-31	Weeekly	South Korea	\N	170	0	\N	\N	\N	F	Rapper, Sub Vocal	\N	\N	153	0	0
1485	https://dbkpop.com/wp-content/uploads/2019/07/itzy_itz_icy_concept_profile_yuna.jpg	Yuna	Shin Yuna	신유나	유나	2003-12-09	ITZY	South Korea	\N	0	0	\N	\N	\N	F	\N	\N	\N	141	0	0
683	\N	Juhan	Hong Seunghyun	홍승현	주한	2001-06-21	BLITZERS	South Korea	\N	0	0	\N	\N	\N	M	\N	\N	\N	\N	0	0
684	\N	Juhyeon	Lee Juhyeon	이주현	주현	2004-04-08	LIGHTSUM	South Korea	\N	171	48	\N	\N	\N	F	\N	\N	\N	\N	0	0
64	https://dbkpop.com/wp-content/uploads/2016/10/oh_my_girl_binnie_profile_dear_ohmygirl_dun_dun_dance.jpg	Binnie	Bae Yubin	배유빈	비니	1997-09-09	Oh My Girl	South Korea	\N	161	49	Chuncheon	\N	\N	F	\N	\N	\N	35	0	0
686	\N	Juju	Park Juyoung	박주영	쥬쥬	1996-01-03	Gate9	South Korea	\N	168	0	Changwon	\N	\N	F	\N	baby.juju_0	\N	\N	0	0
108	https://dbkpop.com/wp-content/uploads/2018/10/izone_coloriz_lee_chaeyeon_profile.jpg	Chaeyeon	Lee Chaeyeon	이채연	채연	2000-01-11	IZ*ONE	South Korea	\N	0	0	Yongin	\N	\N	F	\N	\N	\N	108	0	0
1078	https://dbkpop.com/wp-content/uploads/2018/11/fromis_9_seoyeon_profile.jpg	Seoyeon	Lee Seoyeon	이서연	서연	2000-01-22	fromis_9	South Korea	\N	0	0	Seoul	\N	\N	F	\N	\N	\N	103	0	0
1196	https://dbkpop.com/wp-content/uploads/2018/07/lovelyz_wag_zak_sujeong_profile.jpg	Sujeong	Ryu Sujeong	류수정	수정	1997-11-19	Lovelyz	South Korea	\N	168	48	Daejeon	\N	\N	F	\N	\N	\N	45	0	0
481	https://dbkpop.com/wp-content/uploads/2020/10/Stray_Kids_Hyunjin_Profile_IN_Life_Back_Door.jpg	Hyunjin	Hwang Hyunjin	황현진	현진	2000-03-20	Stray Kids	South Korea	\N	0	0	Seoul	\N	\N	M	\N	\N	\N	279	0	0
82	https://dbkpop.com/wp-content/uploads/2018/12/cherry_bullet_card_bora.jpg	Bora	Kim Bora	김보라	보라	1999-03-03	Cherry Bullet	South Korea	\N	0	0	\N	\N	\N	F	\N	\N	\N	113	0	0
1496	https://dbkpop.com/wp-content/uploads/2018/10/izone_coloriz_jo_yuri_profile.jpg	Yuri	Jo Yuri	조유리	유리	2001-10-22	IZ*ONE	South Korea	\N	0	0	Busan	\N	\N	F	\N	\N	\N	108	0	0
693	\N	Jungah	Kim Jungah	김정아	정아	1983-08-02	\N	South Korea	\N	0	0	Incheon	\N	After School	F	\N	i_am_jjunga	\N	\N	0	0
1140	https://dbkpop.com/wp-content/uploads/2017/10/trcng_siwoo_profile.jpg	Siwoo	Yoo Siwoo	유시우	시우	2001-05-11	TRCNG	South Korea	\N	178	0	\N	\N	\N	M	\N	\N	\N	271	0	0
695	\N	Junghoon	Han Jeonghoon	한정훈	정훈	2000-02-14	OMEGA X	South Korea	\N	177	61	\N	\N	ENOi	M	\N	\N	\N	\N	0	0
696	\N	Junghun	Jang Junghun	장정훈	정훈	1999-02-27	Astin	South Korea	\N	0	0	\N	\N	\N	M	\N	\N	\N	\N	0	0
1258	https://dbkpop.com/wp-content/uploads/2019/04/1the9_debut_taewoo_profile.jpg	Taewoo	Kim Taewoo	김태우	태우	1999-04-23	1the9	South Korea	\N	172	62	\N	\N	\N	M	\N	\N	\N	325	0	0
707	\N	Junhyeok	Kim Junhyeok	임준혁	준혁	1993-07-17	\N	South Korea	\N	0	0	\N	\N	DAY6	M	Keyboardist	\N	\N	\N	0	0
725	\N	K.Me	Na Miri	나미리	케이미	1992-04-10	BADKIZ	South Korea	\N	0	0	Yeosu	\N	\N	F	\N	k.me93	\N	30	0	0
735	\N	Kangmin	Noh Kangmin	노강민	강민	1999-09-05	Romeo	South Korea	\N	0	0	\N	\N	\N	M	\N	\N	\N	235	0	0
758	\N	Khael	Lee Sangmin	이상민	카엘	2002-01-18	Mirae	South Korea	\N	178	58	\N	\N	\N	M	\N	\N	\N	360	0	0
762	\N	Kid	Kim Junhoe	김준회	키드	1995-10-26	VARSITY	South Korea	\N	177	58	\N	\N	\N	M	\N	\N	\N	273	0	0
767	\N	Kim Yoon	Kim Seongsu	김성수	김윤	1994-02-17	DUSTIN	South Korea	\N	183	65	\N	\N	\N	M	\N	\N	\N	333	0	0
711	\N	Junhyung	Son Junhyung	손준형	준형	2000-10-21	Ghost9	South Korea	\N	0	0	\N	\N	\N	M	\N	\N	\N	354	0	0
712	\N	Junji	Kim Junhyung	김준형	준지	1998-04-06	OnlyOneOf	South Korea	\N	0	0	\N	\N	\N	M	\N	\N	\N	334	0	0
720	\N	Junwook	Kim Junwook	김준욱	준욱	2002-01-10	TheEastLight	South Korea	\N	0	0	\N	\N	\N	M	\N	\N	\N	\N	0	0
771	\N	Kisu	Choi Kisu	최기수	기수	1990-10-02	24K	South Korea	\N	179	60	Seoul	\N	\N	M	\N	\N	\N	205	0	0
1130	https://dbkpop.com/wp-content/uploads/2020/09/Everglow_77.82X_78.29_La_Di_Da_Concept_Sihyeon_3.jpg	Sihyeon	Kim Sihyeon	김시현	시현	1999-08-05	Everglow	South Korea	\N	168	51	\N	\N	\N	F	\N	\N	\N	143	0	0
559	https://dbkpop.com/wp-content/uploads/2017/10/got7_7_for_7_jb_profile.jpg	JB	Im Jaebum	임재범	제이비	1994-01-06	GOT7	South Korea	\N	179	63	Goyang	\N	\N	M	\N	\N	\N	200	0	0
791	https://dbkpop.com/wp-content/uploads/2018/05/pristin_v_like_a_v_kyulkyung_profile.jpg	Kyulkyung	Zhou Jieqiong	저우제충	결경	1998-12-16	Pristin	China	\N	167	49	Taizhou	I.O.I, Pristin V	\N	F	\N	\N	\N	79	0	0
726	\N	Kady	Gu Dokyoung	구도경	케이디	1995-04-07	Gate9	South Korea	\N	168	0	Busan	\N	\N	F	\N	kady_g9	\N	\N	0	0
861	https://dbkpop.com/wp-content/uploads/2020/09/Everglow_77.82X_78.29_La_Di_Da_Concept_Mia_3.jpg	Mia	Han Eunji	한은지	미아	2000-01-13	Everglow	South Korea	\N	0	0	\N	\N	\N	F	\N	\N	\N	143	0	0
728	\N	Kahi	Park Jiyoung	박지영	가희	1980-12-25	\N	South Korea	\N	0	0	Daegu	\N	After School	F	\N	imisskahi	\N	\N	0	0
344	https://dbkpop.com/wp-content/uploads/2020/10/Stray_Kids_Han_Profile_IN_Life_Back_Door.jpg	Han	Han Jisung	한지성	한	2000-09-14	Stray Kids	South Korea	\N	0	0	Incheon	3RACHA	\N	M	\N	\N	\N	279	0	0
738	https://dbkpop.com/wp-content/uploads/2018/12/elris_summer_dream_karin_profile.jpg	Karin	Min Karin	민가린	가린	2002-01-05	ELRIS	South Korea	\N	0	0	\N	\N	\N	F	\N	\N	\N	83	0	0
401	https://dbkpop.com/wp-content/uploads/2017/10/trcng_hohyeon_profile.jpg	Hohyeon	Lee Hohyeon	이호현	호현	2001-10-14	TRCNG	South Korea	\N	177	0	\N	\N	\N	M	\N	\N	\N	271	0	0
732	\N	Kanghyun	Kang Hyungu	강현구	강현	1998-11-24	Onewe	South Korea	\N	0	0	\N	\N	MAS	M	\N	\N	\N	\N	0	0
733	\N	Kangin	Kim Youngwoon	김영운	강인	1985-01-17	\N	South Korea	\N	178	70	Seoul	\N	Super Junior	M	\N	\N	\N	\N	0	0
415	https://dbkpop.com/wp-content/uploads/2019/01/TXT_Hueningkai_Profile_Blue_Hour.jpg	Hueningkai	Kai Kamal Huening	카이 카말 휴닝	휴닝카이	2002-08-14	TXT	USA	South Korea	0	0	\N	\N	\N	M	\N	\N	\N	326	0	0
638	https://dbkpop.com/wp-content/uploads/2018/11/fromis_9_jisun_profile.jpg	Jisun	Roh Jisun	노지선	지선	1998-11-23	fromis_9	South Korea	\N	0	0	Seoul	\N	\N	F	\N	\N	\N	103	0	0
6	\N	Ahra	Go Ahra	고아라	아라	2001-02-21	Favorite	South Korea	\N	0	0	Yeosu	\N	\N	F	\N	\N	\N	84	0	0
7	\N	Ahyoon	Choi Subin	최수빈	아윤	2004-10-23	BOTOPASS	South Korea	\N	0	0	\N	\N	\N	F	\N	\N	\N	173	0	0
9	\N	Ahyung	Kang Ahyoung	강아형	아형	1996-08-27	P.O.P	South Korea	\N	0	0	Pohang	\N	\N	F	\N	\N	\N	86	0	0
14	\N	Alex	Alexander Schmidt Lee	알렉산더 슈미트 리	알렉스	2002-07-09	DRIPPIN	Germany	South Korea	180	0	\N	\N	\N	M	\N	\N	\N	351	0	0
954	https://dbkpop.com/wp-content/uploads/2017/01/hello_venus_nara.jpg	Nara	Kwon Nara	권나라	나라	1991-03-13	Hello Venus	South Korea	\N	172	52	Seongnam	\N	\N	F	\N	hv_nara	\N	42	0	0
17	\N	Allen	Allen Ma	앨런 마	앨런	1999-04-26	CRAVITY	USA	South Korea	0	0	\N	\N	\N	M	\N	\N	\N	329	0	0
18	\N	Amber	Amber Josephine Liu	엠버 조세핀 리우	엠버	1992-09-18	f(x)	USA	Taiwan	167	0	Los Angeles	\N	\N	F	\N	ajol_llama	\N	36	0	0
19	\N	Andy	Lee Sunho	이선호	앤디	1981-01-21	Shinhwa	South Korea	\N	175	62	Seoul	\N	\N	M	\N	\N	\N	241	0	0
21	\N	Anne	Lee Seoyoung	이서영	앤	2000-10-17	GWSN	South Korea	\N	0	0	\N	\N	\N	F	\N	\N	\N	107	0	0
24	\N	Arang	Park Yerim	박예림	아랑	2001-01-22	Pink Fantasy	South Korea	\N	167	49	\N	\N	\N	F	\N	\N	\N	118	0	0
25	\N	Areum	Kim Daun	김다운	아름	1998-01-31	AREAL	South Korea	\N	0	0	\N	\N	Rose Finger	F	\N	\N	\N	176	0	0
26	\N	Ari	Kim Sunyoung	김선영	아리	1994-10-23	Tahiti	South Korea	\N	0	0	Daegu	\N	\N	F	\N	\N	\N	40	0	0
30	\N	Aron	Kwak Youngmin	곽영민	아론	1993-05-21	NU'EST	South Korea	USA	0	0	California	NU'EST W	\N	M	\N	\N	\N	232	0	0
31	\N	Arthur	Jang Yunho	장윤호	아서	2000-04-15	Kingdom	South Korea	\N	176	57	\N	\N	VARSITY	M	\N	\N	\N	359	0	0
32	\N	Asahi	Hanada Asahi	하나다 아사히	아사히	2001-08-20	Treasure	Japan	\N	0	0	\N	\N	\N	M	\N	\N	\N	358	0	0
33	\N	Ashley	Ashley Choi	애슐리 최	애슐리	1991-11-09	Ladies' Code	South Korea	USA	0	0	Incheon	\N	\N	F	\N	\N	\N	43	0	0
35	\N	Avin	Park Donghyun	박동혁	어빈	1999-12-18	ENOi	South Korea	\N	178	61	\N	\N	\N	M	\N	\N	\N	323	0	0
36	\N	Ayamy	Suzuki Ayami	스즈키 아야미	아야미	2000-07-15	Bling Bling	Japan	\N	0	0	\N	\N	\N	F	\N	\N	\N	165	0	0
755	\N	Kevin	Park Jinwoo	박진우	케빈	2000-01-12	OMEGA X	South Korea	\N	167	51	\N	\N	ENOi	M	\N	\N	\N	\N	0	0
759	\N	Kiara	Baek Jinjoo	백진주	키아라	1998-08-20	\N	South Korea	\N	0	0	\N	\N	\N	F	\N	\N	\N	\N	0	0
760	\N	Kibum	Kim Kibum	김기범	기범	1987-08-21	\N	South Korea	\N	179	58	Seoul	\N	Super Junior	M	\N	\N	\N	\N	0	0
761	\N	Kichun	Hwang Kichun	황기천	기천	1992-03-14	\N	South Korea	\N	179	63	\N	\N	Bigflo	M	\N	\N	\N	\N	0	0
763	\N	Kidoh	Jin Hyosang	진효상	키도	1992-12-16	\N	South Korea	\N	0	0	Seoul	\N	Topp Dogg	M	\N	\N	\N	\N	0	0
772	\N	Kiwon	Lee Kiwon	이기원	기원	1996-06-27	GIDONGDAE	South Korea	\N	170	0	\N	\N	RAINZ	M	\N	kiwon_1810	\N	\N	0	0
777	\N	Kriesha Chu	Kriesha Ziskind Teo Tiu	크리샤 지스킨드 테오 티우	크리샤 츄	1998-12-20	\N	Philippines	\N	0	0	Cebu	\N	\N	F	\N	\N	\N	\N	0	0
778	\N	Kris	Wu Yifan	오역범	크리스	1990-11-06	\N	Canada	China	187	73	Guangzhou	\N	EXO	M	\N	\N	\N	\N	0	0
787	\N	Kyle	Ma Jaekyung	마재경	카일	1997-01-15	Romeo	South Korea	\N	0	0	\N	\N	\N	M	\N	\N	\N	235	0	0
788	\N	Kyuhwan	Lee Kyuhwan	이규환	규환	1994-09-18	SIGNAL	South Korea	\N	0	0	\N	\N	E7	M	\N	\N	\N	328	0	0
795	\N	Kyungyoon	Lee Kyungyoon	이경윤	경윤	2000-02-21	Dongkiz	South Korea	\N	177	58	\N	\N	\N	M	\N	\N	\N	347	0	0
803	\N	Layeon	Lee Jimin	이지민	라연	1998-08-13	Purplebeck	South Korea	\N	170	51	\N	\N	\N	F	\N	\N	\N	123	0	0
811	\N	Lee Soo	Jin Isoo	진이수	이수	2001-06-27	PRECIOUS	South Korea	\N	163	47	Incheon	\N	\N	F	\N	\N	\N	167	0	0
820	\N	Lien	Shimada Sho	시마다 쇼	리안	1998-03-11	Mirae	Japan	\N	0	0	Osaka	\N	\N	M	\N	\N	\N	360	0	0
824	\N	Lina	Oh Hyesoo	오혜수	리나	1997-05-23	RedSquare	South Korea	\N	0	0	\N	\N	\N	F	\N	\N	\N	156	0	0
789	\N	Kyuhyuk	Shim Kyuhyuk	심규혁	규혁	1995-01-11	Hot Blood Youth	South Korea	\N	0	0	\N	\N	\N	M	\N	\N	\N	\N	0	0
827	\N	Liyah	Moon Liya	문리야	리야	2000-05-11	MIXX	South Korea	\N	175	52	\N	\N	\N	F	\N	\N	\N	77	0	0
830	\N	Lola	Choi Yoojung	최유정	로라	2001-02-22	Pixy	South Korea	\N	169	0	\N	\N	\N	F	\N	\N	\N	178	0	0
774	\N	Kongyeol	Go Minsoo	고민수	고결	1996-05-19	UP10TION	South Korea	\N	0	0	Bucheon	\N	\N	M	\N	\N	\N	247	0	0
775	\N	Kongyoo	Kong Yoojin	공유진	공유	2001-05-11	Bonus Baby	South Korea	\N	163	0	\N	\N	\N	F	\N	\N	\N	73	0	0
776	\N	Kookheon	Kim Kookheon	김국헌	국헌	1997-04-15	B.O.Y	South Korea	\N	0	0	\N	\N	MYTEEN	M	\N	\N	\N	331	0	0
779	\N	Krystal	Krystal Jung	크리스탈 정	크리스탈	1994-10-24	f(x)	South Korea	\N	165	0	San Francisco	\N	\N	F	\N	vousmevoyez	\N	36	0	0
797	\N	L.Joe	Lee Byunghun	이병헌	엘조	1993-11-23	\N	South Korea	\N	0	0	Gunsan	\N	Teen Top	M	\N	\N	\N	\N	0	0
37	\N	Ayeon	Son Minji	손민지	아연	2002-09-29	Saturday	South Korea	\N	162	47	\N	\N	\N	F	\N	\N	\N	116	0	0
38	\N	Ayno	Noh Yoonho	노윤호	에이노	1996-05-01	VAV	South Korea	\N	183	61	\N	\N	\N	M	\N	\N	\N	294	0	0
42	\N	B.S	Lee Youngsoo	이영수	비에스	1995-04-14	14U	South Korea	\N	0	0	\N	\N	\N	M	\N	\N	\N	264	0	0
801	\N	Laun	Kim Minseok	김민석	라운	1999-08-12	\N	South Korea	\N	0	0	Seongsan	\N	ONF	M	\N	\N	\N	\N	0	0
44	\N	Bada	Kim Bada	김바다	바다	2002-05-28	Hinapia	South Korea	\N	162	49	\N	\N	\N	F	\N	\N	\N	147	0	0
46	\N	Baekgyeul	Baek Sunwoo	백결	백선우	1999-12-01	E'LAST	South Korea	\N	180	61	\N	\N	\N	M	\N	\N	\N	335	0	0
47	\N	Baekho	Kang Dongho	강동호	백호	1995-07-21	NU'EST	South Korea	\N	0	0	Jeju	NU'EST W	\N	M	\N	\N	\N	232	0	0
806	\N	Lee Haein	Lee Haein	이해인	이해인	1992-07-04	I.B.I	South Korea	\N	165	49	Changwon	\N	\N	F	\N	\N	\N	\N	0	0
48	\N	Baekhyun	Byun Baekhyun	변백현	백현	1992-05-06	EXO	South Korea	\N	174	58	Wonmi	EXO-CBX, SuperM	\N	M	\N	\N	\N	187	0	0
52	\N	Baron	Choi Chunghyeop	최충협	바론	1992-04-19	VAV	South Korea	\N	180	60	\N	\N	\N	M	\N	\N	\N	294	0	0
809	\N	Lee Joon	Lee Changseon	이창선	이준	1988-02-07	\N	South Korea	\N	0	0	Seoul	\N	MBLAQ	M	\N	\N	\N	\N	0	0
53	\N	BC	Jin Sungho	진성호	비시	1994-07-18	1TEAM	South Korea	\N	0	0	\N	\N	\N	M	\N	\N	\N	343	0	0
812	\N	Lee Suhyun	Lee Suhyun	이수현	이수현	1996-11-05	I.B.I	South Korea	\N	167	50	Ansan	\N	\N	F	\N	\N	\N	\N	0	0
58	\N	Benji	Baek Jaewook	배제욱	벤지	1992-05-03	B.I.G	USA	South Korea	183	72	Indianapolis	\N	\N	M	\N	\N	\N	254	0	0
59	https://dbkpop.com/wp-content/uploads/2019/01/TXT_Beomgyu_Profile_Blue_Hour.jpg	Beomgyu	Choi Beomgyu	최범규	범규	2001-03-13	TXT	South Korea	\N	0	0	\N	\N	\N	M	\N	\N	\N	326	0	0
43	https://dbkpop.com/wp-content/uploads/2018/07/lovelyz_wag_zak_babysoul_profile.jpg	Babysoul	Lee Soojung	이수정	베이비소울	1992-07-06	Lovelyz	South Korea	\N	158	41	Gwangju	\N	\N	F	Leader	\N	\N	45	0	0
29	https://dbkpop.com/wp-content/uploads/2016/10/oh_my_girl_arin_profile_dear_ohmygirl_dun_dun_dance.jpg	Arin	Choi Yewon	최예원	아린	1999-06-18	Oh My Girl	South Korea	\N	163	47	Busan	\N	\N	F	\N	\N	\N	35	0	0
50	https://dbkpop.com/wp-content/uploads/2018/04/Stray_Kids_Bang_Chan_profile_IN.jpg	Bang Chan	Bang Chan	방찬	방찬	1997-10-03	Stray Kids	Australia	South Korea	0	0	Sydney	3RACHA	\N	M	\N	\N	\N	279	0	0
12	https://dbkpop.com/wp-content/uploads/2020/09/Everglow_77.82X_78.29_La_Di_Da_Concept_Aisha_3.jpg	Aisha	Heo Yoorim	허유림	아샤	2000-07-21	Everglow	South Korea	\N	0	0	\N	\N	\N	F	\N	\N	\N	143	0	0
56	https://dbkpop.com/wp-content/uploads/2018/12/elris_summer_dream_bella_profile.jpg	Bella	Choi Yuna	최윤아	벨라	1999-02-02	ELRIS	South Korea	\N	0	0	\N	\N	\N	F	\N	\N	\N	83	0	0
8	https://dbkpop.com/wp-content/uploads/2017/02/dalshabet_ahyoung_1.jpg	Ahyoung	Cho Jayoung	조자영	아영	1991-05-26	Dal Shabet	South Korea	\N	0	0	Seoul	\N	\N	F	\N	\N	\N	11	0	0
75	\N	Bom	Park Bom	박봄	봄	1984-03-24	2NE1	South Korea	\N	0	0	\N	\N	\N	F	\N	haroobommi	\N	3	0	0
77	\N	Bomin	Choi Bomin	최보민	보민	2000-08-24	Golden Child	South Korea	\N	0	0	\N	\N	\N	M	\N	\N	\N	258	0	0
773	https://dbkpop.com/wp-content/uploads/2018/12/cherry_bullet_card_kokoro.jpg	Kokoro	Kato Kokoro	카토 코코로	코코로	2000-11-01	\N	Japan	\N	0	0	\N	\N	Cherry Bullet	F	\N	\N	\N	\N	0	0
836	\N	Lu	Im Hayoung	임하영	루	1997-12-03	NATURE	South Korea	\N	0	0	\N	\N	\N	F	\N	\N	\N	109	0	0
837	\N	LuA	Jo Hankyeung	조한경	루아	1991-09-14	BADKIZ	South Korea	\N	0	0	Busan	\N	\N	F	\N	\N	\N	30	0	0
848	\N	Manny	Syo Dongchun	쇼동청	만니	2001-11-17	VARSITY	China	\N	170	64	\N	\N	\N	M	\N	\N	\N	273	0	0
860	\N	Mia	Son Hyunmi	손현미	미아	1997-12-31	MIXX	South Korea	\N	174	0	\N	\N	\N	F	\N	\N	\N	77	0	0
867	\N	Milo	Kim Minhak	김민학	마일로	1996-08-20	Romeo	South Korea	\N	0	0	\N	\N	\N	M	\N	\N	\N	235	0	0
888	\N	Minhyuk	Kim Minhyuk	김민혁	민혁	1999-11-06	D-CRUNCH	South Korea	\N	0	0	\N	\N	\N	M	\N	\N	\N	291	0	0
890	\N	Mini	\N	\N	민이	2000-06-12	Purplebeck	South Korea	\N	168	47	\N	\N	\N	F	\N	\N	\N	123	0	0
844	\N	Luhan	Lu Han	루한	루한	1990-04-20	\N	China	\N	178	62	Haidian	\N	EXO	M	\N	\N	\N	\N	0	0
1007	\N	Riho	Jin Seungwook	진승욱	리호	1998-03-01	VARSITY	South Korea	\N	178	59	Incheon	\N	\N	M	\N	\N	\N	273	0	0
873	https://dbkpop.com/wp-content/uploads/2016/11/Twice_Mina_Profile_MoreMore.jpg	Mina	Myoui Mina	묘이 미나	 미나	1997-03-24	Twice	Japan	\N	163	0	San Antonio	\N	\N	F	\N	\N	\N	39	0	0
847	\N	Lutan	Choi Gyeongseok	최경석	루탄	2003-12-06	BLITZERS	South Korea	\N	0	0	\N	\N	\N	M	\N	\N	\N	\N	0	0
849	\N	Marco	Lee Hyunggeun	이형근	마르코	1994-05-11	Hot Blood Youth	South Korea	\N	0	0	\N	\N	\N	M	\N	\N	\N	\N	0	0
832	\N	Lou	Kim Hosung	김호성	로우	1996-12-21	VAV	South Korea	\N	187	69	\N	\N	\N	M	\N	\N	\N	294	0	0
833	\N	Loudi	Won Jihoon	원지훈	로우디	1996-04-13	14U	Indonesia	South Korea, China	0	0	\N	\N	\N	M	\N	\N	\N	264	0	0
80	\N	Boni	Choi Euijeong	최의정	보니	1999-10-30	Dreamnote	South Korea	\N	160	45	\N	\N	\N	F	\N	\N	\N	114	0	0
81	\N	Bora	Yoon Bora	윤보라	보라	1989-12-30	SISTAR	South Korea	\N	0	0	\N	SISTAR19	\N	F	\N	borabora_sugar	\N	5	0	0
854	\N	Max Changmin	Shin Changmin	심창민	최강창민	1988-02-18	TVXQ	South Korea	\N	0	0	Seoul	\N	\N	M	\N	\N	\N	\N	0	0
855	\N	May	Jeong Chaeyoung	정채영	메이	2001-07-27	\N	South Korea	\N	0	0	\N	\N	NeonPunch	F	\N	\N	\N	\N	0	0
86	\N	Byungchan	Choi Byungchan	최병찬	병찬	1997-11-12	VICTON	South Korea	\N	0	0	\N	\N	\N	M	\N	\N	\N	248	0	0
857	\N	Mayna	Shaoxi Mengna	\N	메이나	2000-05-12	HOT ISSUE	China	Romania	170	47	\N	\N	\N	F	\N	\N	\N	\N	0	0
87	\N	C.A.P	Bang Minsoo	방민수	캡	1992-11-04	Teen Top	South Korea	\N	0	0	Seongnam	\N	\N	M	\N	\N	\N	207	0	0
88	\N	Cao Lu	Cao Lu	차오루	차오루	1987-08-30	Fiestar	China	\N	166	0	Zhangjiajie	\N	\N	F	\N	better_me_lulu	\N	41	0	0
89	\N	Casper	Chu Xiaoxiang	저효상	캐스퍼	1991-03-20	CROSS GENE	China	\N	176	66	Shanghai	\N	\N	M	\N	\N	\N	217	0	0
90	\N	Castle J	Son Sangjoon	손성준	캐슬제이	1999-05-31	MCND	South Korea	\N	0	0	\N	\N	\N	M	\N	\N	\N	337	0	0
91	\N	Cha Hoon	Cha Hoon	차훈	차훈	1994-07-12	N.Flying	South Korea	\N	0	0	Seoul	\N	\N	M	Guitar	\N	\N	210	0	0
94	\N	Chaehyun	Kim Chaehyun	김채현	채현	1999-11-29	Bonus Baby	South Korea	\N	163	0	\N	\N	\N	F	\N	\N	\N	73	0	0
95	\N	Chaein	Lee Chaeyoung	이채영	채인	2002-12-05	Purple Kiss	South Korea	\N	0	0	\N	\N	\N	F	\N	\N	\N	179	0	0
96	\N	Chaejin	Chae Jinseok	채진석	채진	1995-12-26	MYNAME	South Korea	\N	0	0	Seoul	\N	\N	M	\N	\N	\N	199	0	0
98	\N	Chaelin	Lee Chaelin	이채린	채린	1999-10-20	FANATICS	South Korea	\N	162	47	\N	\N	\N	F	\N	\N	\N	160	0	0
104	\N	Chaewon	Lee Chaewon	이채원	채원	2000-03-18	Maka Maka	South Korea	\N	0	0	\N	\N	\N	F	\N	\N	\N	170	0	0
105	\N	ChaeY	Song Chaeyeon	송채연	채이	2003-01-06	CRAXY	South Korea	\N	0	0	\N	\N	\N	F	\N	\N	\N	154	0	0
107	\N	Chaeyeon	Kim Chaeyeon	김채연	채연	2004-12-04	Busters	South Korea	\N	0	0	\N	\N	\N	F	\N	\N	\N	130	0	0
112	\N	Chan	Jung Chanwoo	정찬우	찬	1998-01-26	iKON	South Korea	\N	0	0	Yongin	\N	\N	M	\N	\N	\N	222	0	0
113	\N	Chan	Kang Yoochan	강유찬	찬	1997-12-31	A.C.E	South Korea	\N	0	0	Jeju	UNB	\N	M	\N	\N	\N	265	0	0
114	\N	Chan	Jo Chanhyuk	조찬혁	찬	1999-12-08	TOO	South Korea	\N	0	0	\N	\N	\N	M	\N	\N	\N	340	0	0
117	\N	Changgyu	Song Changgyu	송창규	창규	1993-07-06	UNVS	South Korea	\N	0	0	\N	\N	\N	M	\N	\N	\N	341	0	0
879	\N	Minha	Park Minha	박민하	민하	1991-06-27	\N	South Korea	\N	172	47	Seoul	\N	9Muses	F	\N	blossomh_	\N	\N	0	0
103	https://dbkpop.com/wp-content/uploads/2018/10/izone_coloriz_kim_chaewon_profile.jpg	Chaewon	Kim Chaewon	김채원	채원	2000-08-01	IZ*ONE	South Korea	\N	0	0	Seoul	\N	\N	F	\N	\N	\N	108	0	0
76	https://dbkpop.com/wp-content/uploads/2016/12/apink_bomi_3.jpg	Bomi	Yoon Bomi	윤보미	보미	1993-09-13	Apink	South Korea	\N	163	0	Suwon	\N	\N	F	\N	\N	\N	7	0	0
115	https://dbkpop.com/wp-content/uploads/2020/10/Stray_Kids_Changbin_profile_IN_Life.jpg	Changbin	Seo Changbin	서창빈	창빈	1999-08-11	Stray Kids	South Korea	\N	0	0	Yongin	3RACHA	\N	M	\N	\N	\N	279	0	0
99	https://dbkpop.com/wp-content/uploads/2018/12/cherry_bullet_card_chaerin.jpg	Chaerin	Park Chaerin	박채린	채린	2002-03-13	Cherry Bullet	South Korea	\N	0	0	\N	\N	\N	F	\N	\N	\N	113	0	0
919	\N	Miryo	Jo Mihye	조미혜	미료	1981-11-02	Brown Eyed Girls	South Korea	\N	0	0	\N	\N	\N	F	\N	miryoakajohoney	\N	8	0	0
842	https://dbkpop.com/wp-content/uploads/2019/04/wjsn_wj_stay_luda_profile.jpg	Luda	Lee Luda	이루다	루다	1997-03-06	Cosmic Girls	South Korea	\N	157	0	Seoul	WJSN Chocome, WJMK	\N	F	\N	\N	\N	\N	0	0
859	https://dbkpop.com/wp-content/uploads/2017/01/wjsn_from_wjsn_meiqi.jpg	Meiqi	Meng Meiqi	멍메이치	미기	1998-10-15	Cosmic Girls	China	\N	164	0	Luoyang	\N	\N	F	\N	\N	\N	\N	0	0
872	https://dbkpop.com/wp-content/uploads/2018/05/aoa_bingle_bangle_mina_profile.jpg	Mina	Kwon Mina	권민아	민아	1993-09-21	\N	South Korea	\N	159	43	Busan	\N	AOA, AOA BLACK	F	\N	kvwowv	\N	\N	0	0
908	\N	Minsung	Kim Minhwi	김민휘	민성	1996-12-24	Romeo	South Korea	\N	0	0	\N	\N	\N	M	\N	\N	\N	235	0	0
931	\N	Monika	Kang Yeh	강예	모니카	1991-05-21	BADKIZ	South Korea	\N	0	0	Seoul	\N	\N	F	\N	maygirl_nika	\N	30	0	0
938	\N	Munik	Jang Moonik	장문익	문익	2001-03-20	Dongkiz	South Korea	\N	173	50	\N	\N	\N	M	\N	\N	\N	347	0	0
1068	\N	Seokhwa	Kang Seokhwa	강석화	석화	2000-12-01	WEi	South Korea	\N	172	56	\N	\N	\N	M	\N	\N	\N	355	0	0
928	https://dbkpop.com/wp-content/uploads/2016/11/Twice_Momo_profile_moreandmore.jpg	Momo	Hirai Momo	히라이 모모	모모	1996-11-09	Twice	Japan	\N	167	0	Kyoto	\N	\N	F	\N	\N	\N	39	0	0
898	\N	Minjung	Cha Minjung	차민정	민정	2004-07-15	\N	South Korea	\N	0	0	\N	\N	Busters	F	\N	\N	\N	\N	0	0
892	\N	Minjae	Shin Minjae	신민재	민재	1991-08-13	Tahiti	South Korea	\N	0	0	Busan	\N	\N	F	\N	\N	\N	40	0	0
893	\N	Minjae	Jo Minjae	조민재	민재	1994-08-08	Spectrum	South Korea	\N	0	0	\N	\N	\N	M	\N	\N	\N	292	0	0
85	https://dbkpop.com/wp-content/uploads/2019/07/cix_hello_teaser_BX_2.jpg	BX	Lee Byounggon	이병곤	비엑스	1998-03-05	CIX	South Korea	\N	180	61	Incheon	\N	\N	M	Leader, Main Rapper	\N	\N	317	0	0
110	https://dbkpop.com/wp-content/uploads/2018/11/fromis_9_chaeyoung_profile.jpg	Chaeyoung	Lee Chaeyoung	이채영	채영	2000-05-14	fromis_9	South Korea	\N	0	0	Pohang	\N	\N	F	\N	\N	\N	103	0	0
120	\N	Changsun	Lee Changsun	이창선	창선	1996-03-17	24K	South Korea	\N	179	58	\N	\N	\N	M	\N	\N	\N	205	0	0
121	\N	Changuk	Joo Changuk	주창욱	창욱	2001-07-25	DRIPPIN	South Korea	\N	184	59	\N	\N	\N	M	\N	\N	\N	351	0	0
122	\N	Chani	Kang Chanhee	강찬희	찬희	2000-01-17	SF9	South Korea	\N	0	0	\N	\N	\N	M	\N	\N	\N	255	0	0
124	\N	Chansung	Hwang Chansung	황찬성	찬성	1990-02-11	2PM	South Korea	\N	184	75	Seoul	\N	\N	M	\N	\N	\N	202	0	0
125	\N	Chanyeol	Park Chanyeol	박찬열	찬열	1992-11-27	EXO	South Korea	\N	185	70	Seoul	\N	\N	M	\N	\N	\N	187	0	0
126	\N	Chanyong	Kim Chanyong	김찬용	찬용	1993-04-29	100%	South Korea	\N	0	0	Suwon	\N	\N	M	\N	\N	\N	206	0	0
128	\N	Chen	Kim Jongdae	김종대	첸	1992-09-21	EXO	South Korea	\N	173	64	Silheung	EXO-CBX	\N	M	\N	\N	\N	187	0	0
130	\N	Chenle	Zhong Chenle	중천러	천러	2001-11-22	NCT	China	\N	0	0	Shanghai	NCT Dream	\N	M	\N	\N	\N	231	0	0
132	\N	Chiayi	Li Chiayi	지아이	지아이	2000-01-22	FANATICS	Taiwan	\N	164	0	\N	FANATICS FLAVOR	\N	F	\N	\N	\N	160	0	0
133	\N	Chihoon	Choi Chihoon	최치훈	치훈	1999-04-27	TOO	South Korea	\N	0	0	\N	\N	\N	M	\N	\N	\N	340	0	0
134	\N	Chiwoo	Guk Seungjun	국승준	치우	2002-09-02	Kingdom	South Korea	\N	0	0	\N	\N	\N	M	\N	\N	\N	359	0	0
136	\N	Choa	Heo Minjin	허민진	초아	1990-07-12	Crayon Pop	South Korea	\N	161	0	Seoul	\N	\N	F	\N	\N	\N	17	0	0
138	\N	Choi In	Choi In	최인	최인	1996-02-11	E'LAST	South Korea	\N	170	50	\N	\N	\N	M	\N	\N	\N	335	0	0
917	\N	Mir	Lee Yoonsang	이윤상	미르	2000-03-06	Astin	South Korea	\N	0	0	\N	\N	\N	M	\N	\N	\N	\N	0	0
139	\N	Choi Jiann	Choi Jaewoo	최재우	최지안	1997-09-30	Newkidd	South Korea	\N	175	0	\N	\N	\N	M	\N	\N	\N	321	0	0
144	\N	Chunji	Lee Chanhee	이찬희	천지	1993-10-05	Teen Top	South Korea	\N	0	0	Seongnam	\N	\N	M	\N	\N	\N	207	0	0
146	\N	CL	Lee Chaerin	이채린	씨엘	1991-02-26	2NE1	South Korea	\N	0	0	\N	\N	\N	F	\N	chaelincl	\N	3	0	0
148	\N	Cory	Hong Joohyung	홍주현	코리	1990-11-25	24K	South Korea	USA	175	58	Daegu	\N	\N	M	\N	\N	\N	205	0	0
149	\N	Cui Xiang	Cui Xiang	최상	최상	1995-01-26	BOTOPASS	China	\N	0	0	\N	\N	ILUV	F	\N	\N	\N	173	0	0
152	\N	D.O.	Do Kyungsoo	도경수	디오	1993-01-12	EXO	South Korea	\N	173	60	Gyeonggi	\N	\N	M	\N	\N	\N	187	0	0
153	\N	D1	Jang Dongil	장동일	디원	1998-02-15	DKB	South Korea	\N	174	59	\N	\N	\N	M	\N	\N	\N	327	0	0
154	\N	Dabi	Park Jiwon	박지원	다비	2000-01-19	AREAL	South Korea	\N	0	0	\N	\N	MIDNIGHT	F	\N	\N	\N	176	0	0
155	\N	Daehwi	Lee Daehwi	이대휘	대휘	2001-01-29	AB6IX	South Korea	\N	0	0	Seoul	\N	Wanna One	M	\N	\N	\N	320	0	0
159	\N	Daesung	Daesung	강대성	대성	1989-04-26	BIGBANG	South Korea	\N	178	63	Incheon	\N	\N	M	\N	\N	\N	183	0	0
160	\N	Daeun	Jung Daeun	정다은	정다은	1994-06-03	2EYES	South Korea	\N	161	0	Bucheon	\N	\N	F	\N	da.ni_jung	\N	138	0	0
161	\N	Daewang Nim	Daewang Nim	대왕님	대왕님	1996-04-08	Pink Fantasy	South Korea	\N	162	49	\N	\N	\N	F	\N	\N	\N	118	0	0
162	\N	Daeyeol	Lee Daeyeol	이대열	대열	1993-02-11	Golden Child	South Korea	\N	0	0	Yongin	\N	\N	M	\N	\N	\N	258	0	0
166	\N	Dahyun	Jeong Dahyun	정다현	다현	2005-04-29	Rocket Punch	South Korea	\N	160	0	\N	\N	\N	F	\N	\N	\N	163	0	0
172	\N	Dalyn	Lee Sohyun	이소현	달린	1999-08-27	ANS	South Korea	\N	0	0	\N	\N	\N	F	\N	\N	\N	151	0	0
174	\N	Dami	Hong Dayoung	홍다영	담이	2001-06-07	ANS	South Korea	\N	0	0	\N	\N	\N	F	\N	\N	\N	151	0	0
176	\N	Dan-a	Park Seungyeon	박승연	단아	1993-06-26	Matilda	South Korea	\N	0	160	\N	\N	\N	F	\N	\N	\N	93	0	0
147	https://dbkpop.com/wp-content/uploads/2016/11/b1a4_cnu_1.jpg	CNU	Shin Dongwoo	신동우	신우	1991-06-16	B1A4	South Korea	\N	182	64	Seoul	\N	\N	M	\N	\N	\N	194	0	0
163	https://dbkpop.com/wp-content/uploads/2017/10/neonpunch_predebut_dayeon_profile.jpg	Daeyeon	Hwang Da Kyeon	황연경	다연	1995-11-17	XUM	South Korea	\N	0	0	\N	\N	NeonPunch	F	\N	sunghyuk_seo	\N	168	0	0
157	https://dbkpop.com/wp-content/uploads/2018/04/bap_hands_up_daehyun_profile.jpg	Daehyun	Jung Daehyun	정대현	대현	1993-06-28	B.A.P	South Korea	\N	177	63	Busan	\N	\N	M	\N	\N	\N	195	0	0
184	\N	Dasom	Kim Dasom	김다솜	다솜	1993-05-06	SISTAR	South Korea	\N	0	0	\N	\N	\N	F	\N	som0506	\N	5	0	0
942	\N	Nada	Yoon Yejin	윤예진	나다	1991-05-24	\N	South Korea	\N	0	0	\N	\N	Wassup	F	\N	\N	\N	\N	0	0
185	\N	Dasom	Lee Dasom	이다솜	다솜	1993-11-13	2EYES	South Korea	\N	164	0	Cheongju	\N	\N	F	\N	\N	\N	138	0	0
946	\N	Nahyun	Kang Nahyun	강나현	나현	2002-01-25	HOT ISSUE	South Korea	\N	0	0	\N	\N	\N	F	\N	\N	\N	\N	0	0
948	\N	Nakta	Shin Yooncheol	신윤철	낙타	1993-04-24	\N	South Korea	\N	0	0	Daegu	\N	Topp Dogg	M	\N	\N	\N	\N	0	0
966	\N	NC.A	Im Soeun	임소은	앤씨아	1996-10-07	UNI.T	South Korea	\N	0	0	Osan	\N	\N	F	\N	\N	\N	110	0	0
978	\N	O.V	Kim Sanchan	김상찬	오뷔	1999-01-03	D-CRUNCH	South Korea	\N	0	0	\N	\N	\N	M	\N	\N	\N	291	0	0
979	https://dbkpop.com/wp-content/uploads/2018/08/loona__olivia_hye_profile.jpg	Olivia Hye	Son Hyeju	손혜주	올리비아 혜	2001-11-13	LOONA	South Korea	\N	0	0	\N	Loona yyxy	\N	F	\N	\N	\N	78	0	0
955	\N	Narachan	Jung Hyunwoo	정현우	나라찬	1996-09-23	MONT	South Korea	\N	178	58	\N	\N	\N	M	\N	\N	\N	\N	0	0
965	https://dbkpop.com/wp-content/uploads/2018/06/momoland_baam_nayun_profile.jpg	Nayun	Kim Nayun	김나윤	나윤	1998-07-31	MOMOLAND	South Korea	\N	167	48	Seoul	\N	\N	F	\N	\N	\N	72	0	0
953	https://dbkpop.com/wp-content/uploads/2016/11/momoland_nancy_profile_starry_night.jpg	Nancy	Nancy Mcdonie	낸시 맥다니	낸시	2000-04-13	MOMOLAND	South Korea	USA	162	45	Daegu	\N	\N	F	\N	\N	\N	72	0	0
992	https://dbkpop.com/wp-content/uploads/2017/01/april_hello_summer_concept_rachel_profile.jpg	Rachel	Sung Nayeon	성나연	레이첼	2000-08-28	APRIL	South Korea	USA	0	0	\N	\N	\N	F	\N	\N	\N	22	0	0
961	https://dbkpop.com/wp-content/uploads/2016/11/Twice_Nayeon_Profile_Eyes_wide_open.jpg	Nayeon	Im Nayeon	임나연	나연	1995-09-22	Twice	South Korea	\N	163	0	Seoul	\N	\N	F	\N	\N	\N	39	0	0
960	\N	Nason	Kim Duyeop	김두엽	네이슨	1995-06-12	CHECKMATE	South Korea	\N	0	0	\N	\N	\N	M	\N	\N	\N	\N	0	0
951	\N	Nana	Im Jinah	임진아	나나	1991-09-14	After School	South Korea	\N	0	0	Cheongju	Orange Caramel	\N	F	\N	jin_a_nana	\N	9	0	0
187	\N	Dawon	Lee Sanghyuk	이상혁	다원	1995-07-24	SF9	South Korea	\N	0	0	\N	\N	\N	M	\N	\N	\N	255	0	0
964	\N	Nayoung	Kim Nayoung	김나영	나영	2002-11-30	LIGHTSUM	South Korea	\N	154	43	Chuncheon	\N	\N	F	\N	\N	\N	\N	0	0
190	\N	Daye	Kim Hyunjung	김현정	다예	1998-02-25	Berry Good	South Korea	\N	167	0	\N	\N	\N	F	\N	\N	\N	50	0	0
191	\N	Dayoung	Kim Dayoung	김다영	다영	1991-02-02	Blady	South Korea	\N	0	0	Jeonju	\N	\N	F	\N	loloola22_	\N	26	0	0
193	\N	Dayun	Kim Dayun	김다윤	다윤	2000-11-20	Bonus Baby	South Korea	\N	164	0	\N	\N	\N	F	\N	\N	\N	73	0	0
194	\N	Della	Park Sehyun	박세현	델라	1995-09-03	Rockit Girl	South Korea	\N	0	0	\N	\N	\N	F	\N	\N	\N	149	0	0
971	\N	Nicole	Nicole Jung	정니콜	니콜	1991-10-07	\N	South Korea	USA	0	0	Los Angeles	\N	KARA	F	\N	\N	\N	\N	0	0
195	\N	Denise	Kim Denise	김데니스	데니스	2001-01-11	SECRET NUMBER	South Korea	USA	0	0	\N	\N	\N	F	\N	\N	\N	157	0	0
196	\N	Dia	Kwak Minnyeong	곽민녕	디아	1999-09-03	Maka Maka	South Korea	\N	0	0	\N	\N	\N	F	\N	\N	\N	170	0	0
199	\N	Dita	Dita Karang	디타 가랑	디타	1996-12-25	SECRET NUMBER	Indonesia	\N	0	0	Yogyakarta	\N	\N	F	\N	\N	\N	157	0	0
975	\N	Noah	Hwang Seundae	황승대	노아	1998-03-18	CHECKMATE	South Korea	\N	0	0	\N	\N	\N	M	\N	\N	\N	\N	0	0
201	\N	DK	Kim Donghyuk	김동혁	디케이	1997-01-03	iKON	South Korea	\N	0	0	\N	\N	\N	M	\N	\N	\N	222	0	0
202	\N	Doah	Kim Doah	김도아	도아	2003-12-04	FANATICS	South Korea	\N	163	42	\N	FANATICS FLAVOR	\N	F	\N	\N	\N	160	0	0
203	\N	Doha	Na Gyumin	나규민	도하	2004-03-07	BAE173	South Korea	\N	0	0	\N	\N	\N	M	\N	\N	\N	356	0	0
205	\N	Dohee	Min Dohee	민도희	도희	1994-09-25	Tiny-G	South Korea	\N	152	39	\N	\N	\N	F	\N	\N	\N	62	0	0
206	\N	Dohwan	Gil Dohwan	길도환	도환	2003-08-26	Ciipher	South Korea	\N	175	61	\N	\N	\N	M	\N	\N	\N	362	0	0
207	\N	Dohyon	Nam Dohyon	남도현	도현	2004-11-10	BAE173	South Korea	\N	180	62	\N	\N	X1	M	\N	\N	\N	356	0	0
984	\N	P-Goon	Park Sehyuk	박세혁	피군	1991-10-18	\N	South Korea	\N	0	0	Seoul	\N	Topp Dogg	M	\N	\N	\N	\N	0	0
208	\N	Dohyuk	Kim Dohyuk	김도혁	도혁	1998-01-16	14U	South Korea	\N	0	0	\N	\N	\N	M	\N	\N	\N	264	0	0
209	\N	Doi	Kim Doi	김도이	도이	1994-04-12	FANATICS	South Korea	\N	170	0	\N	\N	\N	F	\N	\N	\N	160	0	0
210	\N	Dojin	Jeon Yongtae	전용태	도진	1997-03-07	ENOi	South Korea	\N	181	61	\N	\N	\N	M	\N	\N	\N	323	0	0
211	\N	Dokyun	Na Dokyun	나도균	도균	1991-02-11	HISTORY	South Korea	\N	184	65	Daejeon	\N	\N	M	\N	\N	\N	214	0	0
989	\N	PSY	Park Jaesang	박재상	싸이	1977-12-31	\N	South Korea	\N	0	0	Seoul	\N	\N	M	\N	\N	\N	\N	0	0
212	\N	Donggeon	Song Donggeon	송동건	동건	1999-07-15	TOO	South Korea	\N	0	0	\N	\N	\N	M	\N	\N	\N	340	0	0
213	\N	Donghae	Lee Donghae	이동해	동해	1986-10-15	Super Junior	South Korea	\N	176	60	Mokpo	Super Junior-M	\N	M	\N	\N	\N	184	0	0
993	\N	Rain	Jung Jihoon	정지훈	비	1982-06-25	\N	South Korea	\N	0	0	Seosan	\N	\N	M	\N	\N	\N	\N	0	0
215	\N	Dongheon	Lee Dongheon	이동헌	동헌	1995-08-04	Verivery	South Korea	\N	0	0	\N	\N	\N	M	\N	\N	\N	286	0	0
216	\N	Donghun	Lee Donghun	이동훈	동훈	1993-05-15	A.C.E	South Korea	\N	0	0	Suncheon	\N	\N	M	\N	\N	\N	265	0	0
217	\N	Donghyun	Kim Donghyun	김동현	동현	1989-02-12	Boyfriend	South Korea	\N	178	60	Seoul	\N	\N	M	\N	\N	\N	204	0	0
218	\N	Donghyun	Kim Donghyun	김동현	동현	1999-02-23	Golden Child	South Korea	\N	0	0	\N	\N	\N	M	\N	\N	\N	258	0	0
219	\N	Donghyun	Kim Donghyun	김동현	동현	1998-09-17	AB6IX	South Korea	\N	0	0	Daejeon	MXM	\N	M	\N	\N	\N	320	0	0
220	\N	Dongjun	Kim Dongjun	김동준	동준	1992-02-11	ZE:A	South Korea	\N	0	0	Busan	\N	\N	M	\N	\N	\N	197	0	0
221	\N	Dongjun	Hwang Dongjun	황동준	동준	1999-09-07	Ghost9	South Korea	\N	0	0	\N	\N	\N	M	\N	\N	\N	354	0	0
222	\N	Dongkyu	Moon Dongkyu	문동규	동규	1992-11-16	Spectrum	South Korea	\N	0	0	\N	\N	\N	M	\N	\N	\N	292	0	0
225	\N	Dongwan	Kim Dongwan	김동완	동완	1979-11-21	Shinhwa	South Korea	\N	173	68	Pohang	\N	\N	M	\N	\N	\N	241	0	0
1027	\N	Saebom	Kim Saerok	김새록	새봄	1997-01-30	NATURE	South Korea	\N	0	0	\N	\N	\N	F	\N	\N	\N	109	0	0
1042	\N	Sangho	Jo Sangho	조상호	상호	1995-02-10	SNUPER	South Korea	\N	0	0	Changwon	\N	\N	M	\N	\N	\N	242	0	0
1044	\N	Sangil	Shim Sangil	심상일	상일	1993-05-01	SNUPER	South Korea	\N	0	0	Seoul	\N	\N	M	\N	\N	\N	242	0	0
1013	\N	Roda	Shin Joongmin	신중민	로다	1998-09-19	MONT	South Korea	\N	179	60	\N	\N	\N	M	\N	\N	\N	\N	0	0
1048	\N	Satbyeol	Jeon Yujin	전유진	샛별	2001-02-27	Pixy	South Korea	\N	165	0	\N	\N	Girls Alert	F	\N	\N	\N	178	0	0
1050	\N	Sebin	Jang Sebin	장세빈	세빈	1996-04-24	SNUPER	South Korea	\N	0	0	Pocheon	OMEGA X	\N	M	\N	\N	\N	242	0	0
1060	\N	Seline	Jung Yeonjeong	정연정	셀린	2000-06-20	Cignature	South Korea	\N	0	0	\N	\N	\N	F	\N	\N	\N	146	0	0
1061	\N	Semi	Gu Semi	구세미	세미	2002-04-10	Cignature	South Korea	\N	166	46	\N	\N	\N	F	\N	\N	\N	146	0	0
1009	\N	Rio	Son Gwanghyuk	손광혁	리오	1999-07-16	14U	South Korea	\N	0	0	\N	\N	\N	M	\N	\N	\N	264	0	0
1012	\N	Rocky	Park Minhyuk	박민혁	라키	1999-02-25	ASTRO	South Korea	\N	0	0	Jinju	\N	\N	M	\N	\N	\N	240	0	0
1014	\N	Roel	Kim Sunho	김선호	로엘	1997-02-13	ARGON	South Korea	\N	0	0	\N	\N	\N	M	\N	\N	\N	344	0	0
1023	\N	Rui	Jang Rui	장루이	루이	2000-03-07	7 O'clock	South Korea	\N	178	63	Seoul	\N	\N	M	\N	\N	\N	\N	0	0
226	\N	Dongwon	Lee Dongwon	이동원	동원	1994-01-01	KNK	South Korea	\N	184	0	\N	\N	\N	M	\N	\N	\N	226	0	0
227	\N	Dongwoo	Jang Dongwoo	장동우	동우	1990-11-22	Infinite	South Korea	\N	171	58	Guri	Infinite H	\N	M	\N	\N	\N	188	0	0
228	\N	Dongwoon	Son Dongwoon	손동운	동운	1991-06-06	Highlight	South Korea	\N	181	64	Busan	\N	Beast	M	\N	\N	\N	192	0	0
229	\N	Dongyun	Kim Dongyun	김동윤	동윤	2002-02-18	DRIPPIN	South Korea	\N	177	61	\N	\N	\N	M	\N	\N	\N	351	0	0
1029	\N	Saebyeok	Shim Jaeyoung	심재영	새벽	1996-11-09	Ho1iday	South Korea	\N	0	0	\N	\N	\N	F	\N	\N	\N	\N	0	0
230	\N	Doojoon	Yoon Doojoon	윤두준	두준	1989-07-04	Highlight	South Korea	\N	177	66	Goyang	\N	Beast	M	Leader	\N	\N	192	0	0
231	\N	Dosie	Jang Eunseung	장은성	도시	2000-02-11	Purple Kiss	South Korea	\N	0	0	\N	\N	\N	F	\N	\N	\N	179	0	0
1032	\N	Sakang	Jeon Sakang	정사강	사강	2002-10-26	TheEastLight	South Korea	\N	0	0	\N	\N	\N	M	\N	\N	\N	\N	0	0
233	\N	Dowoon	Yoon Dowoon	윤도운	도운	1995-08-25	DAY6	South Korea	\N	0	0	\N	\N	\N	M	Drummer	\N	\N	218	0	0
235	\N	Doyoung	Kim Dongyoung	김동영	도영	1996-02-01	NCT	South Korea	\N	0	0	Guri	NCT U, NCT 127	\N	M	\N	\N	\N	231	0	0
1035	\N	Samuel	Kim Samuel	김사무엘	사무엘	2002-01-17	\N	South Korea	USA	0	0	Los Angeles	\N	1PUNCH	M	\N	\N	\N	\N	0	0
236	\N	Doyoung	Kim Doyoung	김도영	도영	2003-12-04	Treasure	South Korea	\N	0	0	\N	\N	\N	M	\N	\N	\N	358	0	0
234	https://dbkpop.com/wp-content/uploads/2017/10/weki_meki_doyeon_profile-1.jpg	Doyeon	Kim Doyeon	김도연	도연	1999-12-04	Weki Meki	South Korea	\N	0	0	Incheon	I.O.I, WJMK	\N	F	\N	\N	\N	82	0	0
1039	\N	Sanga	Lee Sanga	이상아	상아	1999-08-05	\N	South Korea	\N	165	0	\N	\N	Pink Fantasy	F	\N	\N	\N	\N	0	0
1040	\N	Sangah	Yoo Sangah	윤상아	상아	2002-09-04	LIGHTSUM	South Korea	\N	168	0	\N	\N	\N	F	\N	\N	\N	\N	0	0
1041	\N	Sangdo	Yoo Sangdo	유상도	상도	1993-03-02	Topp Dogg	South Korea	\N	0	0	Incheon	\N	\N	M	\N	\N	\N	\N	0	0
1043	\N	Sanghoon	Lee Sanghoon	이상훈	상훈	1993-12-23	\N	South Korea	\N	0	0	Cheongju	\N	100%	M	\N	\N	\N	\N	0	0
237	https://dbkpop.com/wp-content/uploads/2019/04/1the9_debut_doyum_profile.jpg	Doyum	Jeon Doyum	전도염	도염	2002-02-21	1the9	South Korea	\N	175	55	Daejeon	\N	\N	M	\N	\N	\N	325	0	0
198	https://dbkpop.com/wp-content/uploads/2016/12/seventeen_dino_2.jpg	Dino	Lee Chan	이찬	디노	1999-02-11	Seventeen	South Korea	\N	167	54	Iksan	\N	\N	M	\N	\N	\N	237	0	0
243	\N	E.sol	Jeon Jaehyuk	전재혁	이솔	1992-09-17	14U	South Korea	\N	0	0	\N	\N	\N	M	\N	\N	\N	264	0	0
245	\N	Eli	Ellison Kim	엘리슨 킴	일라이	1991-03-13	U-KISS	USA	South Korea	0	0	Los Angeles	\N	\N	M	\N	\N	\N	190	0	0
248	\N	Ellin	Kim Minyoung	김민영	엘린	1990-04-02	Crayon Pop	South Korea	\N	165	44	Daegu	\N	\N	F	\N	hiellin	\N	17	0	0
250	\N	Ellyn	Bang Sunhee	방선희	엘린	2002-10-19	Girlkind	South Korea	\N	0	170	\N	\N	\N	F	\N	\N	\N	105	0	0
252	\N	Eric	Moon Junghyuk	문정혁	에릭	1979-02-16	Shinhwa	South Korea	\N	180	70	Seoul	\N	\N	M	\N	\N	\N	241	0	0
253	\N	Eseo	Noh Hyunjung	노현정	이서	1996-03-04	LUNARSOLAR	South Korea	\N	161	0	\N	\N	\N	F	\N	\N	\N	174	0	0
254	\N	Eson	Kim Jungmin	김정민	이슨	1996-12-28	We In The Zone	South Korea	USA	177	63	Honolulu	\N	\N	M	Leader	\N	\N	318	0	0
257	\N	Euijin	Lee Euijin	이의진	의진	1990-02-15	Bigflo	South Korea	\N	0	0	Seoul	\N	\N	M	\N	\N	\N	298	0	0
258	\N	Eun	Choi Eunmi	최은미	은	1990-05-14	Two X	South Korea	\N	0	0	\N	\N	\N	F	\N	\N	\N	63	0	0
259	\N	EunB	Shin Eunbi	신은비	은비	2000-09-17	Maka Maka	South Korea	\N	0	0	\N	\N	Lip Bubble	F	\N	\N	\N	170	0	0
265	\N	Eunho	Shin Donggeun	신동근	은호	1992-09-10	UNVS	South Korea	\N	0	0	\N	\N	\N	M	\N	\N	\N	341	0	0
1037	https://dbkpop.com/wp-content/uploads/2016/11/Twice_sana_profile_eyes_wide_open.jpg	Sana	Minatozaki Sana	미나토자키 사나	사나	1996-12-29	Twice	Japan	\N	168	0	Osaka	\N	\N	F	\N	\N	\N	39	1	0
1063	\N	Seogoong	Park Hyunho	박현호	서궁	1992-05-01	\N	South Korea	\N	0	0	Seongnam	\N	Topp Dogg	M	\N	\N	\N	\N	0	0
1066	\N	Seohyun	Seo Joohyun	서주현 	서현 	1991-06-28	SNSD	South Korea	\N	168	48	Seoul	TTS	\N	F	\N	seojuhyun_s	\N	\N	0	0
1067	\N	Seokcheol	Lee Seokchul	이석철	석철	2000-01-11	TheEastLight	South Korea	\N	0	170	\N	\N	\N	M	\N	d.dj_dinosaur.lee.s.c	\N	\N	0	0
1090	\N	Seunghan	Lee Seunghan	이승한	승한	1996-02-22	DUSTIN	South Korea	\N	0	0	\N	\N	\N	M	\N	\N	\N	333	0	0
1095	\N	Seunghwan	Lee Seunghwan	이승환	승환	1994-12-10	Romeo	South Korea	\N	0	0	\N	\N	\N	M	\N	\N	\N	235	0	0
1074	\N	Seonglee	Kim Seonglee	김성리	성리	1994-04-06	\N	South Korea	\N	173	0	\N	\N	RAINZ	M	\N	seong_leeee	\N	\N	0	0
1112	\N	Seyeon	Park Seyeon	박세연	세연	2001-05-06	Purplebeck	South Korea	\N	167	46	\N	\N	\N	F	\N	\N	\N	123	0	0
1069	\N	Seokyoung	Kim Seokyung	김서경	서경	1999-04-16	GWSN	South Korea	\N	0	0	\N	\N	\N	F	\N	\N	\N	107	0	0
1070	\N	Seol	Min Jihye	민지혜	설	1997-01-01	P.O.P	South Korea	\N	0	0	Gunsan	\N	\N	F	\N	\N	\N	86	0	0
1073	\N	Seonghwa	Park Seonghwa	박성화	성화	1998-04-03	ATEEZ	South Korea	\N	178	0	Jinju	\N	\N	M	\N	\N	\N	283	0	0
266	\N	Eunhyuk	Lee Hyukjae	이혁재	은혁	1986-04-04	Super Junior	South Korea	\N	176	58	Ilsan	Super Junior-M	\N	M	\N	\N	\N	184	0	0
268	\N	Eunjae	Kwak Eunjae	곽은재	은재	1996-05-02	14U	South Korea	\N	0	0	\N	\N	\N	M	\N	\N	\N	264	0	0
272	\N	Eunjin	Ma Eunjin	마은진	은진	1997-05-23	Playback	South Korea	\N	165	49	Wonju	\N	\N	F	\N	sunghyuk_seo	\N	69	0	0
273	\N	Eunjin	Moon Eunjin	문은진	은진	1998-11-05	Highteen	South Korea	\N	0	0	\N	\N	\N	F	\N	\N	\N	92	0	0
274	\N	Eunjo	Park Eunjo	박은조	은조	2002-03-07	Dreamnote	South Korea	\N	164	46	\N	\N	\N	F	\N	\N	\N	114	0	0
275	\N	Eunjun	Choi Eunjun	최은준	은준	1999-08-06	Spectrum	South Korea	\N	0	0	\N	\N	\N	M	\N	\N	\N	292	0	0
278	\N	Eunkwang	Seo Eunkwang	서은광	은광	1990-11-22	BtoB	South Korea	\N	173	62	Yongin	\N	\N	M	\N	\N	\N	203	0	0
1086	\N	Seulgi	Jeong Seulgi	정슬기	슬기	1990-05-12	S#aFLA	South Korea	\N	0	0	\N	\N	\N	F	\N	\N	\N	\N	0	0
1081	https://dbkpop.com/wp-content/uploads/2017/01/hello_venus_seoyoung.jpg	Seoyoung	Lee Seoyoung	이서영	서영	1994-06-27	Hello Venus	South Korea	\N	164	50	\N	\N	\N	F	\N	hv_seo0	\N	42	0	0
283	\N	Eunwoo	Cha Eunwoo	차은우	은우	1997-03-30	ASTRO	South Korea	\N	0	0	Gunpo	\N	\N	M	\N	\N	\N	240	0	0
284	\N	Eunyoung	Joo Eunyoung	주은영	은영	1992-06-12	Two X	South Korea	\N	0	0	\N	\N	\N	F	\N	\N	\N	63	0	0
287	\N	Fei	Wang FeiFei	왕페이페이	페이	1987-04-27	miss A	China	\N	165	0	Haikou	\N	\N	F	\N	ff0427	\N	15	0	0
289	\N	G-Dragon	Kwon Jiyong	권지용	지드래곤	1988-08-18	BIGBANG	South Korea	\N	177	58	Seoul	GD&TOP	\N	M	\N	\N	\N	183	0	0
291	\N	G.O	Jung Byunghee	정병희	지오	1987-11-06	MBLAQ	South Korea	\N	0	0	Changwon	\N	\N	M	\N	\N	\N	193	0	0
292	\N	Gabin	Kim Gabin	김가빈	가빈	1989-09-18	Blady	South Korea	\N	0	0	Busan	\N	\N	F	\N	_kimgabin	\N	26	0	0
293	\N	Gaeul	Park Gaeul	박가을	가을	1999-05-08	Favorite	South Korea	\N	164	48	Seoul	\N	\N	F	\N	\N	\N	84	0	0
244	https://dbkpop.com/wp-content/uploads/2020/09/Everglow_77.82X_78.29_La_Di_Da_Concept_EU_3.jpg	E:U	Park Jiwon	박지원	이유	1998-05-19	Everglow	South Korea	\N	0	0	\N	\N	\N	F	\N	\N	\N	143	0	0
249	https://dbkpop.com/wp-content/uploads/2017/10/weki_meki_elly_profile_hide_and_seek.jpg	Elly	Jung Haerim	정해림	엘리	1998-07-20	Weki Meki	South Korea	\N	0	0	\N	\N	\N	F	\N	\N	\N	82	0	0
1099	\N	Seunghyun	Lee Seunghyun	이승현	승현	2001-12-31	TheEastLight	South Korea	\N	0	0	\N	\N	\N	M	\N	\N	\N	\N	0	0
1100	\N	Seungjun	Ji Seungjun	지승준	승준	1998-09-15	Astin	South Korea	\N	0	0	\N	\N	\N	M	\N	\N	\N	\N	0	0
267	https://dbkpop.com/wp-content/uploads/2017/01/dia_eunice_mr_potter.jpg	Eunice	Heo Sooyeon	허수연	유니스	1991-11-02	DIA	South Korea	\N	166	49	Busan	\N	\N	F	\N	\N	\N	33	0	0
261	https://dbkpop.com/wp-content/uploads/2018/10/izone_coloriz_kwon_eunbi_profile.jpg	Eunbi	Kwon Eunbi	권은비	은비	1995-09-27	IZ*ONE	South Korea	\N	0	0	Seoul	\N	\N	F	\N	\N	\N	108	0	0
262	https://dbkpop.com/wp-content/uploads/2019/06/clc_me_eunbin_profile.jpg	Eunbin	Kwon Eunbin	권은빈	은빈	2000-01-06	CLC	South Korea	\N	167	48	Seoul	\N	\N	F	\N	\N	\N	23	0	0
1104	\N	Seungmin	Lee Seungmin	이승민	승민	1996-02-03	Hashtag	South Korea	\N	162	0	\N	\N	\N	F	\N	\N	\N	\N	0	0
264	https://dbkpop.com/wp-content/uploads/2018/10/gfriend_memoria_eunha_profile.jpg	Eunha	Jung Eunbi	정은비	은하	1997-05-30	Gfriend	South Korea	\N	163	0	Seoul	\N	\N	F	\N	\N	\N	48	0	0
288	https://dbkpop.com/wp-content/uploads/2020/10/Stray_Kids_Felix_Profile_IN_Life_Back_Door.jpg	Felix	Lee Youngbok	이용복	필릭스	2000-09-15	Stray Kids	South Korea	\N	0	0	Sydney	\N	\N	M	\N	\N	\N	279	0	0
270	https://dbkpop.com/wp-content/uploads/2017/10/brave_girls_eunji_profile.jpg	Eunji	Hong Eunji	홍은지	은지	1992-07-19	Brave Girls	South Korea	\N	0	0	Seoul	\N	\N	F	\N	\N	\N	25	0	0
309	\N	GK	Kim Kwanghyun	김광현	지케이	1998-09-29	DKB	South Korea	\N	177	60	\N	\N	\N	M	\N	\N	\N	327	0	0
311	\N	Goeun	Na Goeun	나고은	고은	1999-09-03	Purple Kiss	South Korea	\N	160	44	\N	\N	\N	F	\N	\N	\N	179	0	0
313	\N	Gohyeon	Go Hyeon	고현	고현	1994-10-01	14U	South Korea	\N	0	0	\N	\N	\N	M	\N	\N	\N	264	0	0
314	\N	Gon	Kim Seongjung	김성중	곤	1998-11-13	ARGON	South Korea	\N	0	0	\N	\N	\N	M	\N	\N	\N	344	0	0
317	\N	Gowoon	Moon Joojeong	문유정	고운	1998-12-18	Berry Good	South Korea	\N	167	0	\N	\N	\N	F	\N	\N	\N	50	0	0
318	\N	Gracie	Kim Gaeun	김가운	그레이시	1996-10-28	H.U.B	South Korea	\N	0	0	\N	\N	\N	F	\N	i.m_gracie	\N	99	0	0
320	\N	Gun	Kwak Gun	곽건	건	2001-09-29	14U	South Korea	\N	0	0	\N	\N	\N	M	\N	\N	\N	264	0	0
321	\N	Gunmin	Lee Gunmin	이건민	건민	1994-10-03	B.I.G	South Korea	\N	177	64	Gangwon	\N	\N	M	\N	\N	\N	254	0	0
322	\N	Gunwoo	Lee Gunwoo	이건우	건우	1989-01-30	MYNAME	South Korea	\N	0	0	Daejeon	\N	\N	M	\N	\N	\N	199	0	0
323	\N	Gunwoo	Kim Gunwoo	김건우	건우	2002-05-28	T1419	South Korea	\N	0	0	\N	\N	\N	M	\N	\N	\N	361	0	0
324	\N	Gyehyeon	Jo Gyehyeon	조계현	계현	1999-05-14	Verivery	South Korea	\N	0	0	\N	\N	\N	M	\N	\N	\N	286	0	0
325	\N	Gyeongtae	Kwon Gyeongtae	권경태	경태	2000-07-23	14U	South Korea	\N	0	0	\N	\N	\N	M	\N	\N	\N	264	0	0
326	\N	Gyujin	Han Gyujin	한규진	규진	1997-11-21	UP10TION	South Korea	\N	0	0	Icheon	\N	\N	M	\N	\N	\N	247	0	0
327	\N	Gyuri	Park Gyuri	박규리	규리	1988-05-21	KARA	South Korea	\N	0	0	Seoul	\N	\N	F	\N	\N	\N	2	0	0
1128	\N	Sieun	Lee Sieun	이시은	시은	1993-09-19	CHECKMATE	South Korea	\N	163	0	\N	\N	\N	F	\N	\N	\N	\N	0	0
1131	\N	Sihyeon	Kang Sihyeon	강시현	시현	1998-07-15	ARIAZ	South Korea	\N	0	0	\N	\N	\N	F	\N	\N	\N	150	0	0
1137	\N	Siu	Hwang Inseok	황인석	시우	1995-05-19	DUSTIN	South Korea	\N	0	0	\N	\N	\N	M	\N	\N	\N	333	0	0
1142	\N	Siyoung	Park Siyoung	박시영	시영	2003-05-06	Mirae	South Korea	\N	172	55	\N	\N	\N	M	\N	\N	\N	360	0	0
1149	\N	Sohyun	Kwon Sohyun	권소현	소현	1994-08-30	4minute	South Korea	\N	162	0	Seoul	\N	\N	F	\N	kkwonsso_94	\N	6	0	0
1158	\N	Somin	Jang Somin	장소민	소민	1993-11-10	BADKIZ	South Korea	\N	0	0	Gwangmyeon	\N	\N	F	\N	somin.92	\N	30	0	0
1178	https://dbkpop.com/wp-content/uploads/2016/11/laboum_summer_special_soyeon_profile.jpg	Soyeon	Jung Soyeon	정소연	소연	1994-05-04	LABOUM	South Korea	\N	161	44	Gwangju	\N	\N	F	Main Vocalist	\N	\N	44	0	0
1155	https://dbkpop.com/wp-content/uploads/2016/12/laboum_summer_special_solbin_profile.jpg	Solbin	Ahn Solbin	안솔빈	솔빈	1997-08-19	LABOUM	South Korea	\N	169	52	Ojeonggu	\N	\N	F	Visual	\N	\N	44	0	0
1141	https://dbkpop.com/wp-content/uploads/2018/05/dreamcatcher_escape_the_era_siyeon_profile.jpg	Siyeon	Lee Siyeon	이시연	시연	1995-10-01	Dreamcatcher	South Korea	\N	170	0	Daegu	\N	Minx	F	\N	\N	\N	80	0	0
1127	\N	Sian	Choi Changmin	최창민	시안	2001-02-01	T1419	South Korea	\N	0	0	\N	\N	\N	M	\N	\N	\N	361	0	0
1129	\N	Sieun	Park Sieun	박시은	시은	2001-08-01	STAYC	South Korea	\N	0	0	\N	\N	\N	F	\N	\N	\N	166	0	0
331	\N	Haechan	Lee Donghyuk	이동혁	해찬	2000-06-06	NCT	South Korea	\N	0	0	\N	NCT 127, NCT Dream	\N	M	\N	\N	\N	231	0	0
333	\N	Haena	Lee Haena	이해나	해나	1991-06-02	Matilda	South Korea	\N	0	165	\N	\N	\N	F	\N	\N	\N	93	0	0
334	\N	Haena	Jeon Eunbi	전은비	해나	2002-02-19	ANS	South Korea	\N	0	0	\N	\N	\N	F	\N	\N	\N	151	0	0
335	\N	Haeri	Lee Haeri	이해리	해리	1985-02-14	Davichi	South Korea	\N	0	0	Seoul	\N	\N	F	\N	\N	\N	20	0	0
1148	\N	Sohye	Kim Sohye	김소혜	소혜	1999-07-19	\N	South Korea	\N	0	0	Seoul	\N	I.O.I	F	\N	\N	\N	\N	0	0
336	\N	Haeri	Jung Haeri	정해리	해리	1997-01-14	P.O.P	South Korea	\N	0	0	Seoul	\N	\N	F	\N	\N	\N	86	0	0
337	\N	Haeryeong	Na Haeryeong	나해령	해령	1994-11-11	BESTie	South Korea	\N	0	0	\N	\N	\N	F	\N	bestie_hr	\N	21	0	0
1152	\N	Sojin	Hong Sojin	홍소진	소진	1999-09-24	Hashtag	South Korea	\N	163	0	\N	\N	\N	F	\N	\N	\N	\N	0	0
338	\N	Haeun	Yoon Haeun	윤하은	하은	1999-03-12	3YE	South Korea	\N	163	0	\N	\N	Apple.B	F	\N	\N	\N	148	0	0
343	\N	Hamin	Jo Hamin	조하민	하민	1997-10-24	ENOi	South Korea	\N	183	65	\N	\N	\N	M	\N	\N	\N	323	0	0
347	\N	Han Leeseul	Han Jiyoon	한지윤	한이슬	2000-02-12	Rockit Girl	South Korea	\N	0	0	\N	\N	\N	F	\N	\N	\N	149	0	0
1157	\N	Somi	Jeon Somi	전소미	소미	2001-03-09	\N	South Korea	Canada	0	0	Ontario	\N	I.O.I	F	\N	\N	\N	\N	0	0
353	\N	Haneul	Lee Haneul	이하늘	하늘	1996-06-03	ARGON	South Korea	\N	175	0	\N	\N	\N	M	\N	\N	\N	344	0	0
354	\N	Haneul	Choi Haneul	최하늘	하늘	2000-11-28	Saturday	South Korea	\N	158	43	\N	\N	\N	F	\N	\N	\N	116	0	0
356	\N	Hangyul	Lee Hangyul	이한결	한결	1999-12-07	BAE173	South Korea	\N	177	0	\N	\N	X1, IM	M	\N	\N	\N	356	0	0
328	https://dbkpop.com/wp-content/uploads/2018/11/fromis_9_4_gyuri_profile.jpg	Gyuri	Jang Gyuri	장규리	규리	1997-12-27	fromis_9	South Korea	\N	0	0	Seoul	\N	\N	F	\N	\N	\N	103	0	0
1164	\N	Songyee	Park Songyee	박송이	송이	2004-09-25	\N	South Korea	\N	0	0	\N	\N	woo!ah!	F	Main Rapper	\N	\N	\N	0	0
330	https://dbkpop.com/wp-content/uploads/2017/11/gugudan_chococo_factory_haebin_profile.jpg	Haebin	Han Haebin	한해빈	해빈	1995-08-16	Gugudan	South Korea	\N	0	0	\N	\N	\N	F	\N	\N	\N	47	0	0
301	https://dbkpop.com/wp-content/uploads/2017/02/stellar_gayoung_2.jpg	Gayoung	Kim Gayoung	김가영	가영	1991-12-02	Stellar	South Korea	\N	0	0	Seoul	\N	\N	F	\N	\N	\N	64	0	0
307	https://dbkpop.com/wp-content/uploads/2020/10/aespa_giselle_profile_3.jpg	Giselle	Uchinaga Aeri	우치나가 애리	지젤	2000-10-30	aespa	Japan	\N	166	0	\N	\N	\N	F	\N	\N	\N	175	0	0
366	\N	Harin	Seo Harin	서하린	하린	2000-12-07	BOTOPASS	South Korea	\N	0	0	\N	\N	\N	F	\N	\N	\N	173	0	0
367	\N	Harry-June	Han Harry-June	한해리준	해리준	2004-01-01	DKB	South Korea	\N	178	61	\N	\N	\N	M	\N	\N	\N	327	0	0
1171	\N	Sooyoung	Choi Sooyoung	최수영 	수영 	1990-02-10	SNSD	South Korea	\N	170	48	Gwangju	\N	\N	F	\N	hotsootuff	\N	\N	0	0
371	\N	Haruto	Watanabe Haruto	와타나베 하루토	하루토	2004-04-05	Treasure	Japan	\N	0	0	\N	\N	\N	M	\N	\N	\N	358	0	0
375	\N	Hayoung	Lee Hayoung	이하영	하영	1993-08-03	Playback	South Korea	\N	0	0	\N	\N	\N	F	\N	\N	\N	69	0	0
379	\N	Heechan	Yang Heechan	양희찬	희찬	1999-07-31	DKB	South Korea	\N	176	63	\N	\N	\N	M	\N	\N	\N	327	0	0
380	\N	Heechul	Kim Heechul	김희철	희철	1983-07-10	Super Junior	South Korea	\N	179	60	Hoengseong	\N	\N	M	\N	\N	\N	184	0	0
381	\N	Heechul	Jung Heechul	정희철	희철	1989-12-09	ZE:A	South Korea	\N	0	0	Jeju	\N	\N	M	\N	\N	\N	197	0	0
1182	\N	Soyoung	Yoo Soyoung	유소영	소영	1996-03-29	\N	South Korea	\N	0	0	Seoul	\N	After School	F	\N	ssossolovely	\N	\N	0	0
1165	https://dbkpop.com/wp-content/uploads/2019/04/wjsn_wj_stay_subin_profile.jpg	Soobin	Park Soobin	박수빈	수빈	1996-09-14	Cosmic Girls	South Korea	\N	159	0	Seoul	WJSN Chocome	\N	F	\N	\N	\N	\N	0	0
1159	https://dbkpop.com/wp-content/uploads/2016/12/kard_rumor_somin_profile.jpg	Somin	Jeon Somin	전소민	소민	1996-08-22	KARD	South Korea	\N	0	0	Seoul	\N	April	F	\N	\N	\N	\N	0	0
1186	\N	Sua	Yang Sua	양수아	수아	1995-03-24	Hashtag	South Korea	\N	169	0	Gwangju	\N	\N	F	\N	\N	\N	\N	0	0
1187	\N	Sua	Choi Sooah	최수아	수아	2003-02-24	Pixy	South Korea	\N	162	44	\N	\N	\N	F	\N	\N	\N	178	0	0
1195	\N	Suhyun	Choi Hyunggeun	최형근	수현	1992-10-01	SNUPER	South Korea	\N	0	0	Bucheon	\N	\N	M	\N	\N	\N	242	0	0
1190	\N	Subin	Oh Subin	오수빈	수빈	1998-09-30	Hashtag	South Korea	\N	172	0	\N	\N	\N	F	\N	\N	\N	\N	0	0
1197	\N	Suji	Lee Suji	이수지	수지	1998-03-20	UNI.T	South Korea	\N	0	0	Busan	\N	The Ark	F	\N	\N	\N	110	0	0
1226	\N	Sunshine	Kim Minjung	김민정	선샤인	2002-06-20	NATURE	South Korea	\N	0	0	\N	\N	\N	F	\N	\N	\N	109	0	0
1185	https://dbkpop.com/wp-content/uploads/2018/05/dreamcatcher_escape_the_era_sua_profile.jpg	Sua	Kim Bora	김보라	수아	1994-08-10	Dreamcatcher	South Korea	\N	164	0	Changwon	\N	Minx	F	\N	\N	\N	80	0	0
1194	\N	Suhyeon	Kim Seunghyun	김승현	수현	1988-04-19	S#aFLA	South Korea	\N	0	0	\N	\N	1PS	F	\N	\N	\N	\N	0	0
1183	\N	Soyul	Park Hyekyeong	박혜경	소율	1991-05-15	Crayon Pop	South Korea	\N	160	0	Seoul	\N	\N	F	\N	\N	\N	17	0	0
1184	\N	St. Van	Lee Geumhyuk	이금혁	세인트 반	1991-12-22	VAV	South Korea	\N	182	70	\N	\N	\N	M	\N	\N	\N	294	0	0
1199	\N	Sulli†	Choi Jinri	최진리	설리	1994-03-29	\N	South Korea	\N	0	0	Busan	\N	f(x)	F	\N	\N	\N	\N	0	0
382	\N	Heedo	Yoon Heedo	유희도	희도	1996-04-22	B.I.G	South Korea	\N	180	60	Seoul	\N	\N	M	\N	\N	\N	254	0	0
384	\N	Heejin	Song Heejin	송희진	희진	1995-08-19	Good Day	South Korea	\N	0	0	Seoul	\N	\N	F	\N	\N	\N	85	0	0
386	\N	Heejun	Oh Heejun	오희준	희준	1996-05-08	KNK	South Korea	\N	180	61	\N	\N	\N	M	\N	\N	\N	226	0	0
387	\N	Heeo	Gwak Heeoh	곽히오	히오	1994-05-02	4TEN	South Korea	\N	0	0	\N	\N	\N	F	\N	\N	\N	31	0	0
388	\N	Heeseok	Yun Heeseok	윤희석	희석	1997-06-10	Limitless	South Korea	\N	180	61	\N	\N	\N	M	\N	\N	\N	324	0	0
390	\N	Heesu	Kim Heesu	김희수	희수	1998-03-24	Maka Maka	South Korea	\N	0	0	\N	\N	\N	F	\N	\N	\N	170	0	0
395	\N	Heo Chan	Heo Chan	허찬	허찬	1995-12-14	VICTON	South Korea	\N	0	0	\N	\N	\N	M	\N	\N	\N	248	0	0
1207	\N	Sunghyuk	Seo Sunghyuk	서성혁	성혁	1999-08-26	\N	South Korea	\N	170	0	\N	\N	\N	M	\N	sunghyuk_seo	\N	\N	0	0
397	\N	HighTop	Lim Hyeontae	임현태	하이탑	1994-03-19	Bigflo	South Korea	\N	178	60	\N	\N	\N	M	\N	\N	\N	298	0	0
405	\N	Honggi	Lee Honggi	이홍기	홍기	1990-03-02	FTISLAND	South Korea	\N	0	0	Gwangju	\N	\N	M	Vocal	\N	\N	209	0	0
407	\N	Hongjoong	Kim Hongjoong	김홍중	홍중	1998-11-07	ATEEZ	South Korea	\N	171	0	\N	\N	\N	M	\N	\N	\N	283	0	0
408	\N	Hongseob	Shim Hongseob	심홍섭	홍섭	1998-01-08	24K	South Korea	\N	177	58	\N	\N	\N	M	\N	\N	\N	205	0	0
410	\N	Hoon	Yeo Hoonmin	여훈민	훈	1991-08-16	U-KISS	South Korea	\N	0	0	Namyangju	\N	\N	M	\N	\N	\N	190	0	0
411	\N	Hoony	Lee Seunghoon	이승훈	승훈	1992-01-11	WINNER	South Korea	\N	0	0	Busan	\N	\N	M	\N	\N	\N	221	0	0
414	\N	Hoyoung	Bae Hoyoung	배호영	호영	1998-08-10	Verivery	South Korea	\N	0	0	\N	\N	\N	M	\N	\N	\N	286	0	0
377	https://dbkpop.com/wp-content/uploads/2018/11/fromis_9_4_hayoung_profile.jpg	Hayoung	Song Hayoung	송하영	하영	1997-09-29	fromis_9	South Korea	\N	0	0	Gwangju	\N	\N	F	\N	\N	\N	103	0	0
400	https://dbkpop.com/wp-content/uploads/2018/10/izone_coloriz_honda_hitomi_profile.jpg	Hitomi	Honda Hitomi	혼다 히토미	히토미	2001-10-06	IZ*ONE	Japan	\N	0	0	Toghichi	\N	\N	F	\N	\N	\N	108	0	0
1217	\N	Sungoh	Yoo Sungoh	유성오	성오	1991-01-08	\N	South Korea	\N	0	0	\N	\N	24K	M	\N	\N	\N	\N	0	0
412	https://dbkpop.com/wp-content/uploads/2016/12/seventeen_hoshi_2.jpg	Hoshi	Kwon Soonyoung	권순영	호시	1996-06-15	Seventeen	South Korea	\N	178	63	Namyangju	\N	\N	M	\N	\N	\N	237	0	0
389	https://dbkpop.com/wp-content/uploads/2020/09/enhypen_official_profile_Heesung_1.jpg	Heeseung	Lee Heeseung	이희승	희승	2001-10-15	ENHYPEN	South Korea	\N	0	0	\N	\N	\N	M	\N	\N	\N	352	0	0
376	https://dbkpop.com/wp-content/uploads/2017/10/trcng_hayoung_profile.jpg	Hayoung	Choi Hayoung	최하영	하영	2000-08-22	TRCNG	South Korea	\N	181	0	\N	\N	\N	M	\N	\N	\N	271	0	0
357	https://dbkpop.com/wp-content/uploads/2018/04/exid_lady_hani_profile.jpg	Hani	Ahn Hee-yeon	안희연	하니	1992-05-01	EXID	South Korea	\N	168	0	Seoul	\N	\N	F	\N	ahnhani_92	\N	12	0	0
1223	\N	Sunn	Hwang Jiwon	황지원	선	2000-02-07	\N	South Korea	\N	0	0	Jincheon	\N	Good Day, Cignature	F	\N	\N	\N	\N	0	0
1224	\N	Sunny	Lee Sunkyu	이순규 	써니	1989-05-15	SNSD	South Korea	\N	158	43	California	\N	\N	F	\N	svnnynight	\N	\N	0	0
396	https://dbkpop.com/wp-content/uploads/2017/10/sonamoo_happy_box_part2_highd_profile.jpg	High.D	Kim Dohee	김도희	하이디	1996-12-21	Sonamoo	South Korea	\N	165	0	Suwon	\N	\N	F	Main Vocalist	\N	SONAMOO_HighD	66	0	0
398	https://dbkpop.com/wp-content/uploads/2018/04/bap_hands_up_himchan_profile.jpg	Himchan	Kim Himchan	김힘찬	힘찬	1990-04-19	B.A.P	South Korea	\N	180	69	Seoul	\N	\N	M	\N	\N	\N	195	0	0
373	https://dbkpop.com/wp-content/uploads/2016/12/bonus_baby_hayoon.jpg	Hayoon	Jung Hayoon	정하윤	하윤	1998-11-21	Bonus Baby	South Korea	\N	163	0	\N	\N	MyB	F	\N	\N	\N	73	0	0
422	\N	Hwanhee	Lee Hwanhee	이환희	환희	1998-05-06	UP10TION	South Korea	\N	0	0	Daejeon	\N	\N	M	\N	\N	\N	247	0	0
1230	\N	Suri	Kang Suri	강수리	수리	1994-10-11	CHECKMATE	South Korea	\N	168	0	\N	\N	\N	F	\N	\N	\N	\N	0	0
424	\N	Hwanwoong	Yeo Hwanwoong	여환웅	환웅	1998-08-26	Oneus	South Korea	\N	0	0	\N	\N	\N	M	\N	\N	\N	285	0	0
425	\N	Hwarang	Park Jonghan	박종찬	종찬	1995-12-05	Spectrum	South Korea	\N	0	0	\N	\N	\N	M	\N	\N	\N	292	0	0
426	\N	Hwasa	Ahn Hyejin	안혜진	화사	1995-07-23	Mamamoo	South Korea	\N	162	44	Jeonju	\N	\N	F	Lead Vocalist	\N	\N	58	0	0
1239	\N	Sya	Lee Junyoung	이준영	샤	2002-09-09	BLITZERS	South Korea	\N	0	0	\N	\N	\N	M	\N	\N	\N	\N	0	0
1242	\N	Taedong	Kim Taedong	김태동	태동	1997-11-07	OMEGA X	South Korea	\N	177	61	\N	\N	GIDONGDAE	M	\N	\N	\N	\N	0	0
1221	https://dbkpop.com/wp-content/uploads/2017/01/secret_han_sunhwa_1.jpg	Sunhwa	Han Sunhwa	한선화	선화	1990-10-06	\N	South Korea	\N	0	0	Busan	\N	SECRET	F	\N	shh_daily	\N	\N	0	0
1243	\N	Taeeun	Moon Taeeun	문태은	태은	2000-02-09	IM	South Korea	\N	175	0	\N	\N	\N	M	\N	\N	\N	\N	0	0
1244	\N	Taeha	Yoo Taeha	유태하	태하	1995-10-05	\N	South Korea	\N	162	0	\N	\N	Berry Good	F	\N	\N	\N	\N	0	0
1248	\N	Taehyun	Noh Taehyun	노태현	태현	1993-10-15	HOTSHOT	South Korea	\N	0	0	Seoul	JBJ	\N	M	\N	\N	\N	289	0	0
1247	\N	Taehyun	Nam Taehyun	남태현	태현	1994-05-10	\N	South Korea	\N	0	0	Hanam	\N	WINNER	M	\N	\N	\N	\N	0	0
1259	\N	Taewoong	Yoo Taewoong	유태웅	태웅	1994-05-24	SNUPER	South Korea	Japan	0	0	\N	\N	\N	M	\N	\N	\N	242	0	0
1279	\N	Timoteo	Kim Moongyu	김문규	티모테오	1993-01-25	HOTSHOT	South Korea	\N	0	0	\N	\N	\N	M	\N	\N	\N	289	0	0
1285	\N	U-Si	Yoo Jiyeon	윤지연	유시	1997-11-13	BADKIZ	South Korea	\N	0	0	Iksan	\N	\N	F	\N	_u_si	\N	30	0	0
1286	\N	Uchae	Yu Hyejun	유혜준	유채	2002-05-07	NATURE	South Korea	\N	0	0	\N	\N	\N	F	\N	\N	\N	109	0	0
1254	\N	Taera	Lee Yujin	이유진	태라	1994-04-12	Gate9	South Korea	\N	161	0	Incheon	\N	\N	F	\N	taera9nine	\N	\N	0	0
1296	https://dbkpop.com/wp-content/uploads/2018/08/loona__vivi_profile.jpg	Vivi	Wong Viian	황가희	비비	1996-12-09	LOONA	Hong Kong	\N	0	0	Hong Kong	Loona 1/3	\N	F	\N	\N	\N	78	0	0
1281	https://dbkpop.com/wp-content/uploads/2016/11/twice_tzuyu_profile_eyes_wide_open.jpg	Tzuyu	Chou Tzuyu	저우쯔위	쯔위	1999-06-14	Twice	Taiwan	\N	169	0	Tainan	\N	\N	F	\N	\N	\N	39	0	0
1246	\N	Taeheon	Kim Taeheon	김태헌	태헌	1989-06-18	ZE:A	South Korea	\N	0	0	Gwangju	\N	\N	M	\N	\N	\N	197	0	0
1265	\N	Taeyoung	Kim Taeyoung	김태영	태영	1999-06-18	7 O'clock	South Korea	\N	0	0	\N	\N	\N	M	\N	\N	\N	\N	0	0
1253	\N	Taemin	Lee Taemin	이태민	태민	1993-07-18	SHINee	South Korea	\N	177	53	Seoul	SuperM	\N	M	\N	\N	\N	186	0	0
1255	\N	Taeryeong	Lim Jeongmin	임정민	태령	2000-12-27	LUNARSOLAR	South Korea	\N	0	0	\N	\N	\N	F	\N	\N	\N	174	0	0
1257	\N	Taesung	Lee Taesung	이태승	태승	2003-12-19	Ghost9	South Korea	\N	184	64	\N	TEEN TEEN	\N	M	\N	\N	\N	354	0	0
1260	\N	Taeyang	Dong Youngbae	동영배	태양	1988-05-18	BIGBANG	South Korea	\N	174	56	Uljeongbu	\N	\N	M	\N	\N	\N	183	0	0
1270	\N	Tao	Hwang Zitao	황자도	타오	1993-05-02	\N	China	\N	183	70	Qingdao	\N	EXO	M	\N	\N	\N	\N	0	0
1271	\N	Taro	Choi Wonjin	최원진	타로	1994-11-09	Hot Blood Youth	South Korea	\N	0	0	\N	\N	\N	M	\N	\N	\N	\N	0	0
1261	\N	Taeyang	Yoo Taeyang	유태양	태양	1997-02-28	SF9	South Korea	\N	0	0	\N	\N	\N	M	\N	\N	\N	255	0	0
1263	\N	Taeyong	Lee Taeyong	이태용	태용	1995-07-01	NCT	South Korea	\N	0	0	\N	NCT U, NCT 127,SuperM	\N	M	\N	\N	\N	231	0	0
1274	\N	Terry	Han Dasom	한다솜	테리	1998-02-02	\N	South Korea	\N	0	0	\N	\N	NeonPunch	F	\N	\N	\N	\N	0	0
427	\N	Hweseung	Yoo Hweseung	유회승	회승	1995-02-28	N.Flying	South Korea	\N	0	0	\N	\N	\N	M	\N	\N	\N	210	0	0
428	\N	Hwi	Jo Mingyu	조민규	휘	2002-09-26	Newkidd	South Korea	\N	0	0	\N	\N	\N	M	\N	\N	\N	321	0	0
1277	\N	Thunder	Park Sanghyun	박상현	천둥	1990-10-07	\N	South Korea	\N	0	0	Busan	\N	MBLAQ	M	\N	\N	\N	\N	0	0
1278	\N	Tiffany	Hwang Miyoung	황미영	티파니	1989-08-01	SNSD	South Korea	USA	163	50	San Francisco	TTS	\N	F	\N	xolovestephi	\N	\N	0	0
429	\N	Hwi	Lee Choonghyun	이충현	휘	1999-02-04	Ciipher	South Korea	\N	172	61	\N	\N	\N	M	\N	\N	\N	362	0	0
430	\N	Hwichan	Lee Heechan	이휘찬	휘찬	1996-04-18	Limitless	South Korea	\N	0	0	\N	OMEGA X	\N	M	\N	\N	\N	324	0	0
1283	\N	U-Know Yunho	Jung Yunho	정윤호	유노윤호	1986-02-06	TVXQ	South Korea	\N	0	0	Gwangju	\N	\N	M	\N	\N	\N	\N	0	0
431	\N	Hwiyoung	Kim Youngkyun	김영균	휘영	1999-05-11	SF9	South Korea	\N	0	0	\N	\N	\N	M	\N	\N	\N	255	0	0
1287	\N	Uee	Kim Yujin	김유진	유이	1988-04-09	\N	South Korea	\N	0	0	Daegu	\N	After School	F	\N	\N	\N	\N	0	0
1288	\N	Uji	Jang Yuji	정유지	유지	1991-01-02	\N	South Korea	\N	0	0	\N	\N	EXID, BESTie	F	\N	yudi_didi	\N	\N	0	0
432	\N	Hyangsuk	Lee Hyangsuk	이향숙	향숙	1991-04-24	2EYES	South Korea	\N	165	0	Seoul	\N	\N	F	\N	baby_sook	\N	138	0	0
434	\N	Hyebin	Im Hyebin	임혜빈	혜빈	1999-11-10	Highteen	South Korea	\N	0	0	\N	\N	\N	F	\N	\N	\N	92	0	0
435	\N	Hyebin	Kim Hyebin	김혜빈	혜빈	1997-03-29	AREAL	South Korea	\N	0	0	\N	\N	Rose Finger	F	\N	\N	\N	176	0	0
437	\N	Hyeji	Jeong Hyeji	정혜지	혜지	1992-04-02	4TEN	South Korea	\N	0	0	Seoul	\N	\N	F	\N	\N	\N	31	0	0
1293	\N	Viki	Kang Eunhye	강은혜	비키	1988-03-28	\N	South Korea	\N	0	0	Seoul	\N	Dal Shabet	F	\N	\N	\N	\N	0	0
438	\N	Hyejin	Baek Hyejin	백혜진	혜진	1996-11-21	4TEN	South Korea	\N	0	0	Sacheon	\N	\N	F	\N	\N	\N	31	0	0
439	\N	Hyejin	Kang Hyejin	강혜진	혜진	2000-07-13	CRAXY	South Korea	\N	0	0	\N	\N	\N	F	\N	\N	\N	154	0	0
1297	\N	Vivian	Park Sunghee	박성희	비비안	1998-12-08	Gate9	South Korea	\N	0	0	\N	\N	\N	F	\N	vivian__g9	\N	\N	0	0
440	\N	Hyejoo	Park Hyunjoo	박현주	혜주	1999-01-12	Highteen	South Korea	\N	0	0	\N	\N	\N	F	\N	\N	\N	92	0	0
441	\N	Hyemi	Pyo Hyemi	표혜미	혜미	1991-04-03	9Muses	South Korea	\N	171	46	Gwangju	9MUSES A	\N	F	\N	pyopyohyemi	\N	16	0	0
1262	https://dbkpop.com/wp-content/uploads/2019/07/taeyeon_4_seasons_3.jpg	Taeyeon	Kim Taeyeon	김태연	태연	1989-03-09	SNSD	South Korea	\N	160	44	Jeonju	TTS, Oh!GG	\N	F	Leader, Main Vocalist	taeyeon_ss	\N	\N	0	0
1309	\N	Wondae	Seol Wondae	설원대	원대	1998-04-28	Dongkiz	South Korea	\N	180	63	\N	\N	\N	M	\N	\N	\N	347	0	0
1338	\N	Woosung	Choi Sunghyuk	최성혁	우성	1994-09-24	SNUPER	South Korea	\N	0	0	Seoul	\N	\N	M	\N	\N	\N	242	0	0
1351	\N	Xin	Wang Xinwi	왕씬위	씬	1996-11-10	VARSITY	China	\N	185	0	\N	\N	\N	M	\N	\N	\N	273	0	0
1354	\N	Xiweol	Kang Minseok	강민석	시월	1996-10-21	VARSITY	South Korea	\N	174	0	\N	\N	\N	M	\N	\N	\N	273	0	0
1301	\N	Wenhan	Li Wenhan	리원한	원한	1994-07-22	UNIQ	China	\N	180	64	\N	\N	\N	M	\N	\N	\N	250	0	0
1302	\N	Wheein	Jung Wheein	정휘인	휘인	1995-04-17	Mamamoo	South Korea	\N	162	43	Jeonju	\N	\N	F	Lead Vocalist	\N	\N	58	0	0
1310	\N	Wonho	Shin Hoseok	신호석	원호	1993-03-01	\N	South Korea	\N	0	0	Anyang	\N	MONSTA X	M	\N	\N	\N	\N	0	0
1311	\N	Wonjin	Won Jin	원진	원진	2003-01-01	GIDONGDAE	South Korea	\N	0	0	\N	\N	\N	M	\N	\N	\N	\N	0	0
442	\N	Hyemi	Kim Hyemi	김혜미	혜미	1990-08-10	Fiestar	South Korea	\N	161	0	Seoul	\N	\N	F	\N	hyemi_haaaaam	\N	41	0	0
445	\N	Hyeongjun	Song Hyeongjun	송형준	형준	2002-11-30	CRAVITY	South Korea	\N	174	55	\N	\N	\N	M	\N	\N	\N	329	0	0
446	\N	Hyeongseo	Myeong Hyeongseo	명형서	형서	2001-06-25	Busters	South Korea	\N	0	0	\N	\N	\N	F	\N	\N	\N	130	0	0
1315	\N	Wontak	Ju Wontak	주원탁	원탁	1996-02-24	\N	South Korea	\N	178	0	\N	\N	RAINZ	M	\N	/j_wontagii/	2able_wontop	\N	0	0
453	\N	Hyerin	Kim Hyerin	김혜린	혜린	1993-06-13	2EYES	South Korea	\N	170	0	Seoul	\N	\N	F	\N	hyelyn0723	\N	138	0	0
456	\N	Hyeyeon	Kang Hyeyeon	강혜연	혜연	1990-12-08	BESTie	South Korea	\N	0	0	\N	\N	EXID	F	\N	hyeyeon_2	\N	21	0	0
459	\N	Hyojin	Kim Hyojin	김효진	효진	1994-04-22	ONF	South Korea	\N	0	0	Seoul	\N	\N	M	\N	\N	\N	260	0	0
462	\N	Hyorin	Kim Hyojung	김효정	효린	1990-12-11	SISTAR	South Korea	\N	0	0	\N	SISTAR19	\N	F	\N	xhyolynx	\N	5	0	0
463	\N	Hyosun	Lim Hyosun	임효선	효선	1998-07-10	H.U.B	South Korea	\N	170	54	\N	\N	Kiwi Band	F	\N	\N	\N	99	0	0
468	\N	Hyukjin	Jang Hyukjin	장혁진	혁진	1993-12-20	100%	South Korea	\N	0	0	Busan	\N	\N	M	\N	\N	\N	206	0	0
472	\N	Hyunbin	Kwon Hyunbin	권현빈	현빈	1997-03-04	JBJ	South Korea	\N	0	0	Seoul	\N	\N	M	\N	\N	\N	274	0	0
473	\N	Hyunbin	Kim Hyunbin	김현빈‬	현빈‬	2004-05-26	TRI.BE	South Korea	\N	0	0	\N	\N	\N	F	\N	\N	\N	177	0	0
474	\N	Hyunbin	Moon Hyunbin	문현빈	현빈	2000-02-26	Ciipher	South Korea	\N	177	61	\N	\N	\N	M	\N	\N	\N	362	0	0
1325	\N	Woojin	Lee Woojin	이우진	우진	2003-04-03	TheEastLight	South Korea	\N	0	0	\N	\N	\N	M	\N	the_greatest_woojin	\N	\N	0	0
460	https://dbkpop.com/wp-content/uploads/2016/10/oh_my_girl_hyojung_profile_dear_ohmygirl_dun_dun_dance.jpg	Hyojung	Choi Hyojung	최효정	효정	1994-07-28	Oh My Girl	South Korea	\N	160	46	Yangyang	\N	\N	F	\N	\N	\N	35	0	0
454	https://dbkpop.com/wp-content/uploads/2018/12/elris_summer_dream_hyeseong_profile.jpg	Hyeseong	Yang Hyeseon	양혜선	혜성	1999-10-15	ELRIS	South Korea	\N	0	0	\N	\N	\N	F	\N	\N	\N	83	0	0
466	https://dbkpop.com/wp-content/uploads/2018/04/vixx_eau_de_vixx_hyuk_profile.jpg	Hyuk	Han Sanghyuk	한상혁	혁	1995-07-05	VIXX	South Korea	\N	181	62	Daejeon	Big Byung	\N	M	\N	\N	\N	196	0	0
464	https://dbkpop.com/wp-content/uploads/2017/01/hyosung_secret-e1485386674303.jpg	Hyosung	Jun Hyoseong	전효성	효성	1989-10-13	SECRET	South Korea	\N	0	0	Cheongju	\N	\N	F	\N	secrettimehs	\N	65	0	0
1331	\N	Wooju	Cho Wooju	조우주	우주	2004-01-21	BLITZERS	South Korea	\N	0	0	\N	\N	\N	M	\N	\N	\N	\N	0	0
416	https://dbkpop.com/wp-content/uploads/2018/04/pentagon_positive_hui_profile.jpg	Hui	Lee Hwitaek	이회택	후이	1993-08-28	PENTAGON	South Korea	\N	0	0	\N	\N	\N	M	Leader	\N	\N	234	0	0
452	https://dbkpop.com/wp-content/uploads/2018/04/exid_lady_hyerin_profile.jpg	Hyerin	Seo Hyerin	서혜린	혜린	1993-08-23	EXID	South Korea	\N	165	0	Gwangju	\N	\N	F	\N	hyeliniseo	\N	12	0	0
450	https://dbkpop.com/wp-content/uploads/2016/12/girls_day_everyday5_hyeri_profile.jpg	Hyeri	Lee Hyeri	이혜리	혜리	1994-06-09	Girl's Day	South Korea	\N	167	46	Gwangju	\N	\N	F	\N	hyeri_0609	\N	13	0	0
443	https://dbkpop.com/wp-content/uploads/2017/02/stellar_hyoeun_1.jpg	Hyeoeun	Lee Hyoeun	이효은	효은	1993-03-16	Stellar	South Korea	\N	0	0	Seoul	\N	\N	F	\N	\N	\N	64	0	0
483	\N	Hyunjun	Lee Hyunjun	이현준	현준	1999-12-21	IZ	South Korea	\N	0	0	\N	\N	\N	M	\N	\N	\N	301	0	0
488	\N	Hyunseong	Shim Hyunseong	심현성	현성	1993-06-09	Boyfriend	South Korea	\N	178	58	Yeongcheon	\N	\N	M	\N	\N	\N	204	0	0
490	\N	Hyunsik	Lim Hyunsik	임현식	현식	1992-03-07	BtoB	South Korea	\N	177	66	Ilsan	\N	\N	M	\N	\N	\N	203	0	0
491	\N	Hyunsoo	Kim Hyunsoo	김현수	현수	1995-04-12	D1CE	South Korea	\N	176	60	\N	\N	\N	M	\N	\N	\N	346	0	0
492	\N	Hyunsuk	Choi Hyunsuk	최현석	현석	1999-04-21	Treasure	South Korea	\N	0	0	Daegu	\N	\N	M	\N	\N	\N	358	0	0
494	\N	Hyunuk	Han Hyunuk	한현욱	현욱	1994-09-26	IN2IT	South Korea	\N	179	63	\N	\N	\N	M	\N	\N	\N	299	0	0
498	\N	Hyunwoong	Kim Hyunwoong	김현웅	현웅	1998-02-08	14U	South Korea	\N	0	0	\N	\N	\N	M	\N	\N	\N	264	0	0
499	\N	Hyunyoung	Cho Hyunyoung	조현영	현영	1991-08-11	Rainbow	South Korea	\N	160	41	Seoul	Rainbow Blaxx, Rainbow Pixie	\N	F	\N	\N	\N	38	0	0
501	\N	I.M	Lim Changkyun	임창균	아이엠	1996-01-26	MONSTA X	South Korea	\N	0	0	Gwangju	\N	\N	M	\N	\N	\N	198	0	0
504	\N	Ida	Ko Chaeyoung	고채영	아이다	2000-05-19	MAJORS	South Korea	\N	163	43	\N	\N	\N	F	\N	\N	\N	180	0	0
1347	\N	XEN	Lee Jinwoo	이진우	젠	1996-02-20	OMEGA X	South Korea	\N	0	0	\N	\N	1TEAM	M	\N	\N	\N	\N	0	0
1348	\N	Xero	Shin Jiho	신지호	제로	1994-02-03	Topp Dogg	South Korea	\N	0	0	Gwangji	\N	\N	M	\N	\N	\N	\N	0	0
1359	\N	Yano	Seo Sangwon	서상원	야노	1995-09-27	Topp Dogg	South Korea	\N	0	0	Seoul	\N	\N	M	\N	\N	\N	\N	0	0
1360	\N	Yeah	Kim Haeun	김하은	예아	1999-10-09	\N	South Korea	\N	0	0	Gongju	\N	Good Day, Cignature	F	\N	\N	\N	\N	0	0
1326	https://dbkpop.com/wp-content/uploads/2018/04/Stray_Kids_Woojin_District_9_profile.jpg	Woojin	Kim Woojin	김우진	우진	1997-04-08	\N	South Korea	\N	0	0	Daejeon	\N	Stray Kids	M	\N	\N	\N	\N	0	0
1356	https://dbkpop.com/wp-content/uploads/2017/01/wjsn_from_wjsn_xuan_yi.jpg	Xuanyi	Wu Xuanyi	우쉬안이	선의	1995-01-26	Cosmic Girls	China	\N	166	0	Hainan	\N	\N	F	\N	\N	\N	\N	0	0
1362	\N	Yebin	Kim Yebin	김예빈	예빈	2004-11-01	HOT ISSUE	South Korea	\N	0	0	\N	\N	\N	F	\N	\N	\N	\N	0	0
1393	\N	Yeori	Choi Yeori	최여리	여리	1999-09-08	ARIAZ	South Korea	\N	0	0	\N	\N	\N	F	\N	\N	\N	150	0	0
1396	\N	Yeowool	Ha Yeowool	하여울	여울	1998-04-11	Purplebeck	South Korea	\N	163	46	\N	\N	\N	F	\N	\N	\N	123	0	0
1369	\N	Yehyeon	Kim Yehyeon	김예현	예현	1999-09-12	GIDONGDAE	South Korea	\N	176	63	\N	\N	\N	M	\N	\N	\N	\N	0	0
1399	\N	Yerim	Jeong Yerim	정예림	예림	1997-03-10	Purplebeck	South Korea	\N	165	44	\N	\N	\N	F	\N	\N	\N	123	0	0
1413	\N	Yohan	Kim Yohan	김요한	요한	1999-09-22	WEi	South Korea	\N	181	66	\N	\N	X1	M	\N	\N	\N	355	0	0
1416	https://dbkpop.com/wp-content/uploads/2019/04/1the9_debut_yongha_profile.jpg	Yongha	Yoo Yongha	유용하	용하	1999-01-11	WEi	South Korea	\N	177	64	\N	\N	1the9	M	\N	\N	\N	355	0	0
1375	https://dbkpop.com/wp-content/uploads/2017/01/april_hello_summer_concept_yena_profile.jpg	Yena	Yang Yena	양예나	예나	2000-05-22	APRIL	South Korea	\N	0	0	Daegu	\N	\N	F	\N	\N	\N	22	0	0
1381	https://dbkpop.com/wp-content/uploads/2018/08/loona__yeojin_profile.jpg	Yeojin	Im Yeojin	임여진	여진	2002-11-11	LOONA	South Korea	\N	0	0	Guro	Loona 1/3	\N	F	\N	\N	\N	78	0	0
1364	\N	Yechan	Kim Yechan	김예찬	예찬	1995-11-26	Pink Fantasy	South Korea	\N	159	45	\N	\N	\N	F	\N	\N	\N	118	0	0
1365	\N	Yedam	Bang Yedam	방예담	예담	2002-05-07	Treasure	South Korea	\N	0	0	\N	\N	\N	M	\N	\N	\N	358	0	0
1367	\N	Yeeun	Hwang Yeeun	황예은	예은	1997-01-12	Blady	South Korea	\N	0	0	Gimhae	\N	\N	F	\N	yeeuneeeee_	\N	26	0	0
1373	\N	Yejun	Oh Yejun	오예준	예준	2002-08-23	E'LAST	South Korea	\N	178	58	\N	\N	\N	M	\N	\N	\N	335	0	0
505	\N	Ilhoon	Jung Ilhoon	정일훈	일훈	1994-10-04	BtoB	South Korea	\N	176	64	Seoul	\N	\N	M	\N	\N	\N	203	0	0
506	\N	Inho	Hwang Inho	황인호	인호	1993-06-21	IN2IT	South Korea	\N	177	58	\N	\N	\N	M	\N	\N	\N	299	0	0
507	\N	Inpyo	Lee Inpyo	이인표	인표	1995-08-14	IN2IT	South Korea	\N	182	66	\N	\N	\N	M	\N	\N	\N	299	0	0
508	\N	Inseong	Kim Inseong	김인성	인성	1993-07-12	SF9	South Korea	\N	0	0	\N	\N	\N	M	\N	\N	\N	255	0	0
509	\N	Inseong	Jeong Inseong	정인성	인성	1994-07-01	KNK	South Korea	\N	183	71	\N	\N	\N	M	Main Vocal	\N	\N	226	0	0
510	\N	Insoo	Kang Insoo	강인수	인수	1988-03-10	MYNAME	South Korea	\N	0	0	Suwon	\N	\N	M	\N	\N	\N	199	0	0
512	\N	Ireh	Cho Seoyoung	조서영	이레	2002-04-30	Purple Kiss	South Korea	\N	0	0	\N	\N	\N	F	\N	\N	\N	179	0	0
1392	\N	Yeori	Kim Soyeon	김소연	여리	1994-05-30	Gate9	South Korea	\N	164	0	Seoul	\N	\N	F	\N	yeori_g9	\N	\N	0	0
514	\N	Isa	Lee Chaeyoung	이채영	아이사	2002-01-23	STAYC	South Korea	\N	0	0	\N	\N	\N	F	\N	\N	\N	166	0	0
515	\N	Isaac	Voo Isaak	부 아이젝	아이젝	1994-12-12	IN2IT	Malaysia	\N	176	56	\N	\N	\N	M	\N	\N	\N	299	0	0
1397	\N	Yeram	Yang Yeram	양예람	예람	2000-03-31	Astin	South Korea	\N	0	0	\N	\N	\N	M	\N	\N	\N	\N	0	0
516	\N	Isol	\N	\N	이솔	1997-05-01	Lusty	South Korea	\N	166	48	Seoul	\N	\N	F	Main Vocal	\N	\N	142	0	0
518	\N	Ivan	Park Yooseong	박유성	아이반	2001-10-12	Kingdom	South Korea	\N	0	0	\N	\N	\N	M	\N	\N	\N	359	0	0
519	\N	J	Lee Yeji	이예지	제이	1998-02-12	ANS	South Korea	\N	0	0	\N	\N	\N	F	\N	\N	\N	151	0	0
520	\N	J	Jang Yeeun	장예은	제이	2004-12-09	STAYC	South Korea	\N	0	0	\N	\N	\N	F	\N	\N	\N	166	0	0
521	\N	J-Hoon	Lim Junghoon	임정훈	제이훈	1990-07-15	B.I.G	South Korea	\N	172	62	Seoul	\N	\N	M	\N	\N	\N	254	0	0
523	\N	J-Min	Jeon Minwook	전민욱	제이민	1999-10-16	BAE173	South Korea	\N	0	0	\N	\N	\N	M	\N	\N	\N	356	0	0
524	\N	J-Us	Lee Seungjoon	이승준	제이어스	1995-01-13	ONF	South Korea	\N	0	0	Seoul	\N	\N	M	\N	\N	\N	260	0	0
1406	\N	Yewon	Park Yewon	박예원	예원	2004-01-11	HOT ISSUE	South Korea	\N	0	0	\N	\N	\N	F	\N	\N	\N	\N	0	0
525	\N	J.Min	Shin Minjung	신민정	제이민	1994-11-20	Tiny-G	South Korea	\N	155	0	\N	\N	\N	F	\N	\N	\N	62	0	0
527	\N	J.YOU	Kim Jaeyu	김제유	제유	2000-11-02	TOO	South Korea	\N	0	0	\N	\N	\N	M	\N	\N	\N	340	0	0
530	\N	Jacob	Zhang Peng	장펑	제이콥	1996-09-07	VAV	China	\N	184	63	\N	\N	\N	M	\N	\N	\N	294	0	0
531	\N	Jae	Park Jaehyung	박제형	제이	1992-09-15	DAY6	South Korea	Argentina,USA	0	0	Buenos Aires	\N	\N	M	Guitarist, Voca;	\N	\N	218	0	0
529	https://dbkpop.com/wp-content/uploads/2018/04/The_Boyz_Giddy_Up_Jacob_profile.jpg	Jacob	Bae Joonyoung	배준영	제이콥	1997-05-30	The Boyz	South Korea	Canada	175	60	Toronto	\N	\N	M	\N	\N	\N	275	0	0
502	https://dbkpop.com/wp-content/uploads/2020/10/Stray_Kids_IN_profile_IN_Life.jpg	I.N	Yang Jeongin	양정인	아이엔	2001-02-08	Stray Kids	South Korea	\N	0	0	Busan	\N	\N	M	\N	\N	\N	279	0	0
1418	\N	Yonghoon	Jin Yonghoon	진용훈	용훈	1994-08-17	Onewe	South Korea	\N	0	0	\N	\N	MAS	M	\N	\N	\N	\N	0	0
1380	https://dbkpop.com/wp-content/uploads/2017/02/melody_day_yeoeun_1.jpg	Yeoeun	Jung Jieun	정지은	여은	1990-01-25	MELODYDAY	South Korea	\N	169	0	\N	\N	\N	F	Leader	yeosilver	\N	\N	0	0
1371	https://dbkpop.com/wp-content/uploads/2017/02/melody_day_yein_1.jpg	Yein	Ahn Yein	안예인	예인	1995-05-04	MELODYDAY	South Korea	\N	168	0	\N	\N	\N	F	Lead Vocalist	yen_thankful954	\N	\N	0	0
1363	https://dbkpop.com/wp-content/uploads/2019/04/1the9_debut_yechan_profile.jpg	Yechan	Shin Yechan	신예찬	예찬	2001-05-14	OMEGA X	South Korea	\N	183	64	Seoul	\N	1the9	M	\N	\N	\N	\N	0	0
1390	https://dbkpop.com/wp-content/uploads/2019/04/wjsn_wj_stay_yeoreum_profile.jpg	Yeoreum	Lee Jinsook	이진숙	여름	1999-01-10	Cosmic Girls	South Korea	\N	161	0	Seoul	WJSN Chocome	\N	F	\N	\N	\N	\N	0	0
1442	\N	Yoonjo	Shin Yoonjo	신윤조	윤조	1992-12-14	UNI.T	South Korea	\N	0	0	Seoul	\N	Hello Venus	F	\N	\N	\N	110	0	0
1421	\N	Yongseok	Choi Yongseok	최용석	용석	1996-05-23	CHECKMATE	South Korea	\N	0	0	\N	\N	\N	M	\N	\N	\N	\N	0	0
1443	\N	Yoonsan	Yoon Sanghyuk	윤상혁	윤산	1994-08-22	HOTSHOT	South Korea	\N	0	0	\N	\N	\N	M	\N	\N	\N	289	0	0
1451	\N	Youngho	Noh Youngho	노영호	영호	1993-03-24	SIGNAL	South Korea	\N	0	0	\N	\N	\N	M	\N	\N	\N	328	0	0
1464	\N	Yubin	Jang Yubin	장유빈	유빈	2004-06-10	Mirae	South Korea	\N	0	0	\N	\N	\N	M	\N	\N	\N	360	0	0
1468	https://dbkpop.com/wp-content/uploads/2016/11/laboum_summer_special_yujeong_profile.jpg	Yujeong	Kim Yujeong	김유정	유정	1992-02-14	LABOUM	South Korea	\N	161	42	Seoul	\N	\N	F	Leader	\N	\N	44	0	0
1426	\N	Yoojin	Jang Yoojin	정유진	유진	1992-09-14	\N	South Korea	\N	0	0	\N	\N	Brave Girls	F	\N	yoojinbabe	\N	\N	0	0
1419	\N	Yonghwa	Jung Yonghwa	정용화	용화	1989-06-22	CNBLUE	South Korea	\N	0	0	Seoul	\N	\N	M	Vocal	\N	\N	208	0	0
1428	\N	Yoojun	Jung Gun	정건	유준	2000-12-27	BAE173	South Korea	\N	0	0	\N	\N	\N	M	\N	\N	\N	356	0	0
478	https://dbkpop.com/wp-content/uploads/2018/04/The_Boyz_Giddy_Up_Hyunjae_profile.jpg	Hyunjae	Lee Jaehyun	이재현	현재	1997-09-13	The Boyz	South Korea	\N	180	62	\N	\N	\N	M	\N	\N	\N	275	0	0
493	https://dbkpop.com/wp-content/uploads/2019/07/CIX_Hello_Stranger_Concept_Hyunsuk.jpg	Hyunsuk	Yoon Hyunsuk	윤현석	현석	2001-09-08	CIX	South Korea	\N	188	0	\N	\N	\N	M	\N	\N	\N	317	0	0
1431	\N	Yookyung	Seo Yookyung	서유경	유경	1993-03-15	\N	South Korea	\N	167	48	\N	\N	AOA BLACK	F	\N	\N	\N	\N	0	0
495	https://dbkpop.com/wp-content/uploads/2017/10/trcng_hyunwoo_profile.jpg	Hyunwoo	Kim Hyunwoo	김현우	현우	2001-01-21	TRCNG	South Korea	\N	173	0	\N	\N	\N	M	\N	\N	\N	271	0	0
503	https://dbkpop.com/wp-content/uploads/2018/06/neonpunch_moonlight_iaan_profile.jpg	Iaan	Yoo Dongju	유동주	이안	2002-03-22	XUM	South Korea	\N	0	0	\N	\N	NeonPunch	F	\N	sunghyuk_seo	\N	168	0	0
522	https://dbkpop.com/wp-content/uploads/2016/11/bts_J-hope_profile_butter.jpg	J-Hope	Jung Hoseok	정호석	제이홉	1994-02-18	BTS	South Korea	\N	177	65	Gwangju	\N	\N	M	\N	\N	\N	189	0	0
1435	\N	Yoon	Ji Hayoon	지하윤	윤	1997-07-08	Gate9	South Korea	\N	162	0	Busan	\N	\N	F	\N	queenyunista	\N	\N	0	0
539	\N	Jaehyuk	Yoon Jaehyuk	윤재혁	재혁	2001-07-23	Treasure	South Korea	\N	0	0	\N	\N	\N	M	\N	\N	\N	358	0	0
1437	\N	Yoona	Im Yoona	임윤아 	윤아	1990-05-30	SNSD	South Korea	\N	166	47	Seoul	\N	\N	F	\N	yoona__lim	\N	\N	0	0
1438	\N	Yoonbin	Ha Yoonbin	하윤빈	윤빈	2000-12-11	\N	South Korea	\N	0	0	\N	\N	\N	M	\N	\N	\N	\N	0	0
540	\N	Jaehyun	Jung Yoonoh	정윤오	재현	1997-02-14	NCT	South Korea	\N	0	0	Seoul	NCT U, NCT 127	\N	M	\N	\N	\N	231	0	0
541	\N	Jaehyun	Kim Jaehyun	김재현	재현	1994-07-15	N.Flying	South Korea	\N	0	0	Seoul	\N	\N	M	Drummer	\N	\N	210	0	0
542	\N	Jaehyun	Bong Jaehyun	봉재현	재현	1999-01-04	Golden Child	South Korea	\N	0	0	\N	\N	\N	M	\N	\N	\N	258	0	0
1444	\N	Yoosung	Jeong Yoosung	정유성	유성	1992-10-08	\N	South Korea	\N	175	52	\N	\N	Bigflo	M	\N	\N	\N	\N	0	0
543	\N	Jaejin	Lee Jaejin	이재진	재진	1991-12-17	FTISLAND	South Korea	\N	0	0	Cheongju	\N	\N	M	Bassist	\N	\N	209	0	0
544	\N	Jaejoong	Kim Jaejoong	김재중	재중	1986-01-26	JYJ	South Korea	\N	0	0	Gongju	\N	TVXQ	M	\N	\N	\N	225	0	0
545	\N	Jaekyung	Kim Jaekyung	김재경	재경	1988-12-24	Rainbow	South Korea	\N	168	45	Seoul	Rainbow Blaxx	\N	F	\N	\N	\N	38	0	0
546	\N	Jaemin	Na Jaemin	나재민	재민	2000-08-13	NCT	South Korea	\N	0	0	\N	NCT Dream	\N	M	\N	\N	\N	231	0	0
548	\N	Jaeun	Ha Jaeun	한재운	재운	1999-09-28	ARGON	South Korea	\N	0	0	\N	\N	\N	M	\N	\N	\N	344	0	0
549	\N	Jaeyoon	Lee Jaeyoon	이재윤	재윤	1994-08-09	SF9	South Korea	\N	0	0	\N	\N	\N	M	\N	\N	\N	255	0	0
551	\N	Jahan	Im Jihun	임지훈	자한	2002-08-01	Kingdom	South Korea	\N	0	0	\N	\N	\N	M	\N	\N	\N	359	0	0
553	\N	Jamie	Park Jimin	박지민	박지민	1997-07-05	15&	South Korea	\N	160	0	Junggu	\N	\N	F	\N	jiminxjamie	\N	32	0	0
555	\N	Jangjun	Lee Jangjun	이장준	장준	1997-03-03	Golden Child	South Korea	\N	0	0	\N	\N	\N	M	\N	\N	\N	258	0	0
556	\N	Jason	Kim Byeongkwan	김병관	제이슨	1996-08-13	A.C.E	South Korea	\N	0	0	Seoul	\N	\N	M	\N	\N	\N	265	0	0
1457	\N	Youngmin	Lim Youngmin	임영민	영민	1995-12-25	\N	South Korea	\N	0	0	Busan	MXM	AB6IX	M	\N	\N	\N	\N	0	0
557	\N	Jay	Kim Jinhwan	김진환	제이	1994-02-07	iKON	South Korea	\N	0	0	Jeju	\N	\N	M	\N	\N	\N	222	0	0
560	\N	Jea	Kim Hyojin	김효진	제아	1981-09-18	Brown Eyed Girls	South Korea	\N	0	0	\N	\N	\N	F	\N	jeaworld	\N	8	0	0
563	\N	Jei	Kim Jinhee	김진희	재이	1989-09-05	Fiestar	South Korea	\N	162	0	Bucheon	\N	\N	F	\N	kimjeii	\N	41	0	0
564	\N	Jen	Kim Yehyeon	김예현	젠	1997-03-27	UNVS	South Korea	\N	0	0	\N	\N	\N	M	\N	\N	\N	341	0	0
1462	\N	Yubin	Cho Yubin	조유빈	유빈	1999-10-09	\N	South Korea	\N	156	40	\N	\N	Pink Fantasy	F	\N	\N	\N	\N	0	0
568	\N	Jeno	Lee Jeno	이제노	제노	2000-04-23	NCT	South Korea	\N	0	0	\N	NCT Dream	\N	M	\N	\N	\N	231	0	0
569	\N	Jeon Woong	Jeon Woong	전웅	전웅	1997-10-15	AB6IX	South Korea	\N	173	0	\N	\N	\N	M	\N	\N	\N	320	0	0
572	\N	Jeonghee	Go Jeonghee	고정희	정희	2000-03-11	Favorite	South Korea	\N	0	0	Incheon	\N	\N	F	\N	\N	\N	84	0	0
574	\N	Jeongmin	Lee Jeongmin	이정민	정민	1994-02-01	Boyfriend	South Korea	\N	173	60	Suwon	\N	\N	M	\N	\N	\N	204	0	0
576	\N	Jeonguk	Kim Jeonguk	김정욱	정욱	1993-03-20	24K	South Korea	\N	178	58	Busan	\N	\N	M	\N	\N	\N	205	0	0
1470	\N	Yujeong	Lee Yujeong	이유정	유정	2004-06-14	LIGHTSUM	South Korea	\N	160	41	\N	\N	\N	F	\N	\N	\N	\N	0	0
577	\N	Jeongwoo	Park Jeongwoo	박정우	정우	2004-09-28	Treasure	South Korea	\N	0	0	\N	\N	\N	M	\N	\N	\N	358	0	0
1474	\N	Yujin	Jeong Yujin	정유진	유진	1989-10-23	S#aFLA	South Korea	\N	0	0	\N	\N	D-Unit	F	\N	\N	\N	\N	0	0
1455	https://dbkpop.com/wp-content/uploads/2016/12/hur_youngji_6.jpg	Youngji	Hur Youngji	허영지	영지	1994-08-30	\N	South Korea	\N	0	0	Goyang	\N	KARA	F	\N	\N	\N	\N	0	0
1488	\N	Yunji	Kim Yunji	김윤지	윤지	1996-08-26	ARIAZ	South Korea	\N	0	0	\N	\N	\N	F	\N	\N	\N	150	0	0
1492	\N	Yunsung	Hwang Yunsung	황윤성	윤성	1996-03-19	Romeo	South Korea	\N	0	0	\N	\N	\N	M	\N	\N	\N	235	0	0
715	https://dbkpop.com/wp-content/uploads/2019/04/1the9_debut_junseo_profile.jpg	Junseo	Kim Junseo	김준서	준서	2001-11-20	WEi	South Korea	\N	177	64	Ulsan	\N	1the9	M	\N	\N	\N	355	0	0
622	https://dbkpop.com/wp-content/uploads/2017/01/april_hello_summer_concept_jinsol_profile.jpg	Jinsol	Lee Jinsol	이진솔	진솔	2001-12-04	APRIL	South Korea	\N	0	0	Andong	\N	\N	F	\N	\N	\N	22	0	0
1510	https://dbkpop.com/wp-content/uploads/2018/05/uni.t_ZN_profile.jpg	ZN	Bae Jinye	배진예	지엔	1994-06-09	LABOUM	South Korea	\N	169	48	Bucheon	UNI.T	\N	F	Main Dancer	\N	\N	44	0	0
1502	https://dbkpop.com/wp-content/uploads/2018/08/loona__yves_profile.jpg	Yves	Ha Sooyoung	하수영	이브	1997-05-24	LOONA	South Korea	\N	0	0	\N	Loona yyxy	\N	F	\N	\N	\N	78	0	0
1478	\N	Yuki	Lim Jiyeon	임지연	유키	2002-01-30	Saturday	South Korea	\N	161	44	\N	\N	\N	F	\N	\N	\N	116	0	0
1479	\N	Yuki	Mori Koyuki	모리 코유키	유키	2002-09-11	Purple Kiss	Japan	\N	0	0	\N	\N	\N	F	\N	\N	\N	179	0	0
1480	\N	Yuku	Amanumu Yuku	아마누마 유쿠	유쿠	2002-05-12	DKB	Japan	\N	176	55	\N	\N	\N	M	\N	\N	\N	327	0	0
1486	\N	Yunho	Jeong Yunho	정윤호	윤호	1999-03-23	ATEEZ	South Korea	\N	184	0	Gwangju	\N	\N	M	\N	\N	\N	283	0	0
580	\N	Jerome	Oh Sungmin	오성민	제롬	2001-08-25	TOO	South Korea	\N	0	0	\N	\N	\N	M	\N	\N	\N	340	0	0
1495	\N	Yuri	Kwon Yuri	권유리 	유리	1989-12-05	SNSD	South Korea	\N	167	45	Goyang	\N	\N	F	\N	yulyulk	\N	\N	0	0
581	\N	Jerrry	Ahn Sohyun	안소현	제리	1992-08-27	Tahiti	South Korea	\N	0	0	Seoul	\N	\N	F	\N	\N	\N	40	0	0
583	\N	Ji Hansol	Ji Hansol	지한솔	지한솔	1994-11-21	Newkidd	South Korea	\N	182	63	Busan	\N	UNB	M	\N	jisol_11	\N	321	0	0
584	\N	Jia	Meng Jia	멍지아	지아	1989-02-03	miss A	China	\N	166	0	Changja	\N	\N	F	\N	mjbaby0203	\N	15	0	0
585	\N	Jia	Guo Jiajia	궈 지아지아	지아	2005-07-30	TRI.BE	China	\N	0	0	\N	\N	\N	F	\N	\N	\N	177	0	0
587	\N	Jiae	Kim Jiae	김지애	지애	1995-10-31	Wassup	South Korea	\N	0	0	\N	\N	\N	F	\N	\N	\N	46	0	0
588	\N	Jiahn	Yoo Jiahn	유지안	지안	1992-04-01	IN2IT	South Korea	\N	176	57	\N	\N	\N	M	\N	\N	\N	299	0	0
589	\N	Jian	Kwon Jieun	권지은	지안	2001-03-14	LUNARSOLAR	South Korea	\N	0	0	\N	\N	S.E.T	F	\N	\N	\N	174	0	0
1504	\N	Z-UK	Jeong Jaewook	정재욱	지욱	1993-01-27	\N	South Korea	\N	174	62	\N	\N	Bigflo	M	\N	\N	\N	\N	0	0
591	\N	Jibeom	Kim Jibeom	김지범	지범	1999-02-03	Golden Child	South Korea	\N	0	0	\N	\N	\N	M	\N	\N	\N	258	0	0
593	\N	Jieun	Park Jieun	박지은	지은	1997-09-04	Purple Kiss	South Korea	\N	166	49	\N	\N	\N	F	\N	\N	\N	179	0	0
1507	\N	Zhou Mi	Zhou Mi	조미	조미	1986-04-19	Super Junior-M	China	\N	184	64	Wuhan	\N	\N	M	\N	\N	\N	\N	0	0
594	\N	Jieun	Choi Jieun	최지은	지은	2001-03-03	Bling Bling	South Korea	\N	0	0	\N	\N	\N	F	\N	\N	\N	165	0	0
592	https://dbkpop.com/wp-content/uploads/2017/01/secret_song_jieun_1.jpg	Jieun	Song Jieun	송지은	지은	1990-05-05	SECRET	South Korea	\N	0	0	Seoul	\N	\N	F	\N	secret_jieunssong	\N	65	0	0
552	https://dbkpop.com/wp-content/uploads/2020/09/enhypen_official_profile_Jake_1.jpg	Jake	Shim Jaeyoon	심재윤	제이크	2002-11-15	ENHYPEN	South Korea	Australia	0	0	\N	\N	\N	M	\N	\N	\N	352	0	0
538	https://dbkpop.com/wp-content/uploads/2017/02/block_b_yesterday_jaehyo_1.jpg	Jaehyo	Ahn Jaehyo	안재효	재효	1990-12-23	Block B	South Korea	\N	182	60	Busan	\N	\N	M	\N	\N	\N	191	0	0
535	https://dbkpop.com/wp-content/uploads/2020/06/weeekly_we_are_teaser_2_lee_jaehee.jpg	Jaehee	Lee Jaehee	이재희	재희	2004-03-18	Weeekly	South Korea	\N	166	0	\N	\N	\N	F	Rapper, Sub Vocal	\N	\N	153	0	0
571	https://dbkpop.com/wp-content/uploads/2016/12/Seventeen_Henggarae_Concept_UHD_Jeonghan_profile.jpg	Jeonghan	Yoon Jeonghan	윤정한	정한	1995-10-04	Seventeen	South Korea	\N	175	54	Seoul	\N	\N	M	\N	\N	\N	237	0	0
586	https://dbkpop.com/wp-content/uploads/2018/07/lovelyz_wag_zak_jiae_profile.jpg	Jiae	Yoo Jiae	유지애	지애	1993-05-21	Lovelyz	South Korea	\N	163	43	Seoul	\N	\N	F	\N	\N	\N	45	0	0
600	\N	Jihoon	Park Jihoon	박지훈	지훈	2000-03-14	Treasure	South Korea	\N	0	0	Busan	\N	\N	M	\N	\N	\N	358	0	0
610	\N	Jin Jin	Park Jinwoo	박진우	진진	1996-03-15	ASTRO	South Korea	\N	0	0	Nowon	\N	\N	M	\N	\N	\N	240	0	0
23	https://dbkpop.com/wp-content/uploads/2017/10/neonpunch_predebut_arang_profile.jpg	Arang	Son Mnjung	손민정	아랑	2000-03-08	\N	South Korea	\N	0	0	\N	\N	NeonPunch	F	\N	sunghyuk_seo	\N	\N	0	0
129	https://dbkpop.com/wp-content/uploads/2017/01/wjsn_from_wjsn_cheng_xiao.jpg	Cheng Xiao	Cheng Xiao	청샤오	성소	1998-07-15	Cosmic Girls	China	\N	167	0	Shenzhen	\N	\N	F	\N	chengxiao_0715	\N	\N	0	0
613	\N	Jinha	Kim Jinha	김진하	진하	2003-11-21	TRI.BE	South Korea	\N	0	0	\N	\N	\N	F	\N	\N	\N	177	0	0
615	\N	Jinhong	Kim Jinhong	김진홍	진홍	1998-01-02	24K	South Korea	\N	180	53	Seoul	\N	\N	M	\N	\N	\N	205	0	0
616	\N	Jinhoo	Kim Jinwook	김진욱	진후	1995-08-02	UP10TION	South Korea	\N	0	0	Changwon	\N	\N	M	\N	\N	\N	247	0	0
111	https://dbkpop.com/wp-content/uploads/2017/02/melody_day_chahee_1-1-e1487121653633.jpg	Chahee	Park Sooyoung	박수영	차희	1996-03-24	MELODYDAY	South Korea	\N	167	0	\N	\N	\N	F	Sub Vocalist	hichaheebye	\N	\N	0	0
1482	https://dbkpop.com/wp-content/uploads/2016/12/laboum_summer_special_yulhee_profile.jpg	Yulhee	Kim Yulhee	김율희	율희	1997-11-27	\N	South Korea	\N	166	52	Bucheon	\N	LABOUM	F	Main Rapper	\N	\N	\N	0	0
372	https://dbkpop.com/wp-content/uploads/2018/08/loona__haseul_profile.jpg	Haseul	Jo Haseul	조하슬	하슬	1997-08-18	LOONA	South Korea	\N	0	0	Ansan	Loona 1/3	\N	F	\N	\N	\N	78	0	0
1072	https://dbkpop.com/wp-content/uploads/2018/05/aoa_bingle_bangle_seolhyun_profile.jpg	Seolhyun	Kim Seolhyun	김설현	설현	1995-01-03	AoA	South Korea	\N	167	47	Bucheon	\N	\N	F	\N	sh_9513	\N	10	0	0
137	https://dbkpop.com/wp-content/uploads/2018/08/loona__choerry_profile.jpg	Choerry	Choi Yerim	최예림	최리	2001-06-04	LOONA	South Korea	\N	0	0	\N	Loona Odd Eye Circle	\N	F	\N	\N	\N	78	0	0
1483	https://dbkpop.com/wp-content/uploads/2018/05/aoa_bingle_bangle_yuna_profile.jpg	Yuna	Seo Yuna	서유나	유나	1992-12-30	AoA	South Korea	\N	163	45	Busan	AOA BLACK	\N	F	\N	yn_s_1230	\N	10	0	0
617	\N	Jinhui	\N	\N	진희	1996-11-21	Lusty	South Korea	\N	160	42	Seongnam	\N	\N	F	Main Vocal	\N	\N	142	0	0
620	\N	Jinkwon	Kim Jinkwon	김진권	진권	2001-01-31	Newkidd	South Korea	\N	0	0	\N	\N	\N	M	\N	\N	\N	321	0	0
621	\N	Jinny	Park Jinhee	박진희	지니	1998-01-19	SECRET NUMBER	South Korea	USA	0	0	California	\N	\N	F	\N	\N	\N	157	0	0
625	\N	Jinu	Kim Jinwoo	김진우	진우	1991-09-26	WINNER	South Korea	\N	0	0	Imja	\N	\N	M	\N	\N	\N	221	0	0
626	\N	Jinwoo	Lee Jinwoo	이진우	진우	2004-09-13	Ghost9	South Korea	\N	176	57	\N	TEEN TEEN	\N	M	\N	\N	\N	354	0	0
630	\N	Jinyoung	Woo Jinyoung	우진영	진영	1997-05-31	D1CE	South Korea	\N	170	51	\N	\N	\N	M	\N	\N	\N	346	0	0
634	\N	Jisoo	Shin Jisoo	신지수	지수	1994-02-28	Tahiti	South Korea	\N	0	0	Chuncheon	\N	\N	F	\N	\N	\N	40	0	0
635	\N	Jisoo	Jung Jisoo	정지수	지수	2003-11-22	Busters	South Korea	\N	0	0	\N	\N	\N	F	\N	\N	\N	130	0	0
636	\N	Jisook	Kim Jisook	김지숙	지숙	1990-07-18	Rainbow	South Korea	\N	164	41	Suwon	Rainbow Pixie	\N	F	\N	\N	\N	38	0	0
637	\N	Jisu	Choi Jisu	최지수	지수	2000-01-19	TOO	South Korea	\N	0	0	\N	\N	\N	M	\N	\N	\N	340	0	0
640	\N	Jisung	Park Jisung	박지성	지성	2002-02-05	NCT	South Korea	\N	0	0	\N	NCT Dream	\N	M	\N	\N	\N	231	0	0
641	\N	Jisung	Yoon Jisung	윤지성	지성	1991-03-08	Wanna One	South Korea	\N	0	0	Wonju	\N	\N	M	\N	\N	\N	256	0	0
648	\N	Jiwon	Park Jiwon	박지원	지원	1997-03-17	BOTOPASS	South Korea	\N	165	45	\N	\N	ILUV	F	\N	\N	\N	173	0	0
642	https://dbkpop.com/wp-content/uploads/2017/10/trcng_jisung_profile.jpg	Jisung	Kim Jisung	김지성	지성	2000-12-21	TRCNG	South Korea	\N	171	0	\N	\N	\N	M	\N	\N	\N	271	0	0
627	https://dbkpop.com/wp-content/uploads/2016/11/b1a4_jinyoung_1.jpg	Jinyoung	Jung Jinyoung	정진영	진영	1991-11-18	\N	South Korea	\N	178	58	Chungju	\N	B1A4	M	\N	\N	\N	\N	0	0
624	https://dbkpop.com/wp-content/uploads/2019/04/1the9_debut_jinsung_profile.jpg	Jinsung	Jung Jinsung	정진성	진성	2002-03-30	1the9	South Korea	\N	176	58	Seoul	\N	\N	M	\N	\N	\N	325	0	0
601	https://dbkpop.com/wp-content/uploads/2017/10/trcng_jihun_1_profile.jpg	Jihun	Kim Jihun	김지훈	지훈	2000-01-09	TRCNG	South Korea	\N	176	0	Daegu	\N	\N	M	\N	\N	\N	271	0	0
633	https://dbkpop.com/wp-content/uploads/2018/12/blackpink_Jisoo_profile_the_album.jpg	Jisoo	Kim Jisoo	김지수	지수	1995-01-03	BLACKPINK	South Korea	\N	162	45	Seoul	\N	\N	F	\N	\N	\N	51	0	0
597	https://dbkpop.com/wp-content/uploads/2016/10/oh_my_girl_jiho_profile_dear_ohmygirl_dun_dun_dance.jpg	Jiho	Kim Jiho	김지호	지호	1997-04-04	Oh My Girl	South Korea	\N	165	49	Okcheon	\N	\N	F	\N	\N	\N	35	0	0
609	https://dbkpop.com/wp-content/uploads/2016/11/bts_Jin_profile_butter.jpg	Jin	Kim Seokjin	김석진	진	1992-12-04	BTS	South Korea	\N	179	63	Gwacheon	\N	\N	M	\N	\N	\N	189	0	0
596	https://dbkpop.com/wp-content/uploads/2018/11/fromis_9_jiheon_profile.jpg	Jiheon	Baek Jiheon	백지헌	지헌	2003-04-17	fromis_9	South Korea	\N	0	0	Jeolla	\N	\N	F	\N	\N	\N	103	0	0
646	https://dbkpop.com/wp-content/uploads/2018/11/fromis_9_4_jiwon_profile.jpg	Jiwon	Park Jiwon	박지원	지원	1998-03-20	fromis_9	South Korea	\N	0	0	Busan	\N	\N	F	\N	\N	\N	103	0	0
595	https://dbkpop.com/wp-content/uploads/2020/06/weeekly_we_are_teaser_2_jihan.jpg	Jihan	Han Jihyo	한지효	지한	2004-07-12	Weeekly	South Korea	\N	0	0	\N	\N	\N	F	Lead Vocal	\N	\N	153	0	0
628	https://dbkpop.com/wp-content/uploads/2017/03/got7_arrival_jinyoung_profile.jpg	Jinyoung	Park Jinyoung	박진영	진영	1994-09-22	GOT7	South Korea	\N	178	63	Changwon	\N	\N	M	\N	\N	\N	200	0	0
629	https://dbkpop.com/wp-content/uploads/2019/07/CIX_Hello_Stranger_Concept_Bae_Jinyoung.jpg	Jinyoung	Bae Jinyoung	배진영	진영	2000-05-10	CIX	South Korea	\N	0	0	Seoul	\N	Wanna One	M	\N	\N	\N	317	0	0
608	https://dbkpop.com/wp-content/uploads/2018/04/lovelyz_that_day_JIN_profile.jpg	JIN	Park Myungeun	박명은	진	1996-06-12	Lovelyz	South Korea	\N	165	47	Busan	\N	\N	F	\N	\N	\N	45	0	0
647	https://dbkpop.com/wp-content/uploads/2018/12/cherry_bullet_card_jiwon.jpg	Jiwon	Heo Jiwon	허지원	지원	2000-09-04	Cherry Bullet	South Korea	\N	0	0	\N	\N	\N	F	\N	\N	\N	113	0	0
607	https://dbkpop.com/wp-content/uploads/2016/11/BTS_Jimin_profile_butter.jpg	Jimin	Park Jimin	박지민	지민	1995-10-13	BTS	South Korea	\N	175	61	Busan	\N	\N	M	\N	\N	\N	189	0	0
650	https://dbkpop.com/wp-content/uploads/2016/11/t-ara_sugar_free_jiyeon.jpg	Jiyeon	Park Jiyeon	박지연	지연	1993-06-07	T-ara	South Korea	\N	167	45	Seoul	\N	\N	F	\N	jiyeon2__	\N	4	0	0
1387	https://dbkpop.com/wp-content/uploads/2019/04/wjsn_wj_stay_yeonjung_profile.jpg	Yeonjung	Yu Yeonjung	유연정	연정	1999-08-03	Cosmic Girls	South Korea	\N	167	52	Gwangmyeong	I.O.I	\N	F	\N	uyj_s	\N	\N	0	0
663	\N	Jonghoon	Choi Jonghoon	최종훈	종훈	1990-03-07	FTISLAND	South Korea	\N	0	0	Seoul	\N	\N	M	Guitarist	\N	\N	209	0	0
664	\N	Jonghwan	Jo Jonghwan	조종환	종환	1992-11-23	100%	South Korea	\N	0	0	Seoul	\N	\N	M	\N	\N	\N	206	0	0
666	\N	Jonghyun	Lee Jonghyun	이종현	종현	1990-05-15	CNBLUE	South Korea	\N	0	0	Busan	\N	\N	M	Guitarist	\N	\N	208	0	0
672	\N	Jooan	Im Jimyoung	임지명	주안	1996-10-04	We In The Zone	South Korea	\N	173	58	Dongtan	\N	\N	M	\N	\N	\N	318	0	0
673	\N	Joochan	Hong Joochan	홍주찬	주찬	1999-07-31	Golden Child	South Korea	\N	0	0	\N	\N	\N	M	\N	\N	\N	258	0	0
674	\N	Jooheon	Lee Jooheon	이주헌	주헌	1994-10-06	MONSTA X	South Korea	\N	0	0	Daegu	\N	\N	M	\N	\N	\N	198	0	0
822	https://dbkpop.com/wp-content/uploads/2018/12/cherry_bullet_card_linlin.jpg	Lin Lin	Huang Ziting	황자정	린린	2003-07-05	\N	Taiwan	\N	0	0	\N	\N	Cherry Bullet	F	\N	\N	\N	\N	0	0
1071	https://dbkpop.com/wp-content/uploads/2019/04/wjsn_wj_stay_seola_profile.jpg	Seola	Kim Hyunjung	김현정	설아	1994-12-24	Cosmic Girls	South Korea	\N	165	0	Seoul	WJMK, WJSN The Black	\N	F	\N	seola_s	\N	\N	0	0
97	https://dbkpop.com/wp-content/uploads/2017/01/april_hello_summer_concept_chaekyung_profile.jpg	Chaekyung	Yoon Chaekyung	윤채경	채경	1996-07-07	APRIL	South Korea	\N	160	45	Incheon	C.I.V.A, I.B.I	Puretty	F	\N	\N	\N	22	0	0
950	https://dbkpop.com/wp-content/uploads/2020/09/kim_namjoo_profile_bird.jpg	Namjoo	Kim Namjoo	김남주	남주	1995-04-15	Apink	South Korea	\N	165	0	Seoul	\N	\N	F	\N	sarangdungy	\N	7	0	0
632	https://dbkpop.com/wp-content/uploads/2018/07/lovelyz_wag_zak_jisoo_profile.jpg	Jisoo	Seo Jisoo	서지수	지수	1994-02-11	Lovelyz	South Korea	\N	165	46	Incheon	\N	\N	F	\N	\N	\N	45	0	0
1276	https://dbkpop.com/wp-content/uploads/2020/09/p1harmony_profile_theo_1.jpg	Theo	Choi Taeyang	최태양	태오	2001-07-01	P1Harmony	South Korea	\N	0	0	\N	\N	\N	M	\N	\N	\N	353	0	0
256	https://dbkpop.com/wp-content/uploads/2018/05/uni.t_Euijin_profile.jpg	Euijin	Hong Euijin	홍의진	의진	1996-10-08	Sonamoo	South Korea	\N	168	0	Gwangju	UNI.T	\N	F	\N	\N	SONAMOO_EuiJin	66	0	0
676	https://dbkpop.com/wp-content/uploads/2016/12/Seventeen_Henggarae_Concept_UHD_Joshua_profile.jpg	Joshua	Hong Jisoo	홍지수	조슈아	1995-12-30	Seventeen	USA	South Korea	176	63	Los Angeles	\N	\N	M	\N	\N	\N	237	0	0
967	https://dbkpop.com/wp-content/uploads/2018/04/The_Boyz_Giddy_Up_New_profile.jpg	New	Choi Chanhee	최찬희	뉴	1998-04-26	The Boyz	South Korea	\N	175	51	Jeonju	\N	\N	M	\N	\N	\N	275	0	0
653	https://dbkpop.com/wp-content/uploads/2020/06/weeekly_we_are_teaser_2_shin_Jiyoon.jpg	Jiyoon	Shin Jiyoon	신지윤	지윤	2002-03-02	Weeekly	South Korea	\N	0	0	\N	\N	\N	F	Lead Vocal, Lead Dancer	\N	\N	153	0	0
461	https://dbkpop.com/wp-content/uploads/2019/01/hyomin_-U-Um-U-Um.jpg	Hyomin	Park Sunyoung	박선영	효민	1989-05-30	T-ara	South Korea	\N	167	43	Busan	\N	\N	F	\N	hyominnn	\N	4	0	0
100	https://dbkpop.com/wp-content/uploads/2019/07/itzy_itz_icy_concept_profile_chaeryung.jpg	Chaeryeong	Lee Chaeryeong	이채령	채령	2001-06-05	ITZY	South Korea	\N	0	0	\N	\N	\N	F	\N	\N	\N	141	0	0
276	https://dbkpop.com/wp-content/uploads/2016/11/t-ara_sugar_free_eunjung.jpg	Eunjung	Ham Eunjung	함은정	은정	1988-12-12	T-ara	South Korea	\N	167	47	Seoul	\N	\N	F	\N	sweetgirl_eunjung	\N	4	0	0
734	https://dbkpop.com/wp-content/uploads/2017/10/trcng_kangmin_profile.jpg	Kangmin	Kim Kangmin	김강민	강민	2001-11-13	TRCNG	South Korea	\N	169	0	\N	\N	\N	M	\N	\N	\N	271	0	0
1169	https://dbkpop.com/wp-content/uploads/2018/04/GI-DLE_2020_Soojin_Profile.jpg	Soojin	Seo Soojin	서수진	수진	1998-03-09	(G)I-DLE	South Korea	\N	0	0	\N	\N	\N	F	\N	\N	\N	106	0	0
106	https://dbkpop.com/wp-content/uploads/2017/01/dia_chaeyeon_1.jpg	Chaeyeon	Jung Chaeyeon	정채연	채연	1997-12-01	DIA	South Korea	\N	165	49	Suncheon	I.O.I	\N	F	\N	\N	\N	33	0	0
1415	https://dbkpop.com/wp-content/uploads/2018/04/bap_hands_up_bang_yongguk_profile.jpg	Yongguk	Bang Yongguk	방용국	용국	1990-03-31	B.A.P	South Korea	\N	182	60	Incheon	\N	\N	M	\N	\N	\N	195	0	0
678	\N	JR	Kim Jonghyun	김종현	제이알	1995-06-08	NU'EST	South Korea	\N	0	0	Gangwon	NU'EST W	\N	M	\N	\N	\N	232	0	0
679	\N	Ju-ne	Koo Junhoe	구준회	준회	1997-03-31	iKON	South Korea	\N	0	0	Seoul	\N	\N	M	\N	\N	\N	222	0	0
680	\N	Jueun	Lee Jooeun	이주은	주은	1995-07-07	DIA	South Korea	\N	0	0	Suwon	BinChaenHyunSeuS	\N	F	\N	\N	\N	33	0	0
685	\N	Juhyun	Cha Juhyun	차주현	주현	2000-04-01	Bling Bling	South Korea	\N	0	0	\N	\N	\N	F	\N	\N	\N	165	0	0
688	\N	Jun	Lee Junyoung	이준영	준	1997-01-22	U-KISS	South Korea	\N	0	0	\N	\N	\N	M	\N	\N	\N	190	0	0
689	\N	Jun	Park Junhee	박준희	준	1994-06-02	A.C.E	South Korea	\N	0	0	Jeolla	\N	\N	M	\N	\N	\N	265	0	0
1432	https://dbkpop.com/wp-content/uploads/2017/02/melody_day_yoomin_1.jpg	Yoomin	Na Yoomin	나유민	유민	1993-08-29	MELODYDAY	South Korea	\N	165	0	\N	\N	\N	F	Main Rapper	im.umin	\N	\N	0	0
699	https://dbkpop.com/wp-content/uploads/2016/11/bts_jungkook_profile_butter.jpg	Jungkook	Jeon Jungkook	전정국	정국	1997-09-01	BTS	South Korea	\N	178	66	Busan	\N	\N	M	\N	\N	\N	189	1	1
39	https://dbkpop.com/wp-content/uploads/2018/01/block_b_remontage_bbomb_profile.jpg	B-Bomb	Lee Minhyuk	이민혁	비범	1990-12-14	Block B	South Korea	\N	178	60	Seoul	Bastarz	\N	M	\N	\N	\N	191	0	0
511	https://dbkpop.com/wp-content/uploads/2020/09/p1harmony_profile_intak_1.jpg	Intak	Hwang Intak	황인탁	인탁	2003-08-31	P1Harmony	South Korea	\N	0	0	\N	\N	\N	M	\N	\N	\N	353	0	0
1300	https://dbkpop.com/wp-content/uploads/2017/11/red_velvet_perfect_velvet_wendy_profile.jpg	Wendy	Son Seunghwan	손승완	웬디	1994-02-21	Red Velvet	South Korea	\N	160	0	Seoul	\N	\N	F	\N	\N	\N	37	0	0
1469	https://dbkpop.com/wp-content/uploads/2017/10/brave_girls_yujeong_profile.jpg	Yujeong	Nam Yujeong	남유정	유정	1991-05-02	Brave Girls	South Korea	\N	0	0	Seoul	\N	\N	F	\N	\N	\N	25	0	0
981	https://dbkpop.com/wp-content/uploads/2020/09/Everglow_77.82X_78.29_La_Di_Da_Concept_Onda_3.jpg	Onda	Jo Selim	조세림	온다	2000-05-18	Everglow	South Korea	\N	0	0	\N	\N	\N	F	\N	\N	\N	143	0	0
819	https://dbkpop.com/wp-content/uploads/2019/07/itzy_itz_icy_concept_profile_lia.jpg	Lia	Choi Jisu	최지수	리아	2000-07-21	ITZY	South Korea	\N	0	0	\N	\N	\N	F	\N	\N	\N	141	0	0
1008	https://dbkpop.com/wp-content/uploads/2017/10/weki_meki_rina_profile-1.jpg	Rina	Kang Soeun	강소은	리나	2001-09-27	Weki Meki	South Korea	\N	0	0	\N	\N	\N	F	\N	\N	\N	82	0	0
349	https://dbkpop.com/wp-content/uploads/2017/01/secret_jung_hana_1.jpg	Hana	Jung Hana	정하나	하나	1990-02-02	SECRET	South Korea	\N	0	0	Uljeongbu	\N	\N	F	\N	\N	supahana	65	0	0
348	https://dbkpop.com/wp-content/uploads/2017/11/gugudan_chococo_factory_hana_profile.jpg	Hana	Shin Bora	신보라	하나	1993-04-30	Gugudan	South Korea	\N	0	0	\N	\N	\N	F	\N	\N	\N	47	0	0
404	https://dbkpop.com/wp-content/uploads/2018/04/vixx_eau_de_vixx_hongbin_profile.jpg	Hongbin	Lee Hongbin	이홍빈	홍빈	1993-09-29	VIXX	South Korea	\N	181	62	Seoul	\N	\N	M	\N	\N	\N	196	0	0
1256	https://dbkpop.com/wp-content/uploads/2017/10/trcng_taeseon_profile.jpg	Taeseon	Yang Taeseon	양태선	태선	2000-09-17	TRCNG	South Korea	\N	182	0	\N	\N	\N	M	\N	\N	\N	271	0	0
690	\N	Jun H.	Im Joonhyun	임준현	준현	1991-08-28	UNVS	South Korea	\N	0	0	\N	\N	\N	M	\N	\N	\N	341	0	0
691	\N	Jun Jin	Park Choongjae	박충재	전진	1980-08-19	Shinhwa	South Korea	\N	182	75	Seoul	\N	\N	M	\N	\N	\N	241	0	0
692	\N	Jun. K	Kim Minjun	김민준	준케이	1988-01-15	2PM	South Korea	\N	180	68	Daegu	\N	\N	M	\N	\N	\N	202	0	0
694	\N	Junghoon	Lee Junghoon	이정훈	정훈	2000-07-04	1TEAM	South Korea	\N	0	0	\N	\N	\N	M	\N	\N	\N	343	0	0
698	\N	Junghwan	So Junghwan	소정환	정환	2005-02-18	Treasure	South Korea	\N	0	0	\N	\N	\N	M	\N	\N	\N	358	0	0
700	\N	Jungmo	Koo Jungmo	구정모	정모	2000-02-05	CRAVITY	South Korea	\N	181	58	\N	\N	\N	M	\N	\N	\N	329	0	0
701	\N	Jungshin	Lee Jungshin	이정신	정신	1991-09-15	CNBLUE	South Korea	\N	0	0	\N	\N	\N	M	Bassist	\N	\N	208	0	0
703	\N	Jungwoo	Kim Jungwoo	김정우	정우	1998-02-19	NCT	South Korea	\N	0	0	\N	\N	\N	M	\N	\N	\N	231	0	0
704	\N	Jungwoo	Uhm Jungwoo	엄정우	정우	1999-04-02	BVNDIT	South Korea	\N	0	0	\N	\N	\N	F	\N	\N	\N	144	0	0
705	\N	Junho	Lee Junho	이준호	준호	1990-01-25	2PM	South Korea	\N	178	67	Ilsan	\N	\N	M	\N	\N	\N	202	0	0
706	\N	Junho	Cha Junho	차준호	준호	2002-07-09	DRIPPIN	South Korea	\N	178	63	\N	\N	X1	M	\N	\N	\N	351	0	0
710	\N	Junhyung	Yong Junyung	용준형	준형	1989-12-19	Highlight	South Korea	\N	178	64	Seoul	\N	Beast	M	\N	\N	\N	192	0	0
702	https://dbkpop.com/wp-content/uploads/2020/09/enhypen_official_profile_Jungwoo_1.jpg	Jungwon	Yang Jungwon	양정원	정원	2004-02-09	ENHYPEN	South Korea	\N	0	0	\N	\N	\N	M	\N	\N	\N	352	0	0
697	https://dbkpop.com/wp-content/uploads/2018/04/exid_lady_junghwa_profile.jpg	Junghwa	Park Junghwa	박정화	정화	1995-05-08	EXID	South Korea	\N	169	0	Anyang	\N	EXID	F	\N	jeonghwa_0508	\N	12	0	0
669	https://dbkpop.com/wp-content/uploads/2018/04/bap_hands_up_jongup_profile.jpg	Jongup	Moon Jongup	문종업	종업	1995-02-06	B.A.P	South Korea	\N	176	66	Seoul	\N	\N	M	\N	\N	\N	195	0	0
682	https://dbkpop.com/wp-content/uploads/2018/04/The_Boyz_Giddy_Up_Juhaknyeon_profile.jpg	Juhaknyeon	Ju Haknyeon	주학년	주학년	1999-03-09	The Boyz	South Korea	\N	175	58	Jeju	\N	\N	M	\N	\N	\N	275	0	0
920	\N	Miso	Park Miso	박미소	미소	1991-04-04	Tahiti	South Korea	\N	0	0	Gwangju	\N	\N	F	\N	\N	\N	40	0	0
332	https://dbkpop.com/wp-content/uploads/2016/12/laboum_summer_special_haein_profile.jpg	Haein	Yeom Haein	염해인	해인	1995-05-19	LABOUM	South Korea	\N	162	45	Ojeonggu	\N	\N	F	Lead Dancer	\N	\N	44	0	0
944	https://dbkpop.com/wp-content/uploads/2017/01/april_hello_summer_concept_naeun_profile.jpg	Naeun	Lee Naeun	이나은	나은	1999-05-05	APRIL	South Korea	\N	0	0	Daejeon	\N	\N	F	\N	\N	\N	22	0	0
1018	https://dbkpop.com/wp-content/uploads/2018/12/blackpink_Rose_profile_the_album.jpg	Rosé	Roseanne Park	로잔느 박	로제	1997-02-11	BLACKPINK	South Korea	\N	167	0	Auckland	\N	\N	F	\N	\N	\N	51	0	0
192	https://dbkpop.com/wp-content/uploads/2019/04/wjsn_wj_stay_dayoung_profile.jpg	Dayoung	Im Dayoung	임다영	다영	1999-05-14	Cosmic Girls	South Korea	\N	161	0	Jeju	WJSN Chocome	\N	F	\N	\N	\N	\N	0	0
1033	https://dbkpop.com/wp-content/uploads/2018/10/izone_coloriz_miyawaki_sakura_profile.jpg	Sakura	Miyawaki Sakura	미야와키 사쿠라	사쿠라	1998-03-19	IZ*ONE	Japan	\N	0	0	Kagoshima	\N	\N	F	\N	\N	\N	108	0	0
1075	\N	Seongmin	Ahn Seongmin	안성민	성민	2003-08-01	CRAVITY	South Korea	\N	0	0	\N	\N	\N	M	\N	\N	\N	329	0	0
1389	https://dbkpop.com/wp-content/uploads/2018/06/momoland_baam_yeonwoo_profile.jpg	Yeonwoo	Lee Dabin	이다빈	연우	1996-08-01	\N	South Korea	\N	170	49	Seoul	\N	MOMOLAND	F	\N	\N	\N	\N	0	0
1076	\N	Seongwu	Ong Seunwu	옹성우	성우	1995-08-25	Wanna One	South Korea	\N	0	0	Incheon	\N	\N	M	\N	\N	\N	256	0	0
1010	https://dbkpop.com/wp-content/uploads/2016/11/BTS_RM_profile_Butter.jpg	RM	Kim Namjoon	김남준	알엠	1994-09-12	BTS	South Korea	\N	181	67	Ilsan	\N	\N	M	Leader	\N	\N	189	6	4
1077	\N	Seoryoung	Lee Seoryung	이서령	서령	2000-01-26	GWSN	South Korea	\N	0	0	\N	\N	\N	F	\N	\N	\N	107	0	0
606	https://dbkpop.com/wp-content/uploads/2018/05/aoa_bingle_bangle_jimin_profile.jpg	Jimin	Shin Jimin	신지민	지민	1991-01-08	\N	South Korea	\N	160	43	Seoul	AOA BLACK	AoA	F	\N	jiminbaby_18	\N	\N	0	0
1121	https://dbkpop.com/wp-content/uploads/2018/04/pentagon_positive_shinwon_profile.jpg	Shinwon	Go Shinwon	고신원	신원	1995-12-11	PENTAGON	South Korea	\N	0	0	\N	\N	\N	M	\N	\N	\N	234	0	0
186	https://dbkpop.com/wp-content/uploads/2019/04/wjsn_wj_stay_dawon_profile.jpg	Dawon	Nam Dawon	남다원	다원	1997-03-16	Cosmic Girls	South Korea	\N	167	0	Seoul	\N	\N	F	\N	\N	\N	\N	0	0
1085	https://dbkpop.com/wp-content/uploads/2017/11/red_velvet_perfect_velvet_seulgi_profile.jpg	Seulgi	Kang Seulgi	강슬기	슬기	1994-02-10	Red Velvet	South Korea	\N	162	0	Seoul	Red Velvet - IRENE SEULGI	\N	F	\N	\N	\N	37	0	0
239	https://dbkpop.com/wp-content/uploads/2018/04/pentagon_positive_edawn_profile.jpg	E'Dawn	Kim Hyojong	김효종	이던	1994-06-01	\N	South Korea	\N	0	0	\N	\N	PENTAGON	M	\N	\N	\N	\N	0	0
1101	https://dbkpop.com/wp-content/uploads/2016/12/seventeen_seungkwan_2.jpg	Seungkwan	Boo Seungkwan	부승관	승관	1998-01-16	Seventeen	South Korea	\N	172	58	Jeju	\N	\N	M	\N	\N	\N	237	0	0
1108	https://dbkpop.com/wp-content/uploads/2019/06/clc_me_seungyeon_profile.jpg	Seungyeon	Jang Seunyeon	장승연	승연	1996-11-06	CLC	South Korea	\N	163	0	Seongnam	\N	\N	F	\N	\N	\N	23	0	0
1084	https://dbkpop.com/wp-content/uploads/2017/02/dalshabet_serri_1.jpg	Serri	Park Miyeon	박미연	세리	1990-09-16	Dal Shabet	South Korea	\N	0	0	Seoul	\N	\N	F	\N	\N	\N	11	0	0
1092	https://dbkpop.com/wp-content/uploads/2016/10/oh_my_girl_seunghee_profile_dear_ohmygirl_dun_dun_dance.jpg	Seunghee	Hyun Seunghee	현승희	승희	1996-01-25	Oh My Girl	South Korea	\N	160	48	Chuncheon	\N	\N	F	\N	\N	\N	35	0	0
1094	https://dbkpop.com/wp-content/uploads/2019/07/CIX_Hello_Stranger_Concept_Seunghun.jpg	Seunghun	Kim Seunghun	김승훈	승훈	1999-02-26	CIX	South Korea	\N	181	69	\N	\N	\N	M	\N	\N	\N	317	0	0
1132	\N	Sihyoung	Kim Sihyoung	김시형	시형	1992-05-15	HISTORY	South Korea	\N	182	63	Busan	\N	\N	M	\N	\N	\N	214	0	0
1133	\N	Sihyun	Park Sihyun	박시현	시현	1986-11-29	SPICA	South Korea	\N	0	0	\N	SPICA-S	SPICA	F	\N	\N	\N	70	0	0
1134	\N	Sika	Ren Shika	렌 시카	시카	1995-08-22	FANATICS	China	\N	165	0	\N	\N	\N	F	\N	\N	\N	160	0	0
1425	https://dbkpop.com/wp-content/uploads/2018/05/dreamcatcher_escape_the_era_yoohyeon_profile.jpg	Yoohyeon	Kim Yoohyeon	김유현	유현	1997-01-07	Dreamcatcher	South Korea	\N	171	0	Incheon	\N	Minx	F	\N	\N	\N	80	0	0
79	https://dbkpop.com/wp-content/uploads/2016/12/wjsn_wj_stay_bona_profile.jpg	Bona	Kim Jiyeon	김지연	보나	1995-08-19	Cosmic Girls	South Korea	\N	163	0	Daegu	WJSN The Black	\N	F	\N	\N	\N	\N	0	0
765	https://dbkpop.com/wp-content/uploads/2018/08/loona__kim_lip_profile.jpg	Kim Lip	Kim Jungeun	김정은	김립	1999-02-10	LOONA	South Korea	\N	0	0	\N	Loona Odd Eye Circle	\N	F	\N	\N	\N	78	0	0
1146	https://dbkpop.com/wp-content/uploads/2018/12/elris_summer_dream_sohee_profile.jpg	Sohee	Kim Sohee	김소희	소희	1999-12-31	ELRIS	South Korea	\N	0	0	\N	\N	\N	F	\N	\N	\N	83	0	0
1173	https://dbkpop.com/wp-content/uploads/2019/06/clc_me_sorn_profile.jpg	Sorn	Chonnasorn Sajakul	촌나손 사짜꾼	손	1996-11-18	CLC	Thailand	\N	164	0	Bangkok	\N	\N	F	\N	\N	\N	23	0	0
1156	https://dbkpop.com/wp-content/uploads/2018/04/exid_4_street_solji_profile.jpg	Solji	Heo Solji	허솔지	솔지	1989-01-10	EXID	South Korea	\N	170	0	Seongnam	\N	\N	F	\N	soul.g_heo	\N	12	0	0
1177	https://dbkpop.com/wp-content/uploads/2017/02/gugudan_narcissus_soyee-1-e1487382493326.jpg	Soyee	Jang Sojin	장소진	소이	1996-11-21	Gugudan	South Korea	\N	0	0	\N	\N	\N	F	\N	\N	\N	47	0	0
433	https://dbkpop.com/wp-content/uploads/2018/06/momoland_baam_hyebin_profile.jpg	Hyebin	Lee Hyebin	이혜빈	혜빈	1996-01-12	MOMOLAND	South Korea	\N	165	44	Andong	\N	\N	F	\N	\N	\N	72	0	0
1349	\N	Xia Junsu	Kim Junsu	김준수	시아 준수	1986-12-15	JYJ	South Korea	\N	0	0	\N	\N	TVXQ	M	\N	\N	\N	225	0	0
1350	\N	Xiao	Lee Dongyeol	이동열	샤오	1998-12-13	UP10TION	South Korea	\N	0	0	Busan	\N	\N	M	\N	\N	\N	247	0	0
1352	\N	Xion	Son Dongju	손동주	시온	2000-01-10	Oneus	South Korea	\N	0	0	\N	\N	\N	M	\N	\N	\N	285	0	0
1434	\N	Yoon	Kang Seungyoon	강승윤	승윤	1994-01-21	WINNER	South Korea	\N	0	0	Busan	\N	\N	M	\N	\N	\N	221	0	0
1436	\N	Yoon	Shim Jayoon	심자윤	윤	2004-04-14	STAYC	South Korea	\N	0	0	\N	\N	\N	F	\N	\N	\N	166	0	0
1439	\N	Yoonhye	Jung Yoonhye	정윤혜	윤혜	1990-04-14	Rainbow	South Korea	\N	166	47	Daejeon	\N	\N	F	\N	\N	\N	38	0	0
924	https://dbkpop.com/wp-content/uploads/2018/04/GI-DLE_2020_Miyeon_Profile.jpg	Miyeon	Jo Miyeon	조미연	미연	1997-01-31	(G)I-DLE	South Korea	\N	0	0	\N	\N	\N	F	\N	\N	\N	106	0	0
374	https://dbkpop.com/wp-content/uploads/2016/12/apink_hayoung_1.jpg	Hayoung	Oh Hayoung	오하영	하영	1996-07-19	Apink	South Korea	\N	167	0	Seoul	\N	\N	F	\N	o_h_y_y	\N	7	0	0
805	https://dbkpop.com/wp-content/uploads/2020/05/secret_Number_who_dis_concept_lea.jpg	Lea	Ogawa Mizuki	오가와 미즈키	레아	1995-08-12	SECRET NUMBER	Japan	\N	169	0	Tokyo	\N	Skarf	F	\N	\N	\N	157	0	0
1136	https://dbkpop.com/wp-content/uploads/2018/04/gfriend_time_for_the_moon_night_sinb_profile.jpg	SinB	Hwang Eunbi	황은비 	신비	1998-06-03	Gfriend	South Korea	\N	165	0	Cheongju	\N	\N	F	\N	\N	\N	48	0	0
1484	https://dbkpop.com/wp-content/uploads/2017/10/brave_girls_yuna_profile.jpg	Yuna	Lee Yuna	이유나	유나	1993-04-06	Brave Girls	South Korea	\N	0	0	Seoul	\N	\N	F	\N	\N	\N	25	0	0
1494	https://dbkpop.com/wp-content/uploads/2016/12/girls_day_everyday5_yura_profile.jpg	Yura	Kim Ahyoung	김아영	유라	1992-11-06	Girl's Day	South Korea	\N	168	49	Ulsan	\N	\N	F	\N	yura_936	\N	13	0	0
1481	https://dbkpop.com/wp-content/uploads/2018/12/elris_summer_dream_yukyung_profile.jpg	Yukyung	Lee Yukyung	이유경	유경	1999-11-05	ELRIS	South Korea	\N	0	0	\N	\N	\N	F	\N	\N	\N	83	0	0
1245	https://dbkpop.com/wp-content/uploads/2018/06/momoland_baam_taeha_profile.jpg	Taeha	Kim Taeha	김태하	태하	1998-06-03	\N	South Korea	\N	0	0	Jeonju	\N	MOMOLAND	F	\N	\N	\N	\N	0	0
1477	https://dbkpop.com/wp-content/uploads/2018/12/cherry_bullet_card_yuju.jpg	Yuju	Choi Yuju	최유주	유주	1997-03-05	Cherry Bullet	South Korea	\N	0	0	\N	\N	\N	F	\N	\N	\N	113	0	0
1002	https://dbkpop.com/wp-content/uploads/2018/05/pristin_v_like_a_v_rena_profile.jpg	Rena	Kang Yebin	강예빈	레나	1998-10-19	Hinapia	South Korea	\N	162	49	\N	Pristin V	Pristin	F	\N	\N	\N	147	0	0
921	\N	Miso	Park Jihyun	박지현	미소	1996-09-16	P.O.P	South Korea	\N	0	0	Busan	\N	\N	F	\N	\N	\N	86	0	0
13	\N	Aki	Jang Minju	장민주	아키	2001-02-12	MAJORS	South Korea	\N	168	48	\N	\N	\N	F	\N	\N	\N	180	0	0
391	\N	Heesun	Park Heesun	박희선	희선	2005-01-25	Pink Fantasy	South Korea	\N	162	45	\N	\N	\N	F	\N	\N	\N	118	0	0
550	\N	Jaeyun	Lee Jaeyun	이재윤	이재윤	2000-08-16	TOO	South Korea	\N	0	0	\N	\N	\N	M	\N	\N	\N	340	0	0
781	\N	Kun	Qian Kun	첸쿤	쿤	1996-01-01	NCT	China	\N	0	0	\N	\N	\N	M	\N	\N	\N	231	0	0
904	\N	Minseo	Park Minseo	박민서	민서	2003-03-21	Saturday	South Korea	\N	163	45	\N	\N	\N	F	\N	\N	\N	116	0	0
285	https://dbkpop.com/wp-content/uploads/2019/04/wjsn_wj_stay_exy_profile.jpg	Exy	Chu Sojung	추소정	엑시	1995-11-06	Cosmic Girls	South Korea	\N	166	0	Busan	WJSN The Black	\N	F	Leader	exy_s2	\N	\N	0	0
687	https://dbkpop.com/wp-content/uploads/2016/12/Seventeen_Henggarae_Concept_UHD_Jun_profile.jpg	Jun	Weng Junhui	원쥔훼이	준	1996-06-10	Seventeen	China	\N	180	63	Shenzen	\N	\N	M	\N	\N	\N	237	0	0
677	https://dbkpop.com/wp-content/uploads/2017/11/red_velvet_perfect_velvet_joy_profile.jpg	Joy	Park Sooyoung	박수영	조이	1996-09-03	Red Velvet	South Korea	\N	163	0	Jeju	\N	\N	F	\N	\N	\N	37	0	0
713	\N	Junkyu	Kim Junkyu	김준규	준규	2000-09-09	Treasure	South Korea	\N	0	0	\N	\N	\N	M	\N	\N	\N	358	0	0
714	\N	JunQ	Kang Junkyu	강준규	준규	1993-08-09	MYNAME	South Korea	\N	0	0	Uljeongbu	\N	\N	M	\N	\N	\N	199	0	0
716	\N	Junseo	Hwang Junseo	황준서	준서	2001-01-16	DKB	South Korea	\N	182	67	\N	\N	\N	M	\N	\N	\N	327	0	0
717	\N	Junseo	Park Junseo	박준서	준서	2001-12-28	BAE173	South Korea	\N	0	0	\N	\N	\N	M	\N	\N	\N	356	0	0
718	\N	Junseong	Choi Junseong	최준성	준성	2002-09-29	Ghost9	South Korea	\N	170	55	\N	\N	\N	M	\N	\N	\N	354	0	0
719	\N	Juntae	Kim Juntae	김준태	준태	1995-09-04	MY.st	South Korea	\N	0	0	\N	\N	\N	M	\N	\N	\N	338	0	0
721	\N	Junyoung	Lee Junyoung	이준영	준영	2000-09-23	IZ	South Korea	\N	0	0	\N	\N	\N	M	\N	\N	\N	301	0	0
722	\N	Juri	Takahashi Juri	타카하시 쥬리	쥬리	1997-10-03	Rocket Punch	Japan	\N	160	44	\N	\N	\N	F	\N	\N	\N	163	0	0
724	\N	Juyeon	Lee Juyeon	이주연	주연	2001-11-06	Saturday	South Korea	\N	164	44	\N	\N	\N	F	\N	\N	\N	116	0	0
727	\N	Kaeun	Lee Kaeun	이가은	가은	1994-08-20	After School	South Korea	\N	0	0	Seoul	\N	\N	F	\N	realkkaaanngg	\N	9	0	0
729	\N	Kai	Kim Jongin	김종인	카이	1994-01-14	EXO	South Korea	\N	182	65	Suncheon	SuperM	\N	M	\N	\N	\N	187	0	0
730	\N	Kain	Bang Junho	방준호	카인	1997-03-25	ARGON	South Korea	\N	178	0	\N	\N	\N	M	\N	\N	\N	344	0	0
731	\N	Kairi	Imai Kairi	이마이 카이리	카이리	2003-02-24	T1419	Japan	\N	0	0	\N	\N	\N	M	\N	\N	\N	361	0	0
736	\N	Kangmin	Yoo Kangmin	유강민	강민	2003-01-25	Verivery	South Korea	\N	0	0	\N	\N	\N	M	\N	\N	\N	286	0	0
737	\N	Kangsung	Lee Kangsung	이강성	강성	2002-08-08	Ghost9	South Korea	\N	0	0	\N	\N	\N	M	\N	\N	\N	354	0	0
739	\N	Karin	Baek Yerin	백예린	카린	2000-04-23	CRAXY	South Korea	\N	0	0	\N	\N	\N	F	\N	\N	\N	154	0	0
741	\N	KB	Shin Kyubin	신규빈	규빈	1994-04-23	OnlyOneOf	South Korea	\N	0	0	\N	\N	\N	M	\N	\N	\N	334	0	0
744	\N	Keina	Lee Yoona	이유나	케이나	1999-02-12	H.U.B	South Korea	\N	0	0	\N	\N	\N	F	\N	\N	\N	99	0	0
745	\N	Keita	Terazono Keita	테라조노 케이타	케이타	2001-07-04	Ciipher	Japan	\N	170	59	\N	\N	\N	M	\N	\N	\N	362	0	0
746	\N	Kelly	Lin Kelly	린 켈리	켈리	2002-01-16	TRI.BE	Taiwan	\N	0	0	Kaohsiung	\N	\N	F	\N	\N	\N	177	0	0
748	\N	Kenta	Takada Kenta	타카다 켄타	켄타	1995-01-10	JBJ	Japan	\N	0	0	Fujioka	\N	\N	M	\N	\N	\N	274	0	0
749	\N	Keonhee	Lee Keonhee	김건희	건희	1998-06-27	Oneus	South Korea	\N	0	0	\N	\N	\N	M	\N	\N	\N	285	0	0
750	\N	Keonwoo	Kim Keonwoo	김건우	건우	1996-12-17	MY.st	South Korea	\N	0	0	\N	\N	\N	M	\N	\N	\N	338	0	0
751	\N	Keumjo	Lee Keumjo	이금조	금조	1992-12-17	9Muses	South Korea	\N	167	48	Daegu	9MUSES A	\N	F	\N	keumjo_1217	\N	16	0	0
752	\N	Kevin	Christopher Woo	크리스토퍼 우	케빈	1991-11-25	U-KISS	USA	South Korea	0	0	Los Angeles	\N	\N	M	\N	\N	\N	190	0	0
753	\N	Kevin	Kevin Jiyeop Kim	케빈 지엽 킴	케빈	1988-02-23	ZE:A	South Korea	Australia	0	0	Sydney	\N	\N	M	\N	\N	\N	197	0	0
756	\N	Kevin	Baek Seungbin	백승빈	케빈	2001-04-08	T1419	South Korea	\N	0	0	\N	\N	\N	M	\N	\N	\N	361	0	0
757	\N	Key	Kim Kibum	김기범	키	1991-09-23	SHINee	South Korea	\N	179	59	Daegu	Toheart	\N	M	\N	\N	\N	186	0	0
764	\N	Kihyun	Yoo Kihyun	유기현	기현	1993-11-22	MONSTA X	South Korea	\N	0	0	Goyang	\N	\N	M	\N	\N	\N	198	0	0
766	\N	Kim Sanggyun	Kim Sanggyun	김상균	김상균	1995-05-23	JBJ95	South Korea	\N	0	0	Gwangju	JBJ	Topp Dogg, XENO-T	M	\N	\N	\N	293	0	0
769	\N	Kio	Udo Musashi	우도 무사시	키오	2004-11-28	T1419	South Korea	\N	0	0	\N	\N	\N	M	\N	\N	\N	361	0	0
770	\N	Kiseop	Lee Kiseop	이기섭	기섭	1991-01-17	U-KISS	South Korea	\N	0	0	Seongnam	\N	\N	M	\N	\N	\N	190	0	0
740	https://dbkpop.com/wp-content/uploads/2020/10/aespa_karina_profile_3.jpg	Karina	Yoo Jimin	유지민	카리나	2000-04-11	aespa	South Korea	\N	167	45	Gyeonggi	\N	\N	F	\N	\N	\N	175	0	0
743	https://dbkpop.com/wp-content/uploads/2018/07/lovelyz_wag_zak_kei_profile.jpg	Kei	Kim Jiyeon	김지연	케이	1995-03-20	Lovelyz	South Korea	\N	162	47	Incheon	\N	\N	F	\N	\N	\N	45	0	0
768	https://dbkpop.com/wp-content/uploads/2018/04/pentagon_positive_kino_profile.jpg	Kino	Kang Hyungku	강형구	키노	1998-01-27	PENTAGON	South Korea	\N	0	0	\N	\N	\N	M	\N	\N	\N	234	0	0
747	https://dbkpop.com/wp-content/uploads/2018/04/vixx_eau_de_vixx_ken_profile.jpg	Ken	Lee Jaehwan	이재환	켄	1992-04-06	VIXX	South Korea	\N	180	65	Seoul	\N	\N	M	\N	\N	\N	196	0	0
754	https://dbkpop.com/wp-content/uploads/2018/04/The_Boyz_Giddy_Up_Kevin_profile.jpg	Kevin	Moon Hyungseo	문형서	케빈	1998-02-23	The Boyz	Canada	South Korea	176	66	\N	\N	\N	M	\N	\N	\N	275	0	0
742	https://dbkpop.com/wp-content/uploads/2020/09/p1harmony_profile_keeho_2.jpg	Keeho	Yoon Kiho	윤기호	기호	2001-09-27	P1Harmony	Canada	\N	0	0	\N	\N	\N	M	\N	\N	\N	353	0	0
723	https://dbkpop.com/wp-content/uploads/2018/04/The_Boyz_Giddy_Up_Juyeon_profile.jpg	Juyeon	Lee Juyeon	이주연	주연	1998-01-16	The Boyz	South Korea	\N	180	67	\N	\N	\N	M	\N	\N	\N	275	0	0
780	\N	Kuhn	Noh Sooil	노수일	쿤	1995-11-11	UP10TION	South Korea	\N	0	0	Ansan	\N	\N	M	\N	\N	\N	247	0	0
782	\N	Kwanghee	Hwang Kwanghee	황광희	광희	1988-08-25	ZE:A	South Korea	\N	0	0	Paju	\N	\N	M	\N	\N	\N	197	0	0
783	\N	Kwangjin	Kwon Kwangjin	권광진	광진	1992-08-12	N.Flying	South Korea	\N	0	0	Seoul	\N	CNBLUE	M	Bassist	\N	\N	210	0	0
784	\N	Kwangmin	Jo Kwangmin	조광민	광민	1995-04-24	Boyfriend	South Korea	\N	180	0	Anyang	\N	\N	M	\N	\N	\N	204	0	0
785	\N	Kyeongheon	Yoon Kyeongheon	윤경헌	경헌	1998-01-06	We In The Zone	South Korea	\N	175	60	Suncheon	\N	\N	M	\N	\N	\N	318	0	0
790	\N	Kyuhyun	Cho Kyuhyun	조규현	규현	1988-02-03	Super Junior	South Korea	\N	180	68	Seoul	Super Junior-M	\N	M	\N	\N	\N	184	0	0
792	\N	Kyungho	Jang Kyungho	장경호	경호	2001-05-07	TOO	South Korea	\N	0	0	\N	\N	\N	M	\N	\N	\N	340	0	0
793	\N	Kyungil	Song Kyungil	송경일	경일	1987-11-28	HISTORY	South Korea	\N	183	72	\N	\N	\N	M	\N	\N	\N	214	0	0
794	\N	Kyungri	Park Kyungri	박경리	경리	1990-07-05	9Muses	South Korea	\N	170	50	Busan	9MUSES A	\N	F	\N	gyeongree	\N	16	0	0
796	\N	L	Kim Myungsoo	김명수	엘	1992-03-13	Infinite	South Korea	\N	180	60	Seoul	Infinite F	\N	M	\N	\N	\N	188	0	0
798	\N	Lai Kuanlin	Lai Kuanlin	라이관린	라이관린	2001-09-23	Wanna One	Taiwan	\N	0	0	New Taipei	\N	\N	M	\N	\N	\N	256	0	0
799	\N	Laon	Shin Kyuhyun	신규현	라온	1995-12-19	ENOi	South Korea	\N	177	60	\N	\N	\N	M	\N	\N	\N	323	0	0
800	\N	Lara	Moon Shinae	문신애	라라	2000-08-09	Dreamnote	South Korea	\N	161	44	\N	\N	\N	F	\N	\N	\N	114	0	0
802	\N	Lay	Zhang Yixing	장이씽	레이	1991-10-07	EXO	China	\N	177	60	Changsa	\N	\N	M	\N	\N	\N	187	0	0
807	\N	Lee Hoo	Moon Junyoung	문준영	\N	1989-02-09	ZE:A	South Korea	\N	0	0	Seoul	\N	\N	M	\N	\N	\N	197	0	0
808	\N	Lee Hyeop	Lee Hyeop	이협	이협	1999-08-13	DRIPPIN	South Korea	\N	177	57	\N	\N	\N	M	\N	\N	\N	351	0	0
813	\N	Leedo	Kim Geonhak	김건학	이도	1997-07-26	Oneus	South Korea	\N	0	0	\N	\N	\N	M	\N	\N	\N	285	0	0
814	\N	Leeteuk	Park Jeongsu	박정수	이특	1983-07-01	Super Junior	South Korea	\N	179	59	Seoul	\N	\N	M	\N	\N	\N	184	0	0
815	\N	Lena	Kang Rena	강레나	레나	2002-04-17	GWSN	South Korea	\N	0	0	\N	\N	\N	F	\N	\N	\N	107	0	0
817	\N	Leo	Hayase Leo	하야세 레오	레오	2002-10-08	T1419	Japan	\N	0	0	\N	\N	\N	M	\N	\N	\N	361	0	0
818	\N	Lex	Jeon Hyungmin	전형민	렉스	1993-01-12	Bigflo	South Korea	\N	0	0	\N	\N	\N	M	\N	\N	\N	298	0	0
823	\N	Lina	Oh Sejin	오세진	리나	1997-07-27	ANS	South Korea	\N	0	0	\N	\N	\N	F	\N	\N	\N	151	0	0
825	\N	Linzy	Im Minji	임민지	린지	1989-10-22	Fiestar	South Korea	\N	168	0	Incheon	\N	\N	F	\N	linzy_minji	\N	41	0	0
828	\N	Lizzy	Park Sooyoung	박수영	리지	1992-07-31	After School	South Korea	\N	0	0	Busan	Orange Caramel	\N	F	\N	luvlyzzy	\N	9	0	0
829	\N	Loha	Kang Yejin	강예진	로하	2001-12-27	Nature	South Korea	\N	171	0	\N	\N	\N	F	\N	\N	\N	109	0	0
831	\N	Longguo	Jin Longguo	진룽궈	룽궈	1996-03-02	JBJ	China	\N	0	0	Heilong	\N	\N	M	\N	\N	\N	274	0	0
821	https://dbkpop.com/wp-content/uploads/2017/01/hello_venus_lime.jpg	Lime	Kim Hyerim	김혜림	라임	1993-01-19	Hello Venus	South Korea	\N	169	50	\N	\N	\N	F	\N	hv_lime	\N	42	0	0
804	https://dbkpop.com/wp-content/uploads/2018/04/exid_lady_LE_profile.jpg	LE	Ahn Hyejin	안효진	엘리	1991-12-10	EXID	South Korea	\N	168	0	Cheonan	\N	\N	F	\N	x_xellybabyx	\N	12	0	0
816	https://dbkpop.com/wp-content/uploads/2018/04/vixx_eau_de_vixx_leo_profile.jpg	Leo	Jung Taekwon	정택운	레오	1990-11-10	VIXX	South Korea	\N	183	63	Seoul	VIXX LR	\N	M	\N	\N	\N	196	0	0
922	\N	Miso	Jeon Jimin	전지민	미소	2000-10-25	Dreamnote	South Korea	\N	160	43	\N	\N	\N	F	\N	\N	\N	114	0	0
810	https://dbkpop.com/wp-content/uploads/2018/05/Stray_Kids_Lee_Know_profile_IN.jpg	Lee Know	Lee Minho	이민호	리노	1998-10-25	Stray Kids	South Korea	\N	0	0	Gimpo	\N	\N	M	\N	\N	\N	279	0	0
786	https://dbkpop.com/wp-content/uploads/2017/01/pristin_we_like_kyla_profile.jpg	Kyla	Kyla Massie	카일라 매시	카일라	2001-12-26	Pristin	USA	South Korea	0	0	California	\N	\N	F	\N	\N	\N	79	0	0
834	\N	Louis	Yang Dongsik	양동식	루이	2001-04-08	Kingdom	South Korea	\N	0	0	\N	\N	\N	M	\N	\N	\N	359	0	0
835	\N	Love	Park Jisung	박지성	러브	1994-01-17	OnlyOneOf	South Korea	\N	0	0	\N	\N	\N	M	\N	\N	\N	334	0	0
839	\N	Lucas	Wong Junghei	웡육헤이	루카스	1999-01-25	NCT	Hong Kong	\N	0	0	\N	SuperM	\N	M	\N	\N	\N	231	0	0
841	\N	Lucy	Kim Daeun	김대은	루시	2004-04-09	woo!ah!	South Korea	\N	0	0	\N	\N	\N	F	Rapper, Vocalist	\N	\N	158	0	0
843	\N	Luha	Lee Gyeonghun	이경훈	루하	1993-02-15	14U	South Korea	\N	0	0	\N	\N	\N	M	\N	\N	\N	264	0	0
845	\N	Luna	Park Sunyoung	박선영	루나	1993-08-12	f(x)	South Korea	\N	162	0	Seoul	\N	\N	F	\N	hermosavidaluna	\N	36	0	0
846	\N	Lune	Jung Sungmin	정성민	룬	2000-02-27	DKB	South Korea	\N	176	55	\N	\N	\N	M	\N	\N	\N	327	0	0
850	\N	Marin	Yasufuku Marin	야스후쿠 마린	마린	2001-03-17	Bling Bling	Japan	\N	0	0	Osaka	\N	\N	F	\N	\N	\N	165	0	0
851	\N	Mark	Mark Lee	마크 리	마크	1999-08-02	NCT	Canada	\N	0	0	Vancouver	NCT U, NCT 127, NCT Dream, SuperM	\N	M	\N	\N	\N	231	0	0
853	\N	Mashiho	Takata Mashiho	타카타 마시호	마시호	2001-03-25	Treasure	Japan	\N	0	0	\N	\N	\N	M	\N	\N	\N	358	0	0
858	\N	Medic Jin	Bae Yujin	배유진	메딕진	1996-08-08	Girlkind	South Korea	\N	0	167	\N	\N	\N	F	\N	\N	\N	105	0	0
862	\N	Mihee	Lee Mihee	이미희	미희	2000-08-24	BOTOPASS	South Korea	\N	0	0	\N	\N	\N	F	\N	\N	\N	173	0	0
864	\N	Miko	Matsuda Miko	마츠다 미코	미코	1995-10-28	Honey Popcorn	Japan	\N	0	0	\N	\N	\N	F	\N	\N	\N	104	0	0
865	\N	Miku	Katae Miku	카타에 미쿠	미쿠	2002-10-09	Pink Fantasy	Japan	\N	0	0	\N	\N	\N	F	\N	\N	\N	118	0	0
866	\N	Mill	Lee Yongsoo	이용수	밀	1999-03-30	OnlyOneOf	South Korea	\N	0	0	\N	\N	\N	M	\N	\N	\N	334	0	0
870	\N	Min	Lee Minyoung	이민영	민	1991-06-21	miss A	South Korea	\N	161	0	Seoul	\N	\N	F	\N	therealminnn	\N	15	0	0
871	\N	Min	Lee Mincheon	이민천	민	1997-10-16	We In The Zone	South Korea	\N	171	50	Seoul	\N	\N	M	\N	\N	\N	318	0	0
876	\N	Minchan	Hong Minchan	홍민찬	민찬	1998-09-16	Verivery	South Korea	\N	0	0	\N	\N	\N	M	\N	\N	\N	286	0	0
877	\N	Mingi	Son Mingi	송민기	민기	1999-08-09	ATEEZ	South Korea	\N	183	0	\N	\N	\N	M	\N	\N	\N	283	0	0
881	\N	Minhee	Kang Minhee	강민희	민희	2002-09-17	CRAVITY	South Korea	\N	185	58	\N	\N	X1	M	\N	\N	\N	329	0	0
882	\N	Minho	Choi Minho	최민호	민호	1991-12-09	SHINee	South Korea	\N	181	60	Incheon	\N	\N	M	\N	\N	\N	186	0	0
883	\N	Minho	Lee Minho	이민호	민호	1995-09-04	MY.st	South Korea	\N	0	0	\N	\N	\N	M	\N	\N	\N	338	0	0
884	\N	Minhwan	Choi Minhwan	최민환	민환	1992-09-11	FTISLAND	South Korea	\N	0	0	Seoul	\N	\N	M	Drummer	\N	\N	209	0	0
885	\N	Minhyuk	Lee Minhyuk	이민혁	민혁	1990-11-29	BtoB	South Korea	\N	173	61	Seoul	\N	\N	M	\N	\N	\N	203	0	0
886	\N	Minhyuk	Lee Minhyuk	이민혁	민혁	1993-11-03	MONSTA X	South Korea	\N	0	0	\N	\N	\N	M	\N	\N	\N	198	0	0
887	\N	Minhyuk	Kang Minhyuk	강민혁	민혁	1991-06-28	CNBLUE	South Korea	\N	0	0	Ilsan	\N	\N	M	Drummer	\N	\N	208	0	0
889	\N	Minhyun	Hwang Minhyun	황민현	민현	1995-08-09	NU'EST	South Korea	\N	0	0	Busan	NU'EST	Wanna One	M	\N	\N	\N	232	0	0
874	https://dbkpop.com/wp-content/uploads/2017/11/gugudan_chococo_factory_mina_profile.jpg	Mina	Kang Mina	강미나	미나	1999-12-04	Gugudan	South Korea	\N	162	48	Icheon	Gugudan Oguogu	I.O.I	F	\N	\N	\N	47	0	0
868	https://dbkpop.com/wp-content/uploads/2017/11/gugudan_chococo_factory_mimi_profile.jpg	Mimi	Jung Mimi	정미미	미미	1993-01-01	Gugudan	South Korea	\N	163	0	\N	\N	\N	F	\N	\N	\N	47	0	0
852	https://dbkpop.com/wp-content/uploads/2017/10/got7_7_for_7_mark_profile.jpg	Mark	Mark Yien Tuan	마크 이엔 투안	마크	1993-09-04	GOT7	USA	Taiwan	175	59	Los Angeles	\N	\N	M	\N	\N	\N	200	0	0
840	https://dbkpop.com/wp-content/uploads/2017/10/weki_meki_lucy_profile-1.jpg	Lucy	Noh Hyojung	노효정	루시	2002-08-31	Weki Meki	South Korea	\N	0	0	Goyang	\N	\N	F	\N	\N	\N	82	0	0
856	https://dbkpop.com/wp-content/uploads/2018/12/cherry_bullet_card_may.jpg	May	Hirokawa Mao	히로카와 마오	메이	2004-11-16	Cherry Bullet	Japan	\N	0	0	\N	\N	\N	F	\N	\N	\N	113	0	0
878	https://dbkpop.com/wp-content/uploads/2016/12/seventeen_mingyu_2.jpg	Mingyu	Kim Mingyu	김민규	민규	1997-04-06	Seventeen	South Korea	\N	185	65	Anyang	\N	\N	M	\N	\N	\N	237	0	0
880	https://dbkpop.com/wp-content/uploads/2017/02/stellar_minhee_2.jpg	Minhee	Joo Minhee	주민희	민희	1993-01-03	Stellar	South Korea	\N	0	0	Seoul	\N	\N	F	\N	\N	\N	64	0	0
894	\N	Minjae	Song Minjae	송민재	민재	2003-08-23	MCND	South Korea	\N	0	0	\N	\N	\N	M	\N	\N	\N	337	0	0
895	\N	Minji	Kim Minji	김민지	민지	2001-01-16	Busters	South Korea	\N	0	0	\N	\N	\N	F	\N	\N	\N	130	0	0
897	\N	Minju	Kang Minjoo	강민주	민주	2001-03-11	GWSN	South Korea	\N	0	0	\N	\N	\N	F	\N	\N	\N	107	0	0
899	\N	Minkyung	Kang Minkyung	강민경	민경	1990-08-03	Davichi	South Korea	\N	0	0	Goyang	\N	\N	F	\N	\N	\N	20	0	0
901	\N	Mino	Song Minho	송민호	민호	1993-03-30	WINNER	South Korea	\N	0	0	Yongin	\N	\N	M	\N	\N	\N	221	0	0
902	\N	Minpyo	Gook Minpyo	국민표	민표	1994-11-15	B.I.G	South Korea	\N	173	57	Gwangju	\N	\N	M	\N	\N	\N	254	0	0
903	\N	Minseo	Kim Minseo	김민서	민서	2004-08-12	woo!ah!	South Korea	\N	0	0	\N	\N	\N	F	Vocalist, Dancer	\N	\N	158	0	0
905	\N	Minseo	Kim Minseo	김민서	민서	2002-05-13	DRIPPIN	South Korea	\N	177	53	\N	\N	\N	M	\N	\N	\N	351	0	0
906	\N	Minsu	Park Minsu	김민수	민수	1993-04-15	Boys Republic	South Korea	\N	172	55	Gwangju	\N	\N	M	\N	\N	\N	251	0	0
907	\N	Minsu	Kim Minsu	김민수	민수	2000-03-20	TOO	South Korea	\N	0	0	\N	\N	\N	M	\N	\N	\N	340	0	0
909	\N	Mint	Kunpat Phonpawiworakun	쿤팟 퍼언빠위워라쿤	민트	1994-06-23	Tiny-G	Thailand	\N	150	42	\N	\N	\N	F	\N	\N	\N	62	0	0
910	\N	Minwoo	No Minwoo	노민우	민우	1995-07-31	Boyfriend	South Korea	\N	174	60	Anyang	\N	\N	M	\N	\N	\N	204	0	0
911	\N	Minwoo	Ha Minwoo	하민우	민우	1990-09-06	ZE:A	South Korea	\N	0	0	Yangsan	\N	\N	M	\N	\N	\N	197	0	0
912	\N	Minwoo	Lee Minwoo	이민우	민우	1979-07-28	Shinhwa	South Korea	\N	172	60	Namwon	\N	\N	M	\N	\N	\N	241	0	0
913	\N	Minwoo†	Seo Minwoo	서민우	민우	1985-02-08	100%	South Korea	\N	0	0	Daegu	\N	\N	M	\N	\N	\N	206	0	0
915	\N	Minzy	Kong Minji	공민지	민지	1994-01-18	2NE1	South Korea	\N	0	0	\N	\N	\N	F	\N	\N	\N	3	0	0
916	\N	Mir	Bang Cheolyong	방철용	미르	1991-03-10	MBLAQ	South Korea	\N	0	0	Bukhamyeon	\N	\N	M	\N	\N	\N	193	0	0
923	\N	Miya	Miyauchi Haruka	미야우치 하루카	미야	1993-05-26	GWSN	Japan	\N	0	0	\N	\N	\N	F	\N	\N	\N	107	0	0
925	\N	MJ	Kim Myungjun	김명준	엠제이	1994-03-05	ASTRO	South Korea	\N	0	0	Nowon	\N	\N	M	\N	\N	\N	240	0	0
926	\N	MK	Park Minkyun	박민균	엠케이	1995-11-16	ONF	South Korea	\N	0	0	Ilsan	\N	\N	M	\N	\N	\N	260	0	0
927	\N	Moko	Sakura Moko	사쿠라 모코	모코	1991-03-19	Honey Popcorn	Japan	\N	0	0	\N	\N	\N	F	\N	\N	\N	104	0	0
929	\N	Momoka	Matsuda Momoka	마쓰다 모모카	모모카	2000-12-26	Pink Fantasy	Japan	\N	152	0	\N	\N	\N	F	\N	\N	\N	118	0	0
932	\N	Moon Bin	Moon Bin	문빈	문빈	1998-01-26	ASTRO	South Korea	\N	0	0	Cheongju	\N	\N	M	\N	\N	\N	240	0	0
933	\N	Moonbyul	Moon Byulyi	문별이	문별	1992-12-22	Mamamoo	South Korea	\N	165	45	Bucheon	\N	\N	F	Main Rapper	\N	\N	58	0	0
935	\N	Moonvok	Jang Moonvok	장문복	문복	1995-04-11	Limitless	South Korea	\N	168	48	\N	\N	\N	M	\N	\N	\N	324	0	0
936	\N	Mujin	Go Mujin	고무진	무진	2000-11-20	Kingdom	South Korea	\N	0	0	\N	\N	\N	M	\N	\N	\N	359	0	0
937	\N	Mujin	Go Mujin	고무진	무진	2000-11-20	Kingdom	South Korea	\N	0	0	\N	\N	\N	M	\N	\N	\N	359	0	0
939	\N	Muzin	Kim Hyunwoo	김현우	무진	2001-03-29	BAE173	South Korea	\N	0	0	\N	\N	\N	M	\N	\N	\N	356	0	0
940	\N	Myungji	Kim Myungji	김명지	명지	1997-10-09	Tiny-G	South Korea	\N	164	0	\N	\N	\N	F	\N	\N	\N	62	0	0
949	https://dbkpop.com/wp-content/uploads/2018/11/fromis_9_nakyung_profile.jpg	Nakyung	Lee Nakyung	이나경	나경	2000-06-01	fromis_9	South Korea	\N	159	42	Mungyeong	\N	\N	F	Lead Vocalist, Rapper, Visual	\N	\N	103	0	0
934	https://dbkpop.com/wp-content/uploads/2016/12/bonus_baby_moonhee.jpg	Moonhee	Choi Moonhee	최문희	문희	1997-04-15	Bonus Baby	South Korea	\N	167	0	\N	\N	MyB	F	\N	\N	\N	73	0	0
891	https://dbkpop.com/wp-content/uploads/2017/10/sonamoo_happy_box_part2_minjae_profile.jpg	Minjae	Seong Minjae	성민재	민재	1994-12-18	Sonamoo	South Korea	\N	165	0	Busan	\N	\N	F	Lead Vocalist	\N	SONAMOO_MinJae	66	0	0
900	https://dbkpop.com/wp-content/uploads/2018/04/GI-DLE_2020_Minnie_Profile.jpg	Minnie	Nicha Yontararak	니차 욘타라락	민니	1997-10-23	(G)I-DLE	Thailand	\N	0	0	\N	\N	\N	F	\N	\N	\N	106	0	0
947	https://dbkpop.com/wp-content/uploads/2018/10/izone_coloriz_yabuki_nako_profile.jpg	Nako	Yabuki Nako	야부키 나코	나코	2001-06-18	IZ*ONE	Japan	\N	0	0	Tokyo	\N	\N	F	\N	\N	\N	108	0	0
914	https://dbkpop.com/wp-content/uploads/2017/10/brave_girls_minyoung_profile.jpg	Minyoung	Kim Minyeong	김민영	민영	1990-09-12	Brave Girls	South Korea	\N	0	0	Seongnam	\N	\N	F	\N	\N	\N	25	0	0
896	https://dbkpop.com/wp-content/uploads/2018/10/izone_coloriz_kim_minjoo_profile.jpg	Minjoo	Kim Minjoo	김민주	민주	2001-02-05	IZ*ONE	South Korea	\N	0	0	Seoul	\N	\N	F	\N	\N	\N	108	0	0
941	https://dbkpop.com/wp-content/uploads/2018/04/vixx_eau_de_vixx_N_profile.jpg	N	Cha Hakyeon	차학연	엔	1990-06-30	VIXX	South Korea	\N	180	65	Changwon	Big Byung	\N	M	\N	\N	\N	196	0	0
945	https://dbkpop.com/wp-content/uploads/2016/11/sonamoo_happy_box_part2_nahyun_profile.jpg	Nahyun	Kim Nahyun	김나현	나현	1995-12-09	Sonamoo	South Korea	\N	170	0	Seoul	\N	\N	F	\N	\N	SONAMOO_Nahyun	66	0	0
952	\N	Nana	Kwon Nayeon	권나연	나나	2001-03-09	woo!ah!	South Korea	\N	0	0	\N	\N	\N	F	Leader, Main Dancer	\N	\N	158	0	0
956	\N	Narae	Park Narae	박나래	나래	1988-02-23	SPICA	South Korea	\N	0	0	Incheon	SPICA-S	SPICA	F	\N	\N	\N	70	0	0
957	\N	Nari	Kim Nari	김나리	나리	1992-10-05	Wassup	South Korea	\N	0	0	\N	\N	\N	F	\N	\N	\N	46	0	0
958	\N	Narin	Lee Narin	이나린	나린	2001-10-29	Bling Bling	South Korea	\N	0	0	\N	\N	\N	F	\N	\N	\N	165	0	0
959	\N	Narsha	Park Hyojin	박효진	나르샤	1981-12-28	Brown Eyed Girls	South Korea	\N	0	0	\N	\N	\N	F	\N	narsha81	\N	8	0	0
970	\N	Nichkhun	Nichkhun Horvejkul	닛차쿤 허라웻차꾼	닉쿤	1988-06-24	2PM	Thailand	USA	180	64	California	\N	\N	M	\N	\N	\N	202	0	0
972	\N	Niel	Ahn Daniel	안다니엘	니엘	1994-08-16	Teen Top	South Korea	\N	0	0	Anyang	\N	\N	M	\N	\N	\N	207	0	0
973	\N	Nine	Jung Wookjin	정욱진	나인	1999-12-13	OnlyOneOf	South Korea	\N	0	0	\N	\N	\N	M	\N	\N	\N	334	0	0
976	\N	Noah	Song Yubin	송유빈	노아	2000-08-02	T1419	South Korea	\N	0	0	\N	\N	\N	M	\N	\N	\N	361	0	0
977	\N	Noeul	No Eul	노을	노을	1989-05-10	Rainbow	South Korea	\N	164	44	Jeonju	\N	\N	F	\N	\N	\N	38	0	0
980	\N	On	Choi Juhwan	최주환	온	2002-10-16	T1419	South Korea	\N	0	0	\N	\N	\N	M	\N	\N	\N	361	0	0
982	\N	Onejunn	Jo Wonjun	조원준	원준	1988-11-22	Boys Republic	South Korea	\N	179	61	Changwon	\N	\N	M	\N	\N	\N	251	0	0
983	\N	Onew	Lee Jinki	이진기	온유	1989-12-14	SHINee	South Korea	\N	177	61	Gwangmyeong	\N	\N	M	\N	\N	\N	186	0	0
987	\N	Peniel	Shin Donggeun	신동근	프니엘	1993-03-10	BtoB	South Korea	USA	175	63	Chicago	\N	\N	M	\N	\N	\N	203	0	0
988	\N	Prince	Pasidh Vataniyapromote	파싯 와타니야쁘라못	프린스	2003-01-10	Ghost9	Thailand	\N	0	0	\N	\N	\N	M	\N	\N	\N	354	0	0
994	\N	Raina	Oh Hyerin	오혜린	레이나	1989-05-07	After School	South Korea	\N	0	0	Ulsan	Orange Caramel	\N	F	\N	raina_57	\N	9	0	0
995	\N	Rano	Byun Yongseop	변용섭	라노	1998-12-10	E'LAST	South Korea	\N	175	60	\N	\N	\N	M	\N	\N	\N	335	0	0
996	\N	Raon	Lee Seoyoung	이서영	라온	2000-01-21	ANS	South Korea	\N	0	0	\N	\N	\N	F	\N	\N	\N	151	0	0
998	\N	Ravn	Kim Yoongjo	김영조	레이븐	1995-09-02	Oneus	South Korea	\N	0	0	\N	\N	\N	M	\N	\N	\N	285	0	0
999	\N	Red	Lee Heejin	이희진	빨강	1991-07-10	Pungdeng-E	South Korea	\N	163	0	Daegu	\N	\N	F	\N	\N	\N	61	0	0
1001	\N	Ren	Choi Minki	최민기	렌	1995-11-03	NU'EST	South Korea	\N	0	0	Busan	NU'EST W	\N	M	\N	\N	\N	232	0	0
1003	\N	Renjun	Hwang Renjun	황런쥔	런쥔	2000-03-23	NCT	China	\N	0	0	Jilin	NCT Dream	\N	M	\N	\N	\N	231	0	0
1004	\N	Ria	Kuwayama Ria	쿠와야마 리아	리아	1998-02-03	BOTOPASS	Japan	\N	0	0	\N	\N	\N	F	\N	\N	\N	173	0	0
1005	\N	Ricky	Yoo Changhyun	유창현	리키	1995-02-27	Teen Top	South Korea	\N	0	0	Seoul	\N	\N	M	\N	\N	\N	207	0	0
1006	\N	Rie	Lee Seungho	이성호	리에	1996-11-06	OnlyOneOf	South Korea	\N	0	0	\N	\N	\N	M	\N	\N	\N	334	0	0
1000	https://dbkpop.com/wp-content/uploads/2018/12/cherry_bullet_card_remi.jpg	Remi	Katsuno Rise	카츠노 리세	레미	2001-04-26	Cherry Bullet	Japan	\N	0	0	\N	\N	\N	F	\N	\N	\N	113	0	0
986	https://dbkpop.com/wp-content/uploads/2017/02/block_b_yesterday_kyung_2.jpg	Park Kyung	Park Kyung	박경	박경	1992-07-08	Block B	South Korea	\N	176	56	Seoul	\N	\N	M	\N	\N	\N	191	0	0
997	https://dbkpop.com/wp-content/uploads/2018/04/vixx_eau_de_vixx_ravi_profile.jpg	Ravi	Kim Wonsik	김원식	라비	1993-02-15	VIXX	South Korea	\N	183	65	Seoul	VIXX LR	\N	M	\N	\N	\N	196	0	0
968	https://dbkpop.com/wp-content/uploads/2016/11/sonamoo_happy_box_part2_newsun_profile.jpg	New Sun	Choi Yoonsun	최윤선	뉴썬	1997-06-19	Sonamoo	South Korea	\N	172	0	\N	\N	\N	F	Rapper	\N	SONAMOO_NewSun	66	0	0
962	https://dbkpop.com/wp-content/uploads/2017/11/gugudan_chococo_factory_nayoung_profile.jpg	Nayoung	Kim Nayoung	김나영	나영	1995-11-23	Gugudan	South Korea	\N	169	50	\N	\N	\N	F	\N	\N	\N	47	0	0
963	https://dbkpop.com/wp-content/uploads/2018/05/pristin_v_like_a_v_nayoung_profile.jpg	Nayoung	Im Nayoung	임나영	나영	1995-12-18	Pristin	South Korea	\N	171	51	Chungcheongham	I.O.I, Pristin V	\N	F	\N	\N	\N	79	0	0
990	https://dbkpop.com/wp-content/uploads/2018/04/The_Boyz_Giddy_Up_Q_profile.jpg	Q	Ji Changmin	지창민	큐	1998-11-05	The Boyz	South Korea	\N	175	56	\N	\N	\N	M	\N	\N	\N	275	0	0
974	https://dbkpop.com/wp-content/uploads/2020/10/aespa_ningning_profile_2.jpg	Ningning	Ning Yizhuo	닝이쭤	닝닝	2002-10-23	aespa	China	\N	165	43	Harbin	\N	\N	F	\N	\N	\N	175	0	0
969	https://dbkpop.com/wp-content/uploads/2020/09/enhypen_official_profile_ni-ki_3.jpg	Ni-Ki	Nishimura Riki	니시무라 리키	니키	2005-12-09	ENHYPEN	Japan	\N	0	0	\N	\N	\N	M	\N	\N	\N	352	0	0
991	https://dbkpop.com/wp-content/uploads/2016/11/t-ara_sugar_free_qri_1.jpg	Qri	Lee Jihyun	이지현	큐리	1986-12-12	T-ara	South Korea	\N	162	44	Goyang	\N	\N	F	\N	qtfreet	\N	4	0	0
1015	\N	Rokhyun	Kim Rokhyun	김록현	록현	1991-02-10	100%	South Korea	\N	0	0	Suncheon	\N	\N	M	\N	\N	\N	206	0	0
1016	\N	Romin	Choi Youngmin	최영민	로민	2001-04-24	E'LAST	South Korea	\N	179	58	\N	\N	\N	M	\N	\N	\N	335	0	0
1017	\N	Ron	Cheon Byeonghwa	천병화	론	1991-01-22	Bigflo	South Korea	\N	183	62	\N	\N	\N	M	\N	\N	\N	298	0	0
1019	\N	Rowoon	Kim Seokwoo	김석우	로운	1996-08-07	SF9	South Korea	\N	0	0	\N	\N	\N	M	\N	\N	\N	255	0	0
1020	\N	Royeon	Jeon Hyunjoo	 전현주	로연	1998-02-20	ANS	South Korea	\N	0	0	\N	\N	\N	F	\N	\N	\N	151	0	0
1021	\N	Rubin	Lee Haejoon	이해준	루빈	1995-08-16	1TEAM	South Korea	\N	0	0	\N	\N	\N	M	\N	\N	\N	343	0	0
1022	\N	Rui	Watanabe Rui	와타나베 루이	루이	1994-10-08	H.U.B	Japan	\N	0	0	\N	\N	N-Bulance	F	\N	\N	\N	99	0	0
1024	\N	Ryeowook	Kim Ryeowook	김려욱	려욱	1987-06-21	Super Junior	South Korea	\N	175	58	Incheon	Super Junior-M	\N	M	\N	\N	\N	184	0	0
1028	\N	Saebom	Kim Seyoung	김세영	새봄	1995-01-13	Favorite	South Korea	\N	0	0	Gwacheon	\N	\N	F	\N	\N	\N	84	0	0
1030	\N	Saebyeol	Han Saebyeol	한새별	새별	1996-05-23	Matilda	South Korea	\N	0	168	\N	\N	\N	F	\N	\N	\N	93	0	0
1036	\N	San	Choi San	최산	산	1999-07-10	ATEEZ	South Korea	\N	173	0	\N	\N	\N	M	\N	\N	\N	283	0	0
1045	\N	Sangmin	Kim Sangmin	김상민	상민	1992-07-07	CROSS GENE	South Korea	\N	178	67	Jinju	\N	\N	M	\N	\N	\N	217	0	0
1047	\N	Sanha	Yoon Sanha	윤산하	산하	2000-03-21	ASTRO	South Korea	\N	0	0	Seoul	\N	\N	M	\N	\N	\N	240	0	0
1049	\N	Sea	Kim Sujeong	김수정	세아	1999-12-05	Highteen	South Korea	\N	0	0	\N	\N	\N	F	\N	\N	\N	92	0	0
1051	\N	Seea	Kang Eunyoung	강은영	시아	1994-08-21	Pink Fantasy	South Korea	\N	160	43	\N	\N	\N	F	\N	\N	\N	118	0	0
1052	\N	Seeun	Yoon Seeun	윤세은	세은	2003-06-14	STAYC	South Korea	\N	0	0	\N	\N	\N	F	\N	\N	\N	166	0	0
1053	\N	Segye	Shin Segye	신세계	세계	1998-08-19	AREAL	South Korea	\N	0	0	\N	\N	Rose Finger	F	\N	\N	\N	176	0	0
1054	\N	Sehun	Oh Sehun	오세훈	세훈	1994-04-12	EXO	South Korea	\N	181	63	Seoul	\N	\N	M	\N	\N	\N	187	0	0
1055	\N	Sehyung	Kang Sehyung	강세형	세형	1998-12-13	Berry Good	South Korea	\N	169	0	\N	\N	\N	F	\N	\N	\N	50	0	0
1058	\N	Sejin	Lee Sejin	이세진	세진	1999-07-22	14U	South Korea	\N	0	0	\N	\N	\N	M	\N	\N	\N	264	0	0
1059	\N	Sejun	Lim Sejun	임세준	세준	1996-05-04	VICTON	South Korea	\N	0	0	\N	\N	\N	M	\N	\N	\N	248	0	0
1062	\N	Semmi	Oh Heesun	오희선	세미	1995-10-22	Matilda	South Korea	\N	0	165	\N	\N	\N	F	\N	\N	\N	93	0	0
1064	\N	Seoham	Park Seoham	박서함	서함	1993-10-28	KNK	South Korea	\N	190	70	\N	\N	\N	M	Main Rapper, Sub Vocal	\N	\N	226	0	0
1065	\N	Seoho	Lee Seoho	이서호	서호	1996-06-07	Oneus	South Korea	\N	0	0	\N	\N	\N	M	\N	\N	\N	285	0	0
1025	https://dbkpop.com/wp-content/uploads/2019/07/itzy_itz_icy_concept_profile_ryujin.jpg	Ryujin	Shin Ryujin	신류진	류진	2001-04-17	ITZY	South Korea	\N	0	0	\N	\N	\N	F	\N	\N	\N	141	0	0
1057	https://dbkpop.com/wp-content/uploads/2017/02/kim_sejeong_profile.jpg	Sejeong	Kim Sejeong	김세정	세정	1996-08-28	Gugudan	South Korea	\N	164	48	\N	\N	I.O.I	F	\N	\N	\N	47	0	0
1034	https://dbkpop.com/wp-content/uploads/2017/11/gugudan_chococo_factory_sally_profile.jpg	Sally	Liu Xiening	류셰닝	샐리	1996-10-23	Gugudan	China	\N	0	0	Guangdong	\N	\N	F	\N	\N	\N	47	0	0
1046	https://dbkpop.com/wp-content/uploads/2018/04/The_Boyz_Giddy_Up_Sangyeon_profile.jpg	Sangyeon	Lee Sangyeon	이상연	상연	1996-11-04	The Boyz	South Korea	\N	176	61	\N	\N	\N	M	\N	\N	\N	275	0	0
1026	https://dbkpop.com/wp-content/uploads/2016/12/Seventeen_Henggarae_Concept_UHD_SCoups_profile.jpg	S.Coups	Choi Seungcheol	최승철	에스.쿱스	1995-08-08	Seventeen	South Korea	\N	177	63	Daegu	\N	\N	M	\N	\N	\N	237	0	0
1228	https://dbkpop.com/wp-content/uploads/2018/04/The_Boyz_Giddy_Up_Sunwoo_profile.jpg	Sunwoo	Kim Sunwoo	김선우	선우	2000-04-12	The Boyz	South Korea	\N	177	64	\N	\N	\N	M	\N	\N	\N	275	0	0
1372	https://dbkpop.com/wp-content/uploads/2019/07/itzy_itz_icy_concept_profile_yeji.jpg	Yeji	Hwang Yeji	황예지	예지	2000-05-26	ITZY	South Korea	\N	0	0	\N	\N	\N	F	\N	\N	\N	141	0	0
1170	https://dbkpop.com/wp-content/uploads/2020/06/weeekly_we_are_teaser_1_Lee_Soojin.jpg	Soojin	Lee Soojin	이수진	수진	2001-12-12	Weeekly	South Korea	\N	165	0	\N	\N	\N	F	Leader, Main Dancer, Sub Vocal	\N	\N	153	0	0
1304	https://dbkpop.com/wp-content/uploads/2020/10/aespa_winter_profile_3.jpg	Winter	Kim Minjung	김민정	윈터	2001-01-01	aespa	South Korea	\N	0	0	Yangsan	\N	\N	F	\N	\N	\N	175	0	0
1508	https://dbkpop.com/wp-content/uploads/2018/01/block_b_remontage_zico_profile.jpg	Zico	Woo Jiho	우지호	지코	1992-09-14	Block B	South Korea	\N	182	65	Seoul	\N	\N	M	\N	\N	\N	191	0	0
1377	https://dbkpop.com/wp-content/uploads/2018/10/izone_coloriz_choi_yena_profile.jpg	Yena	Choi Yena	최예나	예나	1999-09-29	IZ*ONE	South Korea	\N	0	0	Seoul	\N	\N	F	\N	\N	\N	108	0	0
269	https://dbkpop.com/wp-content/uploads/2016/12/apink_eunji_1.jpg	Eunji	Jung Eunji	정은지	은지	1993-08-18	Apink	South Korea	\N	163	0	Busan	\N	\N	F	\N	artist_eunji	\N	7	0	0
1284	https://dbkpop.com/wp-content/uploads/2017/02/block_b_yesterday_u-kwon_1.jpg	U-Kwon	Kim Yukwon	김유권	유권	1992-04-09	Block B	South Korea	\N	176	63	Suwon	Bastarz	\N	M	\N	\N	\N	191	0	0
1291	https://dbkpop.com/wp-content/uploads/2016/12/seventeen_vernon_2.jpg	Vernon	Choi Hansol	최한솔	버논	1998-02-18	Seventeen	USA	South Korea	176	56	New York	\N	\N	M	\N	\N	\N	237	0	0
579	https://dbkpop.com/wp-content/uploads/2017/02/stellar_jeonyul_2.jpg	Jeonyul	Jeon Yuri	전유리	전율	1994-03-20	Stellar	South Korea	\N	0	0	Seoul	\N	\N	F	\N	\N	\N	64	0	0
140	https://dbkpop.com/wp-content/uploads/2016/12/apink_chorong_3.jpg	Chorong	Park Chorong	박초롱	초롱	1991-03-03	Apink	South Korea	\N	165	0	Chungwongoon	\N	\N	F	\N	mulgokizary	\N	7	0	0
930	https://dbkpop.com/wp-content/uploads/2020/06/weeekly_we_are_teaser_2_monday.jpg	Monday	Kim Jimin	김지민	먼데이	2002-05-10	Weeekly	South Korea	\N	172	0	\N	\N	\N	F	Main Vocal, Main Dancer	\N	\N	153	0	0
614	https://dbkpop.com/wp-content/uploads/2018/04/pentagon_positive_jinho_profile.jpg	Jinho	Jo Jinho	조진호	조진호	1992-04-17	PENTAGON	South Korea	\N	0	0	\N	\N	\N	M	\N	\N	\N	234	0	0
1233	https://dbkpop.com/wp-content/uploads/2017/10/weki_meki_suyeon_profile-1.jpg	Suyeon	Ji Suyeon	지수연	수연	1997-04-20	Weki Meki	South Korea	\N	0	0	\N	\N	\N	F	\N	\N	\N	82	0	0
863	https://dbkpop.com/wp-content/uploads/2018/07/lovelyz_wag_zak_mijoo_profile.jpg	Mijoo	Lee Mijoo	이미주	미주	1994-09-23	Lovelyz	South Korea	\N	167	47	Okcheon	\N	\N	F	\N	\N	\N	45	0	0
1103	https://dbkpop.com/wp-content/uploads/2020/10/Stray_Kids_Seungmin_Profile_IN_LIFE.jpg	Seungmin	Kim Seungmin	김승민	승민	2000-09-22	Stray Kids	South Korea	\N	0	0	Seoul	\N	\N	M	\N	\N	\N	279	0	0
985	https://dbkpop.com/wp-content/uploads/2016/12/block_b_yesterday_PO_2-e1486309848794.jpg	P.O	Pyo Jihoon	표지훈	피오	1993-02-02	Block B	South Korea	\N	181	64	Seoul	Bastarz	\N	M	\N	\N	\N	191	0	0
1316	https://dbkpop.com/wp-content/uploads/2016/12/seventeen_wonwoo_2.jpg	Wonwoo	Jeon Wonwoo	전원우	원우	1996-07-17	Seventeen	South Korea	\N	180	57	Changwon	\N	\N	M	\N	\N	\N	237	0	0
1031	https://dbkpop.com/wp-content/uploads/2018/11/fromis_9_saerom_profile.jpg	Saerom	Lee Saerom	이새롬	새롬	1997-01-07	fromis_9	South Korea	\N	0	0	Gangwon	\N	\N	F	\N	\N	\N	103	0	0
668	https://dbkpop.com/wp-content/uploads/2020/09/p1harmony_profile_jongseob_1.jpg	Jongseob	Kim Jongseob	김종섭	종섭	2005-11-19	P1Harmony	South Korea	\N	173	0	\N	\N	\N	M	\N	\N	\N	353	0	0
1056	https://dbkpop.com/wp-content/uploads/2017/10/weki_meki_sei_profile-1.jpg	Sei	Lee Seojung	이서정	세이	2000-01-07	Weki Meki	South Korea	\N	0	0	\N	\N	\N	F	\N	\N	\N	82	0	0
1251	https://dbkpop.com/wp-content/uploads/2020/05/nct_taeil_profile.jpg	Taeil	Moon Taeil	문태일	태일	1994-06-14	NCT	South Korea	\N	171	60	Seoul	NCT U, NCT 127	\N	M	Main Vocal	\N	\N	231	0	0
49	https://dbkpop.com/wp-content/uploads/2017/10/got7_7_for_7_bambam_profile.jpg	BamBam	Kunpimook Bhuwakul	꾼삐묵 부와꾼	뱀뱀	1997-05-02	GOT7	Thailand	\N	170	52	Bangkok	\N	\N	M	\N	\N	\N	200	0	0
869	https://dbkpop.com/wp-content/uploads/2016/10/oh_my_girl_mimi_profile_dear_ohmygirl_dun_dun_dance.jpg	Mimi	Kim Mihyun	김미현	미미	1995-05-01	Oh My Girl	South Korea	\N	163	50	Jeju	\N	\N	F	\N	\N	\N	35	0	0
\.


--
-- Name: kpop_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: joshua
--

SELECT pg_catalog.setval('public.kpop_groups_id_seq', 364, true);


--
-- Name: kpop_idols_id_seq; Type: SEQUENCE SET; Schema: public; Owner: joshua
--

SELECT pg_catalog.setval('public.kpop_idols_id_seq', 1513, true);


--
-- Name: kpop_groups kpop_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: joshua
--

ALTER TABLE ONLY public.kpop_groups
    ADD CONSTRAINT kpop_groups_pkey PRIMARY KEY (id);


--
-- Name: kpop_groups_id; Type: INDEX; Schema: public; Owner: joshua
--

CREATE INDEX kpop_groups_id ON public.kpop_groups USING hash (id);


--
-- Name: kpop_groups_name; Type: INDEX; Schema: public; Owner: joshua
--

CREATE INDEX kpop_groups_name ON public.kpop_groups USING hash (name);


--
-- Name: kpop_idol_stage_name; Type: INDEX; Schema: public; Owner: joshua
--

CREATE INDEX kpop_idol_stage_name ON public.kpop_idols USING hash (stage_name);


--
-- Name: kpop_idols_id; Type: INDEX; Schema: public; Owner: joshua
--

CREATE INDEX kpop_idols_id ON public.kpop_idols USING hash (id);


--
-- PostgreSQL database dump complete
--

