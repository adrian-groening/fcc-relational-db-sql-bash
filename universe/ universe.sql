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

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

\connect universe

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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    name character varying(50),
    galaxy_id integer NOT NULL,
    description text,
    has_life boolean,
    distance_from_earth numeric(4,1),
    rand integer NOT NULL
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    name character varying(50),
    moon_id integer NOT NULL,
    description text,
    distance_from_earth integer,
    has_life boolean,
    age_in_in_millions_of_years numeric(4,1),
    planet_id integer NOT NULL
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: moon_planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon_planet (
    moon_planet_id integer NOT NULL,
    moon_id integer NOT NULL,
    planet_id integer NOT NULL,
    name character varying(50)
);


ALTER TABLE public.moon_planet OWNER TO freecodecamp;

--
-- Name: moon_planet_moon_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_planet_moon_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_planet_moon_planet_id_seq OWNER TO freecodecamp;

--
-- Name: moon_planet_moon_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_planet_moon_planet_id_seq OWNED BY public.moon_planet.moon_planet_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    name character varying(50),
    planet_id integer NOT NULL,
    has_life boolean,
    distance_from_earth integer,
    description text,
    star_id integer NOT NULL
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    name character varying(50),
    star_id integer NOT NULL,
    age_in_in_millions_of_years numeric(4,1),
    has_life boolean,
    distance_from_earth integer,
    description text,
    galaxy_id integer NOT NULL
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: moon_planet moon_planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon_planet ALTER COLUMN moon_planet_id SET DEFAULT nextval('public.moon_planet_moon_planet_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES ('Milky Way', 1, 'Mily and nice', true, 44.0, 3);
INSERT INTO public.galaxy VALUES ('Adromeda', 2, 'We dont know', false, 345.0, 344);
INSERT INTO public.galaxy VALUES ('Adromeda', 3, 'We dont know', false, 345.0, 344);
INSERT INTO public.galaxy VALUES ('Adromeda', 4, 'We dont know', false, 345.0, 344);
INSERT INTO public.galaxy VALUES ('Adromeda', 5, 'We dont know', false, 345.0, 344);
INSERT INTO public.galaxy VALUES ('Adromeda', 6, 'We dont know', false, 345.0, 344);
INSERT INTO public.galaxy VALUES ('Adromeda', 7, 'We dont know', false, 345.0, 344);
INSERT INTO public.galaxy VALUES ('Adromeda', 8, 'We dont know', false, 345.0, 344);
INSERT INTO public.galaxy VALUES ('Adromeda', 9, 'We dont know', false, 345.0, 344);
INSERT INTO public.galaxy VALUES ('Adromeda', 10, 'We dont know', false, 345.0, 344);
INSERT INTO public.galaxy VALUES ('Adromeda', 11, 'We dont know', false, 345.0, 344);
INSERT INTO public.galaxy VALUES ('Adromeda', 12, 'We dont know', false, 345.0, 344);
INSERT INTO public.galaxy VALUES ('Adromeda', 13, 'We dont know', false, 345.0, 344);
INSERT INTO public.galaxy VALUES ('Adromeda', 14, 'We dont know', false, 345.0, 344);
INSERT INTO public.galaxy VALUES ('Adromeda', 15, 'We dont know', false, 345.0, 344);
INSERT INTO public.galaxy VALUES ('Adromeda', 16, 'We dont know', false, 345.0, 344);
INSERT INTO public.galaxy VALUES ('Adromeda', 17, 'We dont know', false, 345.0, 344);
INSERT INTO public.galaxy VALUES ('Adromeda', 18, 'We dont know', false, 345.0, 344);
INSERT INTO public.galaxy VALUES ('Adromeda', 19, 'We dont know', false, 345.0, 344);
INSERT INTO public.galaxy VALUES ('Adromeda', 20, 'We dont know', false, 345.0, 344);
INSERT INTO public.galaxy VALUES ('Adromeda', 21, 'We dont know', false, 345.0, 344);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES ('name', 1, 'fsdfs', 5, true, 4.0, 1);
INSERT INTO public.moon VALUES ('name', 2, 'fsdfs', 5, true, 4.0, 1);
INSERT INTO public.moon VALUES ('name', 3, 'fsdfs', 5, true, 4.0, 1);
INSERT INTO public.moon VALUES ('name', 4, 'fsdfs', 5, true, 4.0, 1);
INSERT INTO public.moon VALUES ('name', 5, 'fsdfs', 5, true, 4.0, 1);
INSERT INTO public.moon VALUES ('name', 6, 'fsdfs', 5, true, 4.0, 1);
INSERT INTO public.moon VALUES ('name', 7, 'fsdfs', 5, true, 4.0, 1);
INSERT INTO public.moon VALUES ('name', 8, 'fsdfs', 5, true, 4.0, 1);
INSERT INTO public.moon VALUES ('name', 9, 'fsdfs', 5, true, 4.0, 1);
INSERT INTO public.moon VALUES ('name', 10, 'fsdfs', 5, true, 4.0, 1);
INSERT INTO public.moon VALUES ('name', 11, 'fsdfs', 5, true, 4.0, 1);
INSERT INTO public.moon VALUES ('name', 12, 'fsdfs', 5, true, 4.0, 1);
INSERT INTO public.moon VALUES ('name', 13, 'fsdfs', 5, true, 4.0, 1);
INSERT INTO public.moon VALUES ('name', 14, 'fsdfs', 5, true, 4.0, 1);
INSERT INTO public.moon VALUES ('name', 15, 'fsdfs', 5, true, 4.0, 1);
INSERT INTO public.moon VALUES ('name', 16, 'fsdfs', 5, true, 4.0, 1);
INSERT INTO public.moon VALUES ('name', 17, 'fsdfs', 5, true, 4.0, 1);
INSERT INTO public.moon VALUES ('name', 18, 'fsdfs', 5, true, 4.0, 1);
INSERT INTO public.moon VALUES ('name', 19, 'fsdfs', 5, true, 4.0, 1);
INSERT INTO public.moon VALUES ('name', 20, 'fsdfs', 5, true, 4.0, 1);
INSERT INTO public.moon VALUES ('name', 21, 'fsdfs', 5, true, 4.0, 1);
INSERT INTO public.moon VALUES ('name', 22, 'fsdfs', 5, true, 4.0, 1);
INSERT INTO public.moon VALUES ('name', 23, 'fsdfs', 5, true, 4.0, 1);
INSERT INTO public.moon VALUES ('name', 24, 'fsdfs', 5, true, 4.0, 1);
INSERT INTO public.moon VALUES ('name', 25, 'fsdfs', 5, true, 4.0, 1);
INSERT INTO public.moon VALUES ('name', 26, 'fsdfs', 5, true, 4.0, 1);
INSERT INTO public.moon VALUES ('name', 27, 'fsdfs', 5, true, 4.0, 1);
INSERT INTO public.moon VALUES ('name', 28, 'fsdfs', 5, true, 4.0, 1);
INSERT INTO public.moon VALUES ('name', 29, 'fsdfs', 5, true, 4.0, 1);
INSERT INTO public.moon VALUES ('name', 30, 'fsdfs', 5, true, 4.0, 1);
INSERT INTO public.moon VALUES ('name', 31, 'fsdfs', 5, true, 4.0, 1);
INSERT INTO public.moon VALUES ('name', 32, 'fsdfs', 5, true, 4.0, 1);
INSERT INTO public.moon VALUES ('name', 33, 'fsdfs', 5, true, 4.0, 1);
INSERT INTO public.moon VALUES ('name', 34, 'fsdfs', 5, true, 4.0, 1);
INSERT INTO public.moon VALUES ('name', 35, 'fsdfs', 5, true, 4.0, 1);


--
-- Data for Name: moon_planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon_planet VALUES (1, 1, 1, 'random');
INSERT INTO public.moon_planet VALUES (2, 2, 1, 'random');
INSERT INTO public.moon_planet VALUES (3, 3, 1, 'random');


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES ('noname', 1, true, 543, 'sdfsdf', 1);
INSERT INTO public.planet VALUES ('noname', 2, true, 543, 'sdfsdf', 1);
INSERT INTO public.planet VALUES ('noname', 3, true, 543, 'sdfsdf', 1);
INSERT INTO public.planet VALUES ('noname', 4, true, 543, 'sdfsdf', 1);
INSERT INTO public.planet VALUES ('noname', 5, true, 543, 'sdfsdf', 1);
INSERT INTO public.planet VALUES ('noname', 6, true, 543, 'sdfsdf', 1);
INSERT INTO public.planet VALUES ('noname', 7, true, 543, 'sdfsdf', 1);
INSERT INTO public.planet VALUES ('noname', 8, true, 543, 'sdfsdf', 1);
INSERT INTO public.planet VALUES ('noname', 9, true, 543, 'sdfsdf', 1);
INSERT INTO public.planet VALUES ('noname', 10, true, 543, 'sdfsdf', 1);
INSERT INTO public.planet VALUES ('noname', 11, true, 543, 'sdfsdf', 1);
INSERT INTO public.planet VALUES ('noname', 12, true, 543, 'sdfsdf', 1);
INSERT INTO public.planet VALUES ('noname', 13, true, 543, 'sdfsdf', 1);
INSERT INTO public.planet VALUES ('noname', 14, true, 543, 'sdfsdf', 1);
INSERT INTO public.planet VALUES ('noname', 15, true, 543, 'sdfsdf', 1);
INSERT INTO public.planet VALUES ('noname', 16, true, 543, 'sdfsdf', 1);
INSERT INTO public.planet VALUES ('noname', 17, true, 543, 'sdfsdf', 1);
INSERT INTO public.planet VALUES ('noname', 18, true, 543, 'sdfsdf', 1);
INSERT INTO public.planet VALUES ('noname', 19, true, 543, 'sdfsdf', 1);
INSERT INTO public.planet VALUES ('noname', 20, true, 543, 'sdfsdf', 1);
INSERT INTO public.planet VALUES ('noname', 21, true, 543, 'sdfsdf', 1);
INSERT INTO public.planet VALUES ('noname', 22, true, 543, 'sdfsdf', 1);
INSERT INTO public.planet VALUES ('noname', 23, true, 543, 'sdfsdf', 1);
INSERT INTO public.planet VALUES ('noname', 24, true, 543, 'sdfsdf', 1);
INSERT INTO public.planet VALUES ('noname', 25, true, 543, 'sdfsdf', 1);
INSERT INTO public.planet VALUES ('noname', 26, true, 543, 'sdfsdf', 1);
INSERT INTO public.planet VALUES ('noname', 27, true, 543, 'sdfsdf', 1);
INSERT INTO public.planet VALUES ('noname', 28, true, 543, 'sdfsdf', 1);
INSERT INTO public.planet VALUES ('noname', 29, true, 543, 'sdfsdf', 1);
INSERT INTO public.planet VALUES ('noname', 30, true, 543, 'sdfsdf', 1);
INSERT INTO public.planet VALUES ('noname', 31, true, 543, 'sdfsdf', 1);
INSERT INTO public.planet VALUES ('noname', 32, true, 543, 'sdfsdf', 1);
INSERT INTO public.planet VALUES ('noname', 33, true, 543, 'sdfsdf', 1);
INSERT INTO public.planet VALUES ('noname', 34, true, 543, 'sdfsdf', 1);
INSERT INTO public.planet VALUES ('noname', 35, true, 543, 'sdfsdf', 1);
INSERT INTO public.planet VALUES ('noname', 36, true, 543, 'sdfsdf', 1);
INSERT INTO public.planet VALUES ('noname', 37, true, 543, 'sdfsdf', 1);
INSERT INTO public.planet VALUES ('noname', 38, true, 543, 'sdfsdf', 1);
INSERT INTO public.planet VALUES ('noname', 39, true, 543, 'sdfsdf', 1);
INSERT INTO public.planet VALUES ('noname', 40, true, 543, 'sdfsdf', 1);
INSERT INTO public.planet VALUES ('noname', 41, true, 543, 'sdfsdf', 1);
INSERT INTO public.planet VALUES ('noname', 42, true, 543, 'sdfsdf', 1);
INSERT INTO public.planet VALUES ('noname', 43, true, 543, 'sdfsdf', 1);
INSERT INTO public.planet VALUES ('noname', 44, true, 543, 'sdfsdf', 1);
INSERT INTO public.planet VALUES ('noname', 45, true, 543, 'sdfsdf', 1);
INSERT INTO public.planet VALUES ('noname', 46, true, 543, 'sdfsdf', 1);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES ('dasd', 1, 3.0, false, 432, 'sdsfs', 1);
INSERT INTO public.star VALUES ('dasd', 2, 3.0, false, 432, 'sdsfs', 1);
INSERT INTO public.star VALUES ('dasd', 3, 3.0, false, 432, 'sdsfs', 1);
INSERT INTO public.star VALUES ('dasd', 4, 3.0, false, 432, 'sdsfs', 1);
INSERT INTO public.star VALUES ('dasd', 5, 3.0, false, 432, 'sdsfs', 1);
INSERT INTO public.star VALUES ('dasd', 6, 3.0, false, 432, 'sdsfs', 1);
INSERT INTO public.star VALUES ('dasd', 7, 3.0, false, 432, 'sdsfs', 1);
INSERT INTO public.star VALUES ('dasd', 8, 3.0, false, 432, 'sdsfs', 1);
INSERT INTO public.star VALUES ('dasd', 9, 3.0, false, 432, 'sdsfs', 1);
INSERT INTO public.star VALUES ('dasd', 10, 3.0, false, 432, 'sdsfs', 1);
INSERT INTO public.star VALUES ('dasd', 11, 3.0, false, 432, 'sdsfs', 1);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 21, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 35, true);


--
-- Name: moon_planet_moon_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_planet_moon_planet_id_seq', 3, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 46, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 11, true);


--
-- Name: galaxy galaxy_galaxy_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_galaxy_id_key UNIQUE (galaxy_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_moon_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_moon_id_key UNIQUE (moon_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: moon_planet moon_planet_moon_planet_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon_planet
    ADD CONSTRAINT moon_planet_moon_planet_id_key UNIQUE (moon_planet_id);


--
-- Name: moon_planet moon_planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon_planet
    ADD CONSTRAINT moon_planet_pkey PRIMARY KEY (moon_planet_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: planet planet_planet_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_planet_id_key UNIQUE (planet_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_star_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_star_id_key UNIQUE (star_id);


--
-- Name: moon moon_planet_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: moon_planet moon_planet_moon_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon_planet
    ADD CONSTRAINT moon_planet_moon_id_fkey FOREIGN KEY (moon_id) REFERENCES public.moon(moon_id);


--
-- Name: moon_planet moon_planet_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon_planet
    ADD CONSTRAINT moon_planet_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

