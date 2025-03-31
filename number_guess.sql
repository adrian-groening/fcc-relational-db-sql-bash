--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

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

DROP DATABASE number_guess;
--
-- Name: number_guess; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE number_guess WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE number_guess OWNER TO freecodecamp;

\connect number_guess

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
-- Name: game_results; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.game_results (
    id integer NOT NULL,
    username character varying(22) NOT NULL,
    games_played integer DEFAULT 0,
    best_game integer,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);


ALTER TABLE public.game_results OWNER TO freecodecamp;

--
-- Name: game_results_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.game_results_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.game_results_id_seq OWNER TO freecodecamp;

--
-- Name: game_results_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.game_results_id_seq OWNED BY public.game_results.id;


--
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    game_id integer NOT NULL,
    u_id integer,
    guesses integer NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_game_id_seq OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_game_id_seq OWNED BY public.games.game_id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    u_id integer NOT NULL,
    name character varying(22) NOT NULL
);


ALTER TABLE public.users OWNER TO freecodecamp;

--
-- Name: users_u_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.users_u_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_u_id_seq OWNER TO freecodecamp;

--
-- Name: users_u_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.users_u_id_seq OWNED BY public.users.u_id;


--
-- Name: game_results id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.game_results ALTER COLUMN id SET DEFAULT nextval('public.game_results_id_seq'::regclass);


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: users u_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN u_id SET DEFAULT nextval('public.users_u_id_seq'::regclass);


--
-- Data for Name: game_results; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.game_results VALUES (2, 'user_1743392292246', 2, 289, '2025-03-31 03:38:12.483269');
INSERT INTO public.game_results VALUES (19, 'user_1743393221892', 2, 459, '2025-03-31 03:53:42.147669');
INSERT INTO public.game_results VALUES (1, 'user_1743392292247', 5, 107, '2025-03-31 03:38:12.307108');
INSERT INTO public.game_results VALUES (63, 'user_1743395436665', 2, 267, '2025-03-31 04:30:36.894708');
INSERT INTO public.game_results VALUES (18, 'user_1743393221893', 5, 200, '2025-03-31 03:53:41.949585');
INSERT INTO public.game_results VALUES (4, 'user_1743392359575', 2, 11, '2025-03-31 03:39:19.891946');
INSERT INTO public.game_results VALUES (35, 'user_1743394353493', 2, 16, '2025-03-31 04:12:33.746833');
INSERT INTO public.game_results VALUES (51, 'user_1743395166586', 2, 271, '2025-03-31 04:26:06.844939');
INSERT INTO public.game_results VALUES (3, 'user_1743392359576', 5, 206, '2025-03-31 03:39:19.633548');
INSERT INTO public.game_results VALUES (81, 'user_1743395996482', 2, 218, '2025-03-31 04:39:56.734772');
INSERT INTO public.game_results VALUES (21, 'user_1743393250178', 2, 432, '2025-03-31 03:54:10.373527');
INSERT INTO public.game_results VALUES (34, 'user_1743394353494', 5, 83, '2025-03-31 04:12:33.552171');
INSERT INTO public.game_results VALUES (6, 'user_1743392404225', 2, 257, '2025-03-31 03:40:04.446838');
INSERT INTO public.game_results VALUES (20, 'user_1743393250179', 5, 121, '2025-03-31 03:54:10.235477');
INSERT INTO public.game_results VALUES (5, 'user_1743392404226', 5, 9, '2025-03-31 03:40:04.282148');
INSERT INTO public.game_results VALUES (50, 'user_1743395166587', 5, 237, '2025-03-31 04:26:06.63484');
INSERT INTO public.game_results VALUES (8, 'user_1743392506044', 2, 122, '2025-03-31 03:41:46.235256');
INSERT INTO public.game_results VALUES (23, 'user_1743393362301', 2, 429, '2025-03-31 03:56:02.509427');
INSERT INTO public.game_results VALUES (7, 'user_1743392506045', 5, 71, '2025-03-31 03:41:46.101982');
INSERT INTO public.game_results VALUES (37, 'user_1743394533895', 2, 461, '2025-03-31 04:15:34.144571');
INSERT INTO public.game_results VALUES (62, 'user_1743395436666', 5, 209, '2025-03-31 04:30:36.715643');
INSERT INTO public.game_results VALUES (22, 'user_1743393362302', 5, 302, '2025-03-31 03:56:02.359668');
INSERT INTO public.game_results VALUES (11, 'user_1743392634221', 2, 416, '2025-03-31 03:43:54.400835');
INSERT INTO public.game_results VALUES (10, 'user_1743392634222', 5, 87, '2025-03-31 03:43:54.277808');
INSERT INTO public.game_results VALUES (12, 'user_1743392687809', 0, NULL, '2025-03-31 03:44:47.863807');
INSERT INTO public.game_results VALUES (13, 'user_1743392687808', 0, NULL, '2025-03-31 03:44:48.002065');
INSERT INTO public.game_results VALUES (36, 'user_1743394533896', 5, 68, '2025-03-31 04:15:33.952159');
INSERT INTO public.game_results VALUES (15, 'user_1743392725633', 2, 60, '2025-03-31 03:45:25.937039');
INSERT INTO public.game_results VALUES (25, 'user_1743393376297', 2, 45, '2025-03-31 03:56:16.528899');
INSERT INTO public.game_results VALUES (14, 'user_1743392725634', 5, 51, '2025-03-31 03:45:25.692122');
INSERT INTO public.game_results VALUES (9, 'adriangroening', 8, 2, '2025-03-31 03:42:57.922599');
INSERT INTO public.game_results VALUES (24, 'user_1743393376298', 5, 4, '2025-03-31 03:56:16.351777');
INSERT INTO public.game_results VALUES (17, 'user_1743392747721', 2, 635, '2025-03-31 03:45:47.965184');
INSERT INTO public.game_results VALUES (16, 'user_1743392747722', 5, 390, '2025-03-31 03:45:47.778336');
INSERT INTO public.game_results VALUES (53, 'user_1743395274602', 2, 309, '2025-03-31 04:27:54.832527');
INSERT INTO public.game_results VALUES (39, 'user_1743394606566', 2, 556, '2025-03-31 04:16:46.856287');
INSERT INTO public.game_results VALUES (27, 'user_1743393458830', 2, 115, '2025-03-31 03:57:39.071111');
INSERT INTO public.game_results VALUES (73, 'user_1743395743070', 2, 4, '2025-03-31 04:35:43.238415');
INSERT INTO public.game_results VALUES (26, 'user_1743393458831', 5, 325, '2025-03-31 03:57:38.885143');
INSERT INTO public.game_results VALUES (38, 'user_1743394606567', 5, 470, '2025-03-31 04:16:46.626829');
INSERT INTO public.game_results VALUES (52, 'user_1743395274603', 5, 324, '2025-03-31 04:27:54.654164');
INSERT INTO public.game_results VALUES (29, 'user_1743393700642', 2, NULL, '2025-03-31 04:01:40.859776');
INSERT INTO public.game_results VALUES (28, 'user_1743393700643', 5, NULL, '2025-03-31 04:01:40.698982');
INSERT INTO public.game_results VALUES (93, 'user_1743396733028', 2, 523, '2025-03-31 04:52:13.327137');
INSERT INTO public.game_results VALUES (41, 'user_1743394616893', 2, 339, '2025-03-31 04:16:57.120859');
INSERT INTO public.game_results VALUES (65, 'user_1743395494047', 2, 158, '2025-03-31 04:31:34.319162');
INSERT INTO public.game_results VALUES (31, 'user_1743393770017', 2, 197, '2025-03-31 04:02:50.284902');
INSERT INTO public.game_results VALUES (40, 'user_1743394616894', 5, 103, '2025-03-31 04:16:56.953272');
INSERT INTO public.game_results VALUES (30, 'user_1743393770018', 5, 66, '2025-03-31 04:02:50.073676');
INSERT INTO public.game_results VALUES (80, 'user_1743395996483', 5, 9, '2025-03-31 04:39:56.541186');
INSERT INTO public.game_results VALUES (55, 'user_1743395278713', 2, 370, '2025-03-31 04:27:58.952231');
INSERT INTO public.game_results VALUES (33, 'user_1743394337325', 2, 581, '2025-03-31 04:12:17.55746');
INSERT INTO public.game_results VALUES (72, 'user_1743395743071', 5, 7, '2025-03-31 04:35:43.122101');
INSERT INTO public.game_results VALUES (32, 'user_1743394337326', 5, 164, '2025-03-31 04:12:17.384091');
INSERT INTO public.game_results VALUES (43, 'user_1743394622278', 2, 245, '2025-03-31 04:17:02.516127');
INSERT INTO public.game_results VALUES (64, 'user_1743395494048', 5, 214, '2025-03-31 04:31:34.09957');
INSERT INTO public.game_results VALUES (54, 'user_1743395278714', 5, 335, '2025-03-31 04:27:58.764795');
INSERT INTO public.game_results VALUES (42, 'user_1743394622279', 5, 198, '2025-03-31 04:17:02.341002');
INSERT INTO public.game_results VALUES (45, 'user_1743394680497', 2, 104, '2025-03-31 04:18:00.69643');
INSERT INTO public.game_results VALUES (44, 'user_1743394680498', 5, 44, '2025-03-31 04:18:00.549568');
INSERT INTO public.game_results VALUES (57, 'user_1743395284565', 2, 678, '2025-03-31 04:28:04.839987');
INSERT INTO public.game_results VALUES (47, 'user_1743394791896', 2, 339, '2025-03-31 04:19:52.158609');
INSERT INTO public.game_results VALUES (56, 'user_1743395284566', 5, 115, '2025-03-31 04:28:04.616713');
INSERT INTO public.game_results VALUES (46, 'user_1743394791897', 5, 184, '2025-03-31 04:19:51.95292');
INSERT INTO public.game_results VALUES (67, 'user_1743395517757', 2, 187, '2025-03-31 04:31:57.970929');
INSERT INTO public.game_results VALUES (49, 'user_1743395154874', 2, 632, '2025-03-31 04:25:55.131047');
INSERT INTO public.game_results VALUES (59, 'user_1743395341014', 2, 570, '2025-03-31 04:29:01.262219');
INSERT INTO public.game_results VALUES (48, 'user_1743395154875', 5, 184, '2025-03-31 04:25:54.922825');
INSERT INTO public.game_results VALUES (66, 'user_1743395517758', 5, 163, '2025-03-31 04:31:57.808593');
INSERT INTO public.game_results VALUES (75, 'user_1743395896197', 2, 326, '2025-03-31 04:38:16.469262');
INSERT INTO public.game_results VALUES (58, 'user_1743395341015', 5, 403, '2025-03-31 04:29:01.06691');
INSERT INTO public.game_results VALUES (87, 'user_1743396238899', 2, 365, '2025-03-31 04:43:59.115944');
INSERT INTO public.game_results VALUES (61, 'user_1743395382753', 2, 326, '2025-03-31 04:29:42.969271');
INSERT INTO public.game_results VALUES (69, 'user_1743395529089', 2, 105, '2025-03-31 04:32:09.313982');
INSERT INTO public.game_results VALUES (74, 'user_1743395896198', 5, 563, '2025-03-31 04:38:16.248943');
INSERT INTO public.game_results VALUES (60, 'user_1743395382754', 5, 317, '2025-03-31 04:29:42.803371');
INSERT INTO public.game_results VALUES (83, 'user_1743396014894', 2, 203, '2025-03-31 04:40:15.113312');
INSERT INTO public.game_results VALUES (68, 'user_1743395529090', 5, 171, '2025-03-31 04:32:09.139898');
INSERT INTO public.game_results VALUES (98, 'user_1743396960546', 5, 75, '2025-03-31 04:56:00.610077');
INSERT INTO public.game_results VALUES (71, 'user_1743395739192', 2, 196, '2025-03-31 04:35:39.342877');
INSERT INTO public.game_results VALUES (77, 'user_1743395929268', 2, 411, '2025-03-31 04:38:49.465708');
INSERT INTO public.game_results VALUES (82, 'user_1743396014895', 5, 369, '2025-03-31 04:40:14.952142');
INSERT INTO public.game_results VALUES (70, 'user_1743395739193', 5, 23, '2025-03-31 04:35:39.24085');
INSERT INTO public.game_results VALUES (76, 'user_1743395929269', 5, 82, '2025-03-31 04:38:49.31786');
INSERT INTO public.game_results VALUES (78, 'user_1743395990515', 0, NULL, '2025-03-31 04:39:50.569318');
INSERT INTO public.game_results VALUES (79, 'user_1743395990514', 0, NULL, '2025-03-31 04:39:50.765894');
INSERT INTO public.game_results VALUES (86, 'user_1743396238900', 5, 10, '2025-03-31 04:43:58.956478');
INSERT INTO public.game_results VALUES (91, 'user_1743396727319', 2, 529, '2025-03-31 04:52:07.703983');
INSERT INTO public.game_results VALUES (92, 'user_1743396733029', 5, 244, '2025-03-31 04:52:13.110268');
INSERT INTO public.game_results VALUES (85, 'user_1743396027388', 2, 72, '2025-03-31 04:40:27.690296');
INSERT INTO public.game_results VALUES (84, 'user_1743396027389', 5, 170, '2025-03-31 04:40:27.443562');
INSERT INTO public.game_results VALUES (89, 'user_1743396246169', 2, 501, '2025-03-31 04:44:06.535983');
INSERT INTO public.game_results VALUES (90, 'user_1743396727320', 5, 37, '2025-03-31 04:52:07.393584');
INSERT INTO public.game_results VALUES (88, 'user_1743396246170', 5, 25, '2025-03-31 04:44:06.231366');
INSERT INTO public.game_results VALUES (94, 'user_1743396745694', 5, 549, '2025-03-31 04:52:25.767355');
INSERT INTO public.game_results VALUES (99, 'user_1743396960545', 2, 96, '2025-03-31 04:56:00.85921');
INSERT INTO public.game_results VALUES (96, 'user_1743396837325', 0, NULL, '2025-03-31 04:53:57.386792');
INSERT INTO public.game_results VALUES (97, 'user_1743396837324', 0, NULL, '2025-03-31 04:53:57.64558');
INSERT INTO public.game_results VALUES (95, 'user_1743396745693', 2, 624, '2025-03-31 04:52:26.219941');
INSERT INTO public.game_results VALUES (101, 'user_1743397261366', 2, 414, '2025-03-31 05:01:01.569455');
INSERT INTO public.game_results VALUES (100, 'user_1743397261367', 5, 27, '2025-03-31 05:01:01.424552');
INSERT INTO public.game_results VALUES (102, 'user_1743397343227', 5, 6, '2025-03-31 05:02:23.298449');
INSERT INTO public.game_results VALUES (103, 'user_1743397343226', 2, 6, '2025-03-31 05:02:23.429429');
INSERT INTO public.game_results VALUES (104, 'user_1743397408442', 5, 80, '2025-03-31 05:03:28.511532');
INSERT INTO public.game_results VALUES (105, 'user_1743397408441', 2, 339, '2025-03-31 05:03:28.745976');
INSERT INTO public.game_results VALUES (106, 'user_1743397803135', 5, 60, '2025-03-31 05:10:03.209249');
INSERT INTO public.game_results VALUES (107, 'user_1743397803134', 2, 807, '2025-03-31 05:10:03.493579');
INSERT INTO public.game_results VALUES (108, 'user_1743397812646', 5, 344, '2025-03-31 05:10:12.70943');
INSERT INTO public.game_results VALUES (109, 'user_1743397812645', 2, 385, '2025-03-31 05:10:13.00227');
INSERT INTO public.game_results VALUES (111, 'dd', 1, 4, '2025-03-31 05:12:24.75284');
INSERT INTO public.game_results VALUES (110, 'ad', 2, 3, '2025-03-31 05:12:01.691063');
INSERT INTO public.game_results VALUES (112, 'user_1743397972964', 5, 7, '2025-03-31 05:12:53.041108');
INSERT INTO public.game_results VALUES (113, 'user_1743397972963', 2, 7, '2025-03-31 05:12:53.192206');
INSERT INTO public.game_results VALUES (115, 'user_1743398010256', 2, 40, '2025-03-31 05:13:30.580447');
INSERT INTO public.game_results VALUES (114, 'user_1743398010257', 5, 90, '2025-03-31 05:13:30.336812');
INSERT INTO public.game_results VALUES (117, 'user_1743398023266', 2, 358, '2025-03-31 05:13:43.572561');
INSERT INTO public.game_results VALUES (116, 'user_1743398023267', 5, 99, '2025-03-31 05:13:43.339089');
INSERT INTO public.game_results VALUES (119, 'user_1743398030853', 2, 47, '2025-03-31 05:13:51.247516');
INSERT INTO public.game_results VALUES (118, 'user_1743398030854', 5, 292, '2025-03-31 05:13:50.923146');
INSERT INTO public.game_results VALUES (121, 'user_1743398082679', 2, 474, '2025-03-31 05:14:42.975769');
INSERT INTO public.game_results VALUES (120, 'user_1743398082680', 5, 275, '2025-03-31 05:14:42.754856');
INSERT INTO public.game_results VALUES (123, 'user_1743398109735', 2, 480, '2025-03-31 05:15:10.100956');
INSERT INTO public.game_results VALUES (122, 'user_1743398109736', 5, 298, '2025-03-31 05:15:09.815165');


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (1, 1, 649, '2025-03-31 04:05:35.252935');
INSERT INTO public.games VALUES (2, 1, 872, '2025-03-31 04:05:35.390593');
INSERT INTO public.games VALUES (3, 2, 894, '2025-03-31 04:05:35.525202');
INSERT INTO public.games VALUES (4, 2, 630, '2025-03-31 04:05:35.649592');
INSERT INTO public.games VALUES (5, 1, 848, '2025-03-31 04:05:35.780912');
INSERT INTO public.games VALUES (6, 1, 745, '2025-03-31 04:05:35.88379');
INSERT INTO public.games VALUES (7, 1, 414, '2025-03-31 04:05:36.001098');
INSERT INTO public.games VALUES (8, 3, 11, '2025-03-31 04:06:51.449476');
INSERT INTO public.games VALUES (9, 4, 96, '2025-03-31 04:07:12.745072');
INSERT INTO public.games VALUES (10, 4, 645, '2025-03-31 04:07:12.868044');
INSERT INTO public.games VALUES (11, 5, 375, '2025-03-31 04:07:12.965538');
INSERT INTO public.games VALUES (12, 5, 407, '2025-03-31 04:07:13.054275');
INSERT INTO public.games VALUES (13, 4, 364, '2025-03-31 04:07:13.148707');
INSERT INTO public.games VALUES (14, 4, 436, '2025-03-31 04:07:13.253197');
INSERT INTO public.games VALUES (15, 4, 599, '2025-03-31 04:07:13.355396');
INSERT INTO public.games VALUES (16, 6, 843, '2025-03-31 04:07:39.517062');
INSERT INTO public.games VALUES (17, 6, 547, '2025-03-31 04:07:39.630557');
INSERT INTO public.games VALUES (18, 7, 221, '2025-03-31 04:07:39.717926');
INSERT INTO public.games VALUES (19, 7, 888, '2025-03-31 04:07:39.871901');
INSERT INTO public.games VALUES (20, 6, 117, '2025-03-31 04:07:39.946044');
INSERT INTO public.games VALUES (21, 6, 674, '2025-03-31 04:07:40.041531');
INSERT INTO public.games VALUES (22, 6, 715, '2025-03-31 04:07:40.137224');
INSERT INTO public.games VALUES (23, 8, 468, '2025-03-31 04:10:51.987595');
INSERT INTO public.games VALUES (24, 8, 665, '2025-03-31 04:10:52.100408');
INSERT INTO public.games VALUES (25, 9, 915, '2025-03-31 04:10:52.259022');
INSERT INTO public.games VALUES (26, 9, 114, '2025-03-31 04:10:52.337994');
INSERT INTO public.games VALUES (27, 8, 356, '2025-03-31 04:10:52.425829');
INSERT INTO public.games VALUES (28, 8, 524, '2025-03-31 04:10:52.535811');
INSERT INTO public.games VALUES (29, 8, 675, '2025-03-31 04:10:52.639216');
INSERT INTO public.games VALUES (30, 12, 761, '2025-03-31 04:12:01.837452');
INSERT INTO public.games VALUES (31, 12, 61, '2025-03-31 04:12:01.924654');
INSERT INTO public.games VALUES (32, 13, 346, '2025-03-31 04:12:02.038458');
INSERT INTO public.games VALUES (33, 13, 447, '2025-03-31 04:12:02.149918');
INSERT INTO public.games VALUES (34, 12, 141, '2025-03-31 04:12:02.236102');
INSERT INTO public.games VALUES (35, 12, 21, '2025-03-31 04:12:02.32023');
INSERT INTO public.games VALUES (36, 12, 436, '2025-03-31 04:12:02.445401');
INSERT INTO public.games VALUES (37, 3, 12, '2025-03-31 04:47:07.451037');


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (1, 'user_1743393935110');
INSERT INTO public.users VALUES (2, 'user_1743393935109');
INSERT INTO public.users VALUES (3, 'adriangroening');
INSERT INTO public.users VALUES (4, 'user_1743394032648');
INSERT INTO public.users VALUES (5, 'user_1743394032647');
INSERT INTO public.users VALUES (6, 'user_1743394059363');
INSERT INTO public.users VALUES (7, 'user_1743394059362');
INSERT INTO public.users VALUES (8, 'user_1743394251858');
INSERT INTO public.users VALUES (9, 'user_1743394251857');
INSERT INTO public.users VALUES (10, 'user_1743394311356');
INSERT INTO public.users VALUES (11, 'user_1743394311355');
INSERT INTO public.users VALUES (12, 'user_1743394321647');
INSERT INTO public.users VALUES (13, 'user_1743394321646');


--
-- Name: game_results_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.game_results_id_seq', 123, true);


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 37, true);


--
-- Name: users_u_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_u_id_seq', 13, true);


--
-- Name: game_results game_results_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.game_results
    ADD CONSTRAINT game_results_pkey PRIMARY KEY (id);


--
-- Name: game_results game_results_username_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.game_results
    ADD CONSTRAINT game_results_username_key UNIQUE (username);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: users users_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_name_key UNIQUE (name);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (u_id);


--
-- Name: games games_u_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_u_id_fkey FOREIGN KEY (u_id) REFERENCES public.users(u_id);


--
-- PostgreSQL database dump complete
--

