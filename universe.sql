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
-- Name: meteor; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.meteor (
    meteor_id integer NOT NULL,
    name character varying(30) NOT NULL,
    size integer,
    weight numeric(4,1),
    color_code integer,
    danger boolean,
    color text,
    fast boolean
);


ALTER TABLE public.meteor OWNER TO freecodecamp;

--
-- Name: dust_id_key_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.dust_id_key_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.dust_id_key_seq OWNER TO freecodecamp;

--
-- Name: dust_id_key_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.dust_id_key_seq OWNED BY public.meteor.meteor_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30),
    create_year integer NOT NULL,
    create_month integer,
    create_day integer
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_id_key_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_id_key_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_id_key_seq OWNER TO freecodecamp;

--
-- Name: galaxy_id_key_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_id_key_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30),
    planet_id integer NOT NULL,
    create_year integer,
    create_month integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_id_key_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_id_key_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_id_key_seq OWNER TO freecodecamp;

--
-- Name: moon_id_key_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_id_key_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30),
    star_id integer NOT NULL,
    create_year integer,
    create_month integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_id_key_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_id_key_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_id_key_seq OWNER TO freecodecamp;

--
-- Name: planet_id_key_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_id_key_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30),
    galaxy_id integer NOT NULL,
    create_year integer,
    create_month integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_id_key_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_id_key_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_id_key_seq OWNER TO freecodecamp;

--
-- Name: star_id_key_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_id_key_seq OWNED BY public.star.star_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_id_key_seq'::regclass);


--
-- Name: meteor meteor_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.meteor ALTER COLUMN meteor_id SET DEFAULT nextval('public.dust_id_key_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_id_key_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_id_key_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_id_key_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, '1', 1, 1, 1);
INSERT INTO public.galaxy VALUES (2, '2', 2, 2, 2);
INSERT INTO public.galaxy VALUES (3, '3', 3, 3, 3);
INSERT INTO public.galaxy VALUES (4, '4', 4, 4, 4);
INSERT INTO public.galaxy VALUES (5, '5', 5, 5, 5);
INSERT INTO public.galaxy VALUES (6, '6', 6, 6, 6);
INSERT INTO public.galaxy VALUES (7, '7', 7, 7, 7);
INSERT INTO public.galaxy VALUES (8, '8', 8, 8, 8);
INSERT INTO public.galaxy VALUES (9, '9', 9, 9, 9);
INSERT INTO public.galaxy VALUES (10, '10', 10, 10, 10);
INSERT INTO public.galaxy VALUES (11, '11', 11, 11, 11);
INSERT INTO public.galaxy VALUES (12, '12', 12, 12, 12);
INSERT INTO public.galaxy VALUES (13, '13', 13, 13, 13);
INSERT INTO public.galaxy VALUES (14, '14', 14, 14, 14);
INSERT INTO public.galaxy VALUES (15, '15', 15, 15, 15);
INSERT INTO public.galaxy VALUES (16, '16', 16, 16, 16);
INSERT INTO public.galaxy VALUES (17, '17', 17, 17, 17);
INSERT INTO public.galaxy VALUES (18, '18', 18, 18, 18);
INSERT INTO public.galaxy VALUES (19, '19', 19, 19, 19);
INSERT INTO public.galaxy VALUES (20, '20', 20, 20, 20);


--
-- Data for Name: meteor; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.meteor VALUES (1, '1', 1, 1.0, 1, true, '1', true);
INSERT INTO public.meteor VALUES (2, '2', 2, 2.0, 2, true, '2', true);
INSERT INTO public.meteor VALUES (3, '3', 3, 3.0, 3, true, '3', true);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (15, '13', 13, 13, 13);
INSERT INTO public.moon VALUES (16, '14', 14, 14, 14);
INSERT INTO public.moon VALUES (17, '15', 15, 15, 15);
INSERT INTO public.moon VALUES (18, '16', 16, 16, 16);
INSERT INTO public.moon VALUES (19, '17', 17, 17, 17);
INSERT INTO public.moon VALUES (20, '18', 18, 18, 18);
INSERT INTO public.moon VALUES (21, '22', 22, 22, 22);
INSERT INTO public.moon VALUES (22, '23', 23, 23, 23);
INSERT INTO public.moon VALUES (23, '24', 24, 24, 24);
INSERT INTO public.moon VALUES (24, '25', 25, 25, 25);
INSERT INTO public.moon VALUES (25, '26', 26, 26, 26);
INSERT INTO public.moon VALUES (26, '27', 27, 27, 27);
INSERT INTO public.moon VALUES (27, '28', 28, 28, 28);
INSERT INTO public.moon VALUES (28, '29', 29, 29, 29);
INSERT INTO public.moon VALUES (29, '30', 30, 30, 30);
INSERT INTO public.moon VALUES (30, '31', 31, 31, 31);
INSERT INTO public.moon VALUES (31, '32', 32, 32, 32);
INSERT INTO public.moon VALUES (32, '33', 33, 33, 33);
INSERT INTO public.moon VALUES (33, '34', 34, 34, 34);
INSERT INTO public.moon VALUES (34, '35', 35, 35, 35);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (13, '1', 1, 1, 1);
INSERT INTO public.planet VALUES (14, '2', 2, 2, 2);
INSERT INTO public.planet VALUES (15, '3', 3, 3, 3);
INSERT INTO public.planet VALUES (16, '4', 4, 4, 4);
INSERT INTO public.planet VALUES (17, '5', 5, 5, 5);
INSERT INTO public.planet VALUES (18, '6', 6, 6, 6);
INSERT INTO public.planet VALUES (22, '7', 7, 7, 7);
INSERT INTO public.planet VALUES (23, '8', 8, 8, 8);
INSERT INTO public.planet VALUES (24, '9', 9, 9, 9);
INSERT INTO public.planet VALUES (25, '10', 10, 10, 10);
INSERT INTO public.planet VALUES (26, '11', 11, 11, 11);
INSERT INTO public.planet VALUES (27, '12', 12, 12, 12);
INSERT INTO public.planet VALUES (28, '13', 13, 13, 13);
INSERT INTO public.planet VALUES (29, '14', 14, 14, 14);
INSERT INTO public.planet VALUES (30, '15', 15, 15, 15);
INSERT INTO public.planet VALUES (31, '16', 16, 16, 16);
INSERT INTO public.planet VALUES (32, '17', 17, 17, 17);
INSERT INTO public.planet VALUES (33, '18', 18, 18, 18);
INSERT INTO public.planet VALUES (34, '19', 19, 19, 19);
INSERT INTO public.planet VALUES (35, '20', 20, 20, 20);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, '1', 1, 1, 1);
INSERT INTO public.star VALUES (2, '2', 2, 2, 2);
INSERT INTO public.star VALUES (3, '3', 3, 3, 3);
INSERT INTO public.star VALUES (4, '4', 4, 4, 4);
INSERT INTO public.star VALUES (5, '5', 5, 5, 5);
INSERT INTO public.star VALUES (6, '6', 6, 6, 6);
INSERT INTO public.star VALUES (7, '7', 7, 7, 7);
INSERT INTO public.star VALUES (8, '8', 8, 8, 8);
INSERT INTO public.star VALUES (9, '9', 9, 9, 9);
INSERT INTO public.star VALUES (10, '10', 10, 10, 10);
INSERT INTO public.star VALUES (11, '11', 11, 11, 11);
INSERT INTO public.star VALUES (12, '12', 12, 12, 12);
INSERT INTO public.star VALUES (13, '13', 13, 13, 13);
INSERT INTO public.star VALUES (14, '14', 14, 14, 14);
INSERT INTO public.star VALUES (15, '15', 15, 15, 15);
INSERT INTO public.star VALUES (16, '16', 16, 16, 16);
INSERT INTO public.star VALUES (17, '17', 17, 17, 17);
INSERT INTO public.star VALUES (18, '18', 18, 18, 18);
INSERT INTO public.star VALUES (19, '19', 19, 19, 19);
INSERT INTO public.star VALUES (20, '20', 20, 20, 20);


--
-- Name: dust_id_key_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.dust_id_key_seq', 3, true);


--
-- Name: galaxy_id_key_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_id_key_seq', 20, true);


--
-- Name: moon_id_key_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_id_key_seq', 34, true);


--
-- Name: planet_id_key_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_id_key_seq', 35, true);


--
-- Name: star_id_key_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_id_key_seq', 20, true);


--
-- Name: meteor dust_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.meteor
    ADD CONSTRAINT dust_pkey PRIMARY KEY (meteor_id);


--
-- Name: galaxy galaxy_crate_year_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_crate_year_key UNIQUE (create_year);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: meteor meteor_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.meteor
    ADD CONSTRAINT meteor_name_key UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: moon moon_planet_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_key UNIQUE (planet_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: planet planet_star_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_key UNIQUE (star_id);


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

