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
-- Name: extraterrestrial; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.extraterrestrial (
    extraterrestrial_id integer NOT NULL,
    rating integer,
    is_cool boolean NOT NULL,
    name character varying(30),
    description text
);


ALTER TABLE public.extraterrestrial OWNER TO freecodecamp;

--
-- Name: extraterrestrial_extraterrestrial_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.extraterrestrial_extraterrestrial_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.extraterrestrial_extraterrestrial_id_seq OWNER TO freecodecamp;

--
-- Name: extraterrestrial_extraterrestrial_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.extraterrestrial_extraterrestrial_id_seq OWNED BY public.extraterrestrial.extraterrestrial_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    rating integer,
    distance numeric,
    is_cool boolean NOT NULL,
    name character varying(30),
    description text
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
    rating integer,
    distance numeric,
    is_cool boolean NOT NULL,
    description text,
    name character varying(30),
    planet integer NOT NULL
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
-- Name: moon_planet_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_planet_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_planet_seq OWNER TO freecodecamp;

--
-- Name: moon_planet_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_planet_seq OWNED BY public.moon.planet;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    rating integer,
    distance numeric,
    is_cool boolean NOT NULL,
    description text,
    name character varying(30),
    star integer NOT NULL
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
-- Name: planet_star_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_star_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_star_seq OWNER TO freecodecamp;

--
-- Name: planet_star_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_star_seq OWNED BY public.planet.star;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    rating integer,
    distance numeric,
    is_cool boolean NOT NULL,
    name character varying(30),
    description text,
    galaxy_id integer NOT NULL
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: star_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_galaxy_id_seq OWNED BY public.star.galaxy_id;


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
-- Name: extraterrestrial extraterrestrial_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.extraterrestrial ALTER COLUMN extraterrestrial_id SET DEFAULT nextval('public.extraterrestrial_extraterrestrial_id_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: moon planet; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN planet SET DEFAULT nextval('public.moon_planet_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: planet star; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN star SET DEFAULT nextval('public.planet_star_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Name: star galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN galaxy_id SET DEFAULT nextval('public.star_galaxy_id_seq'::regclass);


--
-- Data for Name: extraterrestrial; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.extraterrestrial VALUES (1, 2, true, 'insect alien', 'creepy');
INSERT INTO public.extraterrestrial VALUES (2, 10, true, 'hot pink alien', 'like barbie but an alien');
INSERT INTO public.extraterrestrial VALUES (3, 8, false, 'vampire alien', 'edward from twilight on mars');


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 5, 10000.258, false, 'Neptune', 'probably cold?');
INSERT INTO public.galaxy VALUES (2, 9, 2000000, true, 'Pluto', 'dope af');
INSERT INTO public.galaxy VALUES (3, 2, 5000.252, false, 'asteroid_1', 'gonna hit earth');
INSERT INTO public.galaxy VALUES (4, 10, 20000, true, 'our moon', 'seeable from earth');
INSERT INTO public.galaxy VALUES (5, 1, 134051.5, false, 'Uranus', 'butt of many jokes');
INSERT INTO public.galaxy VALUES (6, 5, 10.42481, true, 'NASA', 'scientists r ok');
INSERT INTO public.galaxy VALUES (7, 6, 2351.16151, false, 'MERCURY', 'red & hot');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 10, 20000, true, 'seeable from earth', 'our moon', 1);
INSERT INTO public.moon VALUES (2, 1, 134051.5, false, 'butt of many jokes', 'Uranus', 2);
INSERT INTO public.moon VALUES (3, 5, 10.42481, true, 'scientists r ok', 'NASA', 3);
INSERT INTO public.moon VALUES (4, 6, 2351.16151, false, 'red & hot', 'MERCURY', 4);
INSERT INTO public.moon VALUES (5, 10, 20000, true, 'seeable from earth', 'not a moon', 5);
INSERT INTO public.moon VALUES (6, 1, 134051.5, false, 'butt of many jokes', 'formation in progress', 6);
INSERT INTO public.moon VALUES (7, 5, 10.42481, true, 'scientists r ok', 'swiftie nation', 7);
INSERT INTO public.moon VALUES (8, 6, 2351.16151, false, 'red & hot', 'red hot gum', 8);
INSERT INTO public.moon VALUES (9, 10, 20000, true, 'seeable from earth', 'not our moon', 9);
INSERT INTO public.moon VALUES (10, 1, 134051.5, false, 'butt of many jokes', 'undiscovered', 10);
INSERT INTO public.moon VALUES (11, 5, 10.42481, true, 'scientists r ok', 'LILNASX', 11);
INSERT INTO public.moon VALUES (12, 6, 2351.16151, false, 'red & hot', 'sunnnnn', 12);
INSERT INTO public.moon VALUES (14, 10, 20000, true, 'seeable from earth', 'hell', 13);
INSERT INTO public.moon VALUES (15, 1, 134051.5, false, 'butt of many jokes', 'Uranuss', 14);
INSERT INTO public.moon VALUES (16, 5, 10.42481, true, 'scientists r ok', 'antartica', 15);
INSERT INTO public.moon VALUES (17, 6, 2351.16151, false, 'red & hot', 'nirvana', 16);
INSERT INTO public.moon VALUES (18, 10, 20000, true, 'seeable from earth', 'overlords gates', 17);
INSERT INTO public.moon VALUES (19, 1, 134051.5, false, 'butt of many jokes', 'belly', 18);
INSERT INTO public.moon VALUES (20, 5, 10.42481, true, 'scientists r ok', 'venus', 19);
INSERT INTO public.moon VALUES (21, 6, 2351.16151, false, 'red & hot', 'miley', 20);
INSERT INTO public.moon VALUES (22, 10, 20000, true, 'seeable from earth', 'overlords gas', 21);
INSERT INTO public.moon VALUES (23, 1, 134051.5, false, 'butt of many jokes', 'tiresome', 22);
INSERT INTO public.moon VALUES (24, 5, 10.42481, true, 'scientists r ok', 'did we say Mars', 23);
INSERT INTO public.moon VALUES (25, 6, 2351.16151, false, 'red & hot', 'murphy', 24);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 10, 20000, true, 'seeable from earth', 'our moon', 1);
INSERT INTO public.planet VALUES (2, 1, 134051.5, false, 'butt of many jokes', 'Uranus', 2);
INSERT INTO public.planet VALUES (3, 5, 10.42481, true, 'scientists r ok', 'NASA', 3);
INSERT INTO public.planet VALUES (4, 6, 2351.16151, false, 'red & hot', 'MERCURY', 4);
INSERT INTO public.planet VALUES (6, 10, 20000, true, 'seeable from earth', 'not our moon', 5);
INSERT INTO public.planet VALUES (7, 1, 134051.5, false, 'butt of many jokes', 'undiscovered', 6);
INSERT INTO public.planet VALUES (8, 5, 10.42481, true, 'scientists r ok', 'LILNASX', 7);
INSERT INTO public.planet VALUES (9, 6, 2351.16151, false, 'red & hot', 'sunnnnn', 8);
INSERT INTO public.planet VALUES (10, 10, 20000, true, 'seeable from earth', 'not a moon', 9);
INSERT INTO public.planet VALUES (11, 1, 134051.5, false, 'butt of many jokes', 'formation in progress', 10);
INSERT INTO public.planet VALUES (12, 5, 10.42481, true, 'scientists r ok', 'swiftie nation', 11);
INSERT INTO public.planet VALUES (13, 6, 2351.16151, false, 'red & hot', 'red hot gum', 12);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 10, 20000, true, 'our moon', 'seeable from earth', 1);
INSERT INTO public.star VALUES (2, 1, 134051.5, false, 'Uranus', 'butt of many jokes', 2);
INSERT INTO public.star VALUES (3, 5, 10.42481, true, 'NASA', 'scientists r ok', 3);
INSERT INTO public.star VALUES (4, 6, 2351.16151, false, 'MERCURY', 'red & hot', 4);
INSERT INTO public.star VALUES (5, 9, 2000000, true, 'Pluto', 'dope af', 5);
INSERT INTO public.star VALUES (6, 2, 5000.252, false, 'asteroid_1', 'gonna hit earth', 6);


--
-- Name: extraterrestrial_extraterrestrial_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.extraterrestrial_extraterrestrial_id_seq', 3, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 7, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 25, true);


--
-- Name: moon_planet_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_planet_seq', 24, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 13, true);


--
-- Name: planet_star_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_star_seq', 12, true);


--
-- Name: star_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_galaxy_id_seq', 6, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: extraterrestrial extraterrestrial_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.extraterrestrial
    ADD CONSTRAINT extraterrestrial_name_key UNIQUE (name);


--
-- Name: extraterrestrial extraterrestrial_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.extraterrestrial
    ADD CONSTRAINT extraterrestrial_pkey PRIMARY KEY (extraterrestrial_id);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star fk; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

