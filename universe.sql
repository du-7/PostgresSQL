--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

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
    name character varying(20) NOT NULL,
    weight integer,
    height integer NOT NULL,
    price numeric(4,2),
    texto text,
    vf boolean,
    fv boolean
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
    moon_id integer NOT NULL,
    name character varying(20) NOT NULL,
    weight integer,
    height integer NOT NULL,
    price numeric(4,2),
    texto text,
    vf boolean,
    fv boolean,
    planet_id integer
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
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(20) NOT NULL,
    weight integer,
    height integer NOT NULL,
    price numeric(4,2),
    texto text,
    vf boolean,
    fv boolean,
    star_id integer
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
    star_id integer NOT NULL,
    name character varying(20) NOT NULL,
    weight integer,
    height integer NOT NULL,
    price numeric(4,2),
    texto text,
    vf boolean,
    fv boolean,
    galaxy_id integer
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
-- Name: trial; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.trial (
    trial_id integer NOT NULL,
    name character varying(20) NOT NULL,
    height integer NOT NULL
);


ALTER TABLE public.trial OWNER TO freecodecamp;

--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


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

INSERT INTO public.galaxy VALUES (1, 'galaxia', 10, 10, 10.10, 'galaxia', true, true);
INSERT INTO public.galaxy VALUES (2, 'galaxia1', 11, 11, 11.11, 'galaxia1', true, true);
INSERT INTO public.galaxy VALUES (3, 'galaxia2', 12, 12, 12.11, 'galaxia2', true, true);
INSERT INTO public.galaxy VALUES (4, 'galaxia3', 13, 13, 13.11, 'galaxia3', true, true);
INSERT INTO public.galaxy VALUES (5, 'galaxia4', 14, 14, 14.11, 'galaxia4', true, true);
INSERT INTO public.galaxy VALUES (6, 'galaxia5', 15, 15, 15.11, 'galaxia5', true, true);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'moon1', 10, 10, 10.10, 'moon1', true, true, 1);
INSERT INTO public.moon VALUES (2, 'moon2', 10, 10, 10.10, 'moon1', true, true, 2);
INSERT INTO public.moon VALUES (3, 'moon3', 10, 10, 10.10, 'moon1', true, true, 3);
INSERT INTO public.moon VALUES (4, 'moon4', 10, 10, 10.10, 'moon1', true, true, 4);
INSERT INTO public.moon VALUES (5, 'moon5', 10, 10, 10.10, 'moon1', true, true, 5);
INSERT INTO public.moon VALUES (6, 'moon6', 10, 10, 10.10, 'moon1', true, true, 6);
INSERT INTO public.moon VALUES (7, 'moon7', 10, 10, 10.10, 'moon1', true, true, 7);
INSERT INTO public.moon VALUES (8, 'moon8', 10, 10, 10.10, 'moon1', true, true, 8);
INSERT INTO public.moon VALUES (9, 'moon9', 10, 10, 10.10, 'moon1', true, true, 9);
INSERT INTO public.moon VALUES (10, 'moon10', 10, 10, 10.10, 'moon1', true, true, 10);
INSERT INTO public.moon VALUES (11, 'moon11', 10, 10, 10.10, 'moon1', true, true, 11);
INSERT INTO public.moon VALUES (12, 'moon12', 10, 10, 10.10, 'moon1', true, true, 12);
INSERT INTO public.moon VALUES (13, 'moon13', 10, 10, 10.10, 'moon1', true, true, 12);
INSERT INTO public.moon VALUES (14, 'moon14', 10, 10, 10.10, 'moon1', true, true, 12);
INSERT INTO public.moon VALUES (15, 'moon15', 10, 10, 10.10, 'moon1', true, true, 12);
INSERT INTO public.moon VALUES (16, 'moon16', 10, 10, 10.10, 'moon1', true, true, 12);
INSERT INTO public.moon VALUES (17, 'moon17', 10, 10, 10.10, 'moon1', true, true, 12);
INSERT INTO public.moon VALUES (18, 'moon18', 10, 10, 10.10, 'moon1', true, true, 12);
INSERT INTO public.moon VALUES (19, 'moon19', 10, 10, 10.10, 'moon1', true, true, 12);
INSERT INTO public.moon VALUES (20, 'moon20', 10, 10, 10.10, 'moon1', true, true, 12);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'planet1', 11, 11, 11.10, 'planet1', true, true, 1);
INSERT INTO public.planet VALUES (2, 'planet2', 12, 12, 12.10, 'planet2', true, true, 2);
INSERT INTO public.planet VALUES (3, 'planet3', 13, 13, 13.10, 'planet3', true, true, 3);
INSERT INTO public.planet VALUES (4, 'planet4', 14, 14, 14.10, 'planet4', true, true, 4);
INSERT INTO public.planet VALUES (5, 'planet5', 15, 15, 15.10, 'planet5', true, true, 5);
INSERT INTO public.planet VALUES (6, 'planet6', 16, 16, 16.10, 'planet6', true, true, 6);
INSERT INTO public.planet VALUES (7, 'planet7', 16, 16, 16.10, 'planet6', true, true, 6);
INSERT INTO public.planet VALUES (8, 'planet8', 16, 16, 16.10, 'planet6', true, true, 6);
INSERT INTO public.planet VALUES (9, 'planet9', 16, 16, 16.10, 'planet6', true, true, 6);
INSERT INTO public.planet VALUES (10, 'planet10', 16, 16, 16.10, 'planet6', true, true, 6);
INSERT INTO public.planet VALUES (11, 'planet11', 16, 16, 16.10, 'planet6', true, true, 6);
INSERT INTO public.planet VALUES (12, 'planet12', 16, 16, 16.10, 'planet6', true, true, 6);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (2, 'star2', 11, 11, 11.10, 'star2', true, true, 2);
INSERT INTO public.star VALUES (3, 'star3', 13, 13, 13.10, 'star3', true, true, 3);
INSERT INTO public.star VALUES (4, 'star4', 14, 14, 14.10, 'star4', true, true, 4);
INSERT INTO public.star VALUES (5, 'star5', 15, 15, 14.10, 'star5', true, true, 5);
INSERT INTO public.star VALUES (6, 'star6', 16, 16, 16.10, 'star6', true, true, 6);
INSERT INTO public.star VALUES (1, 'star1', 10, 10, 10.10, 'star1', true, true, 1);


--
-- Data for Name: trial; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.trial VALUES (1, 'nome1', 10);
INSERT INTO public.trial VALUES (2, 'nome2', 20);
INSERT INTO public.trial VALUES (3, 'nome3', 230);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: galaxy galaxy_name_height_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_height_key UNIQUE (name, height);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_name_height_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_height_key UNIQUE (name, height);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_name_height_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_height_key UNIQUE (name, height);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_name_height_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_height_key UNIQUE (name, height);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: trial trial_height_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.trial
    ADD CONSTRAINT trial_height_key UNIQUE (height);


--
-- Name: trial trial_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.trial
    ADD CONSTRAINT trial_name_key UNIQUE (name);


--
-- Name: trial trial_pk; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.trial
    ADD CONSTRAINT trial_pk PRIMARY KEY (trial_id);


--
-- Name: star fk_galaxy_star; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_galaxy_star FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: moon fk_planet_moon; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_planet_moon FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet fk_star_planet; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_star_planet FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- PostgreSQL database dump complete
--

