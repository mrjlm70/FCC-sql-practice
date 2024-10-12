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
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description text,
    has_life boolean,
    age_in_million_years numeric(6,2),
    distance integer
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30) NOT NULL,
    planet_id integer,
    description text,
    has_life boolean,
    age_in_million_years numeric(6,2)
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30) NOT NULL,
    star_id integer,
    description text,
    has_life boolean,
    age_in_million_years numeric(6,2),
    distance integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30) NOT NULL,
    galaxy_id integer,
    description text,
    has_life boolean,
    age_in_million_years numeric(6,2)
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_id_seq OWNER TO freecodecamp;

--
-- Name: star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_id_seq OWNED BY public.star.star_id;


--
-- Name: universe; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.universe (
    universe_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description text
);


ALTER TABLE public.universe OWNER TO freecodecamp;

--
-- Name: universe_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.universe_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.universe_id_seq OWNER TO freecodecamp;

--
-- Name: universe_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.universe_id_seq OWNED BY public.universe.universe_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_id_seq'::regclass);


--
-- Name: universe universe_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.universe ALTER COLUMN universe_id SET DEFAULT nextval('public.universe_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'pp', 'hiiii', true, 33.10, NULL);
INSERT INTO public.galaxy VALUES (2, 'vs', 'hiiii', true, 33.10, NULL);
INSERT INTO public.galaxy VALUES (3, 'kk', 'hiiii', true, 33.10, NULL);
INSERT INTO public.galaxy VALUES (4, 'mysql', 'hiiii', true, 33.10, NULL);
INSERT INTO public.galaxy VALUES (6, 'Mario', 'Mushroom Kingdom', true, 3.10, NULL);
INSERT INTO public.galaxy VALUES (7, 'Luigi', 'Mushroom Kingdom', true, 3.10, NULL);
INSERT INTO public.galaxy VALUES (8, 'Peach', 'Mushroom Kingdom', true, 3.10, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (3, 'ali', 3, 'hiiii', true, 33.10);
INSERT INTO public.moon VALUES (2, 'asqar', 3, 'hiiii', true, 33.10);
INSERT INTO public.moon VALUES (1, 'iman', 3, 'hiiii', true, 33.10);
INSERT INTO public.moon VALUES (55, 'Mario', 2, 'Mushroom Kingdom', true, 3.10);
INSERT INTO public.moon VALUES (56, 'Luigi', 3, 'Mushroom Kingdom', true, 3.10);
INSERT INTO public.moon VALUES (57, 'Luii', 3, 'Mushroom Kingdom', true, 3.10);
INSERT INTO public.moon VALUES (58, 'igi', 2, 'Mushroom Kingdom', true, 3.10);
INSERT INTO public.moon VALUES (59, 'Li', 3, 'Mushroom Kingdom', true, 3.10);
INSERT INTO public.moon VALUES (60, 'Luig2i', 3, 'Mushroom Kingdom', true, 3.10);
INSERT INTO public.moon VALUES (61, 'Luigi4', 2, 'Mushroom Kingdom', true, 3.10);
INSERT INTO public.moon VALUES (62, 'Lui99gi', 2, 'Mushroom Kingdom', true, 3.10);
INSERT INTO public.moon VALUES (63, 'Peach1', 3, 'Mushroom Kingdom', true, 3.10);
INSERT INTO public.moon VALUES (64, 'Peach2', 2, 'Mushroom Kingdom', true, 3.10);
INSERT INTO public.moon VALUES (65, 'Peac3h', 2, 'Mushroom Kingdom', true, 3.10);
INSERT INTO public.moon VALUES (66, 'Peac4h', 3, 'Mushroom Kingdom', true, 3.10);
INSERT INTO public.moon VALUES (67, 'Peac5h', 2, 'Mushroom Kingdom', true, 3.10);
INSERT INTO public.moon VALUES (68, 'Pea6ch', 2, 'Mushroom Kingdom', true, 3.10);
INSERT INTO public.moon VALUES (69, 'Peac7h', 2, 'Mushroom Kingdom', true, 3.10);
INSERT INTO public.moon VALUES (70, 'Peac8h', 2, 'Mushroom Kingdom', true, 3.10);
INSERT INTO public.moon VALUES (71, 'Peach', 2, 'Mushroom Kingdom', true, 3.10);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'abol', 3, 'hiiii', true, 33.10, NULL);
INSERT INTO public.planet VALUES (2, 'ss', 3, 'hiiii', true, 33.10, NULL);
INSERT INTO public.planet VALUES (3, 'pp', 3, 'hiiii', true, 33.10, NULL);
INSERT INTO public.planet VALUES (13, 'Mario', 7, 'Mushroom Kingdom', true, 3.10, NULL);
INSERT INTO public.planet VALUES (14, 'Luigi', 7, 'Mushroom Kingdom', true, 3.10, NULL);
INSERT INTO public.planet VALUES (15, 'Luii', 7, 'Mushroom Kingdom', true, 3.10, NULL);
INSERT INTO public.planet VALUES (16, 'igi', 7, 'Mushroom Kingdom', true, 3.10, NULL);
INSERT INTO public.planet VALUES (17, 'Li', 7, 'Mushroom Kingdom', true, 3.10, NULL);
INSERT INTO public.planet VALUES (18, 'Luig2i', 7, 'Mushroom Kingdom', true, 3.10, NULL);
INSERT INTO public.planet VALUES (19, 'Luigi4', 7, 'Mushroom Kingdom', true, 3.10, NULL);
INSERT INTO public.planet VALUES (20, 'Lui99gi', 7, 'Mushroom Kingdom', true, 3.10, NULL);
INSERT INTO public.planet VALUES (21, 'Peach', 6, 'Mushroom Kingdom', true, 3.10, NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (2, 'ali', 2, 'hiiii', true, 33.10);
INSERT INTO public.star VALUES (3, 'hadi', 1, 'hiiii', true, 33.10);
INSERT INTO public.star VALUES (4, 'abol', 3, 'hiiii', true, 33.10);
INSERT INTO public.star VALUES (5, 'Mario', 8, 'Mushroom Kingdom', true, 3.10);
INSERT INTO public.star VALUES (6, 'Luigi', 7, 'Mushroom Kingdom', true, 3.10);
INSERT INTO public.star VALUES (7, 'Peach', 6, 'Mushroom Kingdom', true, 3.10);


--
-- Data for Name: universe; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.universe VALUES (1, 'mysql', 'hiiii');
INSERT INTO public.universe VALUES (2, 'qoli', 'hiiii');
INSERT INTO public.universe VALUES (3, 'qsaqar', 'hiiii');


--
-- Name: galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_id_seq', 9, true);


--
-- Name: moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_id_seq', 71, true);


--
-- Name: planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_id_seq', 21, true);


--
-- Name: star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_id_seq', 7, true);


--
-- Name: universe_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.universe_id_seq', 3, true);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_galaxy_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_key UNIQUE (galaxy_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: galaxy unique_galaxy_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT unique_galaxy_name UNIQUE (name);


--
-- Name: moon unique_moon_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT unique_moon_name UNIQUE (name);


--
-- Name: universe unique_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.universe
    ADD CONSTRAINT unique_name UNIQUE (name);


--
-- Name: planet unique_planet_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT unique_planet_name UNIQUE (name);


--
-- Name: star unique_star_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT unique_star_name UNIQUE (name);


--
-- Name: universe universe_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.universe
    ADD CONSTRAINT universe_pkey PRIMARY KEY (universe_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


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