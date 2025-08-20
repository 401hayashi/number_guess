--
-- PostgreSQL database dump
--

-- Dumped from database version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)
-- Dumped by pg_dump version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)

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
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    game_id integer NOT NULL,
    user_id integer,
    secret_number integer NOT NULL,
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
    user_id integer NOT NULL,
    username character varying(22) NOT NULL
);


ALTER TABLE public.users OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.users_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_user_id_seq OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users.user_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (1, 1, 595, 596, '2025-08-19 23:16:20.584743');
INSERT INTO public.games VALUES (2, 2, 544, 545, '2025-08-19 23:16:22.160733');
INSERT INTO public.games VALUES (3, 1, 188, 191, '2025-08-19 23:16:23.100276');
INSERT INTO public.games VALUES (4, 1, 898, 899, '2025-08-19 23:16:23.966889');
INSERT INTO public.games VALUES (5, 1, 911, 912, '2025-08-19 23:16:24.909396');
INSERT INTO public.games VALUES (6, 3, 727, 728, '2025-08-19 23:17:28.323018');
INSERT INTO public.games VALUES (7, 4, 190, 191, '2025-08-19 23:17:28.992052');
INSERT INTO public.games VALUES (8, 3, 61, 64, '2025-08-19 23:17:29.347066');
INSERT INTO public.games VALUES (9, 3, 550, 551, '2025-08-19 23:17:29.793246');
INSERT INTO public.games VALUES (10, 3, 862, 863, '2025-08-19 23:17:30.846766');
INSERT INTO public.games VALUES (11, 5, 898, 899, '2025-08-19 23:20:24.723375');
INSERT INTO public.games VALUES (12, 6, 49, 50, '2025-08-19 23:20:25.336644');
INSERT INTO public.games VALUES (13, 5, 541, 544, '2025-08-19 23:20:25.770062');
INSERT INTO public.games VALUES (14, 5, 725, 726, '2025-08-19 23:20:26.154357');
INSERT INTO public.games VALUES (15, 5, 720, 721, '2025-08-19 23:20:26.583013');
INSERT INTO public.games VALUES (16, 8, 257, 258, '2025-08-19 23:23:11.59991');
INSERT INTO public.games VALUES (17, 9, 446, 447, '2025-08-19 23:23:12.794464');
INSERT INTO public.games VALUES (18, 8, 310, 313, '2025-08-19 23:23:13.481823');
INSERT INTO public.games VALUES (19, 8, 970, 971, '2025-08-19 23:23:14.184644');
INSERT INTO public.games VALUES (20, 8, 897, 898, '2025-08-19 23:23:14.787118');
INSERT INTO public.games VALUES (21, 10, 836, 12, '2025-08-19 23:25:44.103748');
INSERT INTO public.games VALUES (22, 11, 275, 276, '2025-08-19 23:25:48.542646');
INSERT INTO public.games VALUES (23, 11, 249, 250, '2025-08-19 23:25:48.884583');
INSERT INTO public.games VALUES (24, 12, 442, 443, '2025-08-19 23:25:49.202723');
INSERT INTO public.games VALUES (25, 12, 20, 21, '2025-08-19 23:25:49.552272');
INSERT INTO public.games VALUES (26, 11, 917, 920, '2025-08-19 23:25:49.985387');
INSERT INTO public.games VALUES (27, 11, 342, 343, '2025-08-19 23:25:50.303873');
INSERT INTO public.games VALUES (28, 11, 362, 363, '2025-08-19 23:25:50.660772');
INSERT INTO public.games VALUES (29, 13, 824, 825, '2025-08-19 23:27:09.901112');
INSERT INTO public.games VALUES (30, 13, 500, 501, '2025-08-19 23:27:10.406002');
INSERT INTO public.games VALUES (31, 14, 890, 891, '2025-08-19 23:27:10.885576');
INSERT INTO public.games VALUES (32, 14, 338, 339, '2025-08-19 23:27:11.291842');
INSERT INTO public.games VALUES (33, 13, 189, 192, '2025-08-19 23:27:11.725154');
INSERT INTO public.games VALUES (34, 13, 215, 216, '2025-08-19 23:27:12.326439');
INSERT INTO public.games VALUES (35, 13, 944, 945, '2025-08-19 23:27:12.834881');
INSERT INTO public.games VALUES (36, 15, 395, 396, '2025-08-19 23:28:17.440352');
INSERT INTO public.games VALUES (37, 15, 619, 620, '2025-08-19 23:28:17.867098');
INSERT INTO public.games VALUES (38, 16, 682, 683, '2025-08-19 23:28:18.448802');
INSERT INTO public.games VALUES (39, 16, 987, 988, '2025-08-19 23:28:18.918551');
INSERT INTO public.games VALUES (40, 15, 439, 442, '2025-08-19 23:28:19.279321');
INSERT INTO public.games VALUES (41, 15, 672, 673, '2025-08-19 23:28:19.669705');
INSERT INTO public.games VALUES (42, 15, 661, 662, '2025-08-19 23:28:20.066058');
INSERT INTO public.games VALUES (43, 17, 266, 267, '2025-08-19 23:28:57.037311');
INSERT INTO public.games VALUES (44, 17, 449, 450, '2025-08-19 23:28:57.488028');
INSERT INTO public.games VALUES (45, 18, 701, 702, '2025-08-19 23:28:57.80782');
INSERT INTO public.games VALUES (46, 18, 920, 921, '2025-08-19 23:28:58.207628');
INSERT INTO public.games VALUES (47, 17, 833, 836, '2025-08-19 23:28:58.65006');
INSERT INTO public.games VALUES (48, 17, 480, 481, '2025-08-19 23:28:59.053857');
INSERT INTO public.games VALUES (49, 17, 915, 916, '2025-08-19 23:28:59.421613');


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (1, 'user_1755659779008');
INSERT INTO public.users VALUES (2, 'user_1755659779007');
INSERT INTO public.users VALUES (3, 'user_1755659847626');
INSERT INTO public.users VALUES (4, 'user_1755659847625');
INSERT INTO public.users VALUES (5, 'user_1755660024008');
INSERT INTO public.users VALUES (6, 'user_1755660024007');
INSERT INTO public.users VALUES (7, 'osguerra');
INSERT INTO public.users VALUES (8, 'user_1755660190489');
INSERT INTO public.users VALUES (9, 'user_1755660190488');
INSERT INTO public.users VALUES (10, 'dante');
INSERT INTO public.users VALUES (11, 'user_1755660348243');
INSERT INTO public.users VALUES (12, 'user_1755660348242');
INSERT INTO public.users VALUES (13, 'user_1755660429348');
INSERT INTO public.users VALUES (14, 'user_1755660429347');
INSERT INTO public.users VALUES (15, 'user_1755660496919');
INSERT INTO public.users VALUES (16, 'user_1755660496918');
INSERT INTO public.users VALUES (17, 'user_1755660536733');
INSERT INTO public.users VALUES (18, 'user_1755660536732');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 49, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 18, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- Name: users users_username_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key UNIQUE (username);


--
-- Name: games games_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--

