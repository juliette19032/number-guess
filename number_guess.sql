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
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    game_id integer NOT NULL,
    number_guesses integer DEFAULT 0 NOT NULL,
    user_id integer NOT NULL
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

INSERT INTO public.games VALUES (1, 1, 4);
INSERT INTO public.games VALUES (2, 260, 5);
INSERT INTO public.games VALUES (3, 568, 5);
INSERT INTO public.games VALUES (4, 94, 6);
INSERT INTO public.games VALUES (5, 151, 6);
INSERT INTO public.games VALUES (6, 621, 5);
INSERT INTO public.games VALUES (7, 795, 5);
INSERT INTO public.games VALUES (8, 404, 5);
INSERT INTO public.games VALUES (9, 1, 4);
INSERT INTO public.games VALUES (10, 431, 7);
INSERT INTO public.games VALUES (11, 738, 7);
INSERT INTO public.games VALUES (12, 395, 8);
INSERT INTO public.games VALUES (13, 865, 8);
INSERT INTO public.games VALUES (14, 266, 7);
INSERT INTO public.games VALUES (15, 595, 7);
INSERT INTO public.games VALUES (16, 656, 7);
INSERT INTO public.games VALUES (17, 176, 9);
INSERT INTO public.games VALUES (18, 615, 9);
INSERT INTO public.games VALUES (19, 344, 10);
INSERT INTO public.games VALUES (20, 595, 10);
INSERT INTO public.games VALUES (21, 451, 9);
INSERT INTO public.games VALUES (22, 739, 9);
INSERT INTO public.games VALUES (23, 467, 9);
INSERT INTO public.games VALUES (24, 931, 11);
INSERT INTO public.games VALUES (25, 32, 11);
INSERT INTO public.games VALUES (26, 618, 12);
INSERT INTO public.games VALUES (27, 772, 12);
INSERT INTO public.games VALUES (28, 439, 11);
INSERT INTO public.games VALUES (29, 762, 11);
INSERT INTO public.games VALUES (30, 727, 11);
INSERT INTO public.games VALUES (31, 594, 13);
INSERT INTO public.games VALUES (32, 941, 13);
INSERT INTO public.games VALUES (33, 338, 14);
INSERT INTO public.games VALUES (34, 591, 14);
INSERT INTO public.games VALUES (35, 602, 13);
INSERT INTO public.games VALUES (36, 308, 13);
INSERT INTO public.games VALUES (37, 532, 13);
INSERT INTO public.games VALUES (38, 270, 15);
INSERT INTO public.games VALUES (39, 28, 15);
INSERT INTO public.games VALUES (40, 228, 16);
INSERT INTO public.games VALUES (41, 157, 16);
INSERT INTO public.games VALUES (42, 762, 15);
INSERT INTO public.games VALUES (43, 543, 15);
INSERT INTO public.games VALUES (44, 952, 15);
INSERT INTO public.games VALUES (45, 733, 17);
INSERT INTO public.games VALUES (46, 963, 17);
INSERT INTO public.games VALUES (47, 243, 18);
INSERT INTO public.games VALUES (48, 536, 18);
INSERT INTO public.games VALUES (49, 121, 17);
INSERT INTO public.games VALUES (50, 909, 17);
INSERT INTO public.games VALUES (51, 396, 17);
INSERT INTO public.games VALUES (52, 2, 1);
INSERT INTO public.games VALUES (53, 1, 1);
INSERT INTO public.games VALUES (54, 636, 19);
INSERT INTO public.games VALUES (55, 940, 19);
INSERT INTO public.games VALUES (56, 199, 20);
INSERT INTO public.games VALUES (57, 970, 20);
INSERT INTO public.games VALUES (58, 810, 19);
INSERT INTO public.games VALUES (59, 175, 19);
INSERT INTO public.games VALUES (60, 951, 19);
INSERT INTO public.games VALUES (61, 1, 1);
INSERT INTO public.games VALUES (62, 597, 21);
INSERT INTO public.games VALUES (63, 326, 21);
INSERT INTO public.games VALUES (64, 301, 22);
INSERT INTO public.games VALUES (65, 650, 22);
INSERT INTO public.games VALUES (66, 289, 21);
INSERT INTO public.games VALUES (67, 588, 21);
INSERT INTO public.games VALUES (68, 687, 21);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (1, 'Juliette');
INSERT INTO public.users VALUES (2, 'Julia');
INSERT INTO public.users VALUES (3, 'Marie');
INSERT INTO public.users VALUES (4, 'Maria');
INSERT INTO public.users VALUES (5, 'user_1728033558639');
INSERT INTO public.users VALUES (6, 'user_1728033558638');
INSERT INTO public.users VALUES (7, 'user_1728033621926');
INSERT INTO public.users VALUES (8, 'user_1728033621925');
INSERT INTO public.users VALUES (9, 'user_1728033670421');
INSERT INTO public.users VALUES (10, 'user_1728033670420');
INSERT INTO public.users VALUES (11, 'user_1728033846772');
INSERT INTO public.users VALUES (12, 'user_1728033846771');
INSERT INTO public.users VALUES (13, 'user_1728033892365');
INSERT INTO public.users VALUES (14, 'user_1728033892364');
INSERT INTO public.users VALUES (15, 'user_1728033894681');
INSERT INTO public.users VALUES (16, 'user_1728033894680');
INSERT INTO public.users VALUES (17, 'user_1728034561435');
INSERT INTO public.users VALUES (18, 'user_1728034561434');
INSERT INTO public.users VALUES (19, 'user_1728034723100');
INSERT INTO public.users VALUES (20, 'user_1728034723099');
INSERT INTO public.users VALUES (21, 'user_1728034770580');
INSERT INTO public.users VALUES (22, 'user_1728034770579');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 68, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 22, true);


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
-- Name: games fk_users_games; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT fk_users_games FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--

