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
    name character varying(60) NOT NULL,
    num_of_stars integer,
    age_in_billion_years numeric,
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
    name character varying(60) NOT NULL,
    planet_id integer,
    is_real boolean,
    description text
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
-- Name: more_info; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.more_info (
    more_info_id integer NOT NULL,
    name character varying(60) NOT NULL,
    brightness numeric
);


ALTER TABLE public.more_info OWNER TO freecodecamp;

--
-- Name: more_info_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.more_info_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.more_info_star_id_seq OWNER TO freecodecamp;

--
-- Name: more_info_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.more_info_star_id_seq OWNED BY public.more_info.more_info_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(60) NOT NULL,
    star_id integer,
    description text,
    is_real boolean
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
    name character varying(60) NOT NULL,
    num_of_planets integer,
    galaxy_id integer,
    description text
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
-- Name: more_info more_info_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.more_info ALTER COLUMN more_info_id SET DEFAULT nextval('public.more_info_star_id_seq'::regclass);


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

INSERT INTO public.galaxy VALUES (1, 'Milky Way', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (2, 'Andromeda (M31)', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (3, 'Triangulum (M33)', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (4, 'Whirlpool (M51)', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (5, 'Cigar (M82)', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (6, 'Sombrero (M104)', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (7, 'Pinwheel (M101)', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (8, 'Black Eye (M64)', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (9, 'Centaurus A (NGC 5128)', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (10, 'Bode''s (M81)', NULL, NULL, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Luna', 3, true, NULL);
INSERT INTO public.moon VALUES (2, 'Io', 5, true, NULL);
INSERT INTO public.moon VALUES (3, 'Europa', 5, true, NULL);
INSERT INTO public.moon VALUES (4, 'Ganymede', 5, true, NULL);
INSERT INTO public.moon VALUES (5, 'Callisto', 5, true, NULL);
INSERT INTO public.moon VALUES (6, 'Amalthea', 5, true, NULL);
INSERT INTO public.moon VALUES (7, 'Himalia', 5, true, NULL);
INSERT INTO public.moon VALUES (8, 'Elara', 5, true, NULL);
INSERT INTO public.moon VALUES (9, 'Titan', 6, true, NULL);
INSERT INTO public.moon VALUES (10, 'Rhea', 6, true, NULL);
INSERT INTO public.moon VALUES (11, 'Iapetus', 6, true, NULL);
INSERT INTO public.moon VALUES (12, 'Dione', 6, true, NULL);
INSERT INTO public.moon VALUES (13, 'Enceladus', 6, true, NULL);
INSERT INTO public.moon VALUES (14, 'Tethys', 6, true, NULL);
INSERT INTO public.moon VALUES (15, 'Mimas', 6, true, NULL);
INSERT INTO public.moon VALUES (16, 'Hyperion', 6, true, NULL);
INSERT INTO public.moon VALUES (17, 'Titania', 7, true, NULL);
INSERT INTO public.moon VALUES (18, 'Oberon', 7, true, NULL);
INSERT INTO public.moon VALUES (19, 'Miranda', 7, true, NULL);
INSERT INTO public.moon VALUES (20, 'Ariel', 7, true, NULL);
INSERT INTO public.moon VALUES (21, 'Umbriel', 7, true, NULL);
INSERT INTO public.moon VALUES (22, 'Triton', 8, true, NULL);
INSERT INTO public.moon VALUES (23, 'Proteus', 8, true, NULL);
INSERT INTO public.moon VALUES (24, 'Nereid', 8, true, NULL);
INSERT INTO public.moon VALUES (25, 'Larissa', 8, true, NULL);
INSERT INTO public.moon VALUES (26, 'Phobos', 4, true, NULL);
INSERT INTO public.moon VALUES (27, 'Deimos', 4, true, NULL);
INSERT INTO public.moon VALUES (28, 'Imaginative moon 1', 1, false, NULL);
INSERT INTO public.moon VALUES (29, 'Imaginative moon 2', 2, false, NULL);
INSERT INTO public.moon VALUES (30, 'Imaginative moon 3', 2, false, NULL);


--
-- Data for Name: more_info; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.more_info VALUES (1, 'Sun', -26.74);
INSERT INTO public.more_info VALUES (2, 'Sirius', -1.46);
INSERT INTO public.more_info VALUES (3, 'Alpha Centauri', 0.01);
INSERT INTO public.more_info VALUES (4, 'Betelgeuse', 0.5);
INSERT INTO public.more_info VALUES (5, 'Vega', 0.03);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', 1, NULL, true);
INSERT INTO public.planet VALUES (2, 'Venus', 1, NULL, true);
INSERT INTO public.planet VALUES (3, 'Earth', 1, NULL, true);
INSERT INTO public.planet VALUES (4, 'Mars', 1, NULL, true);
INSERT INTO public.planet VALUES (5, 'Jupiter', 1, NULL, true);
INSERT INTO public.planet VALUES (6, 'Saturn', 1, NULL, true);
INSERT INTO public.planet VALUES (7, 'Uranus', 1, NULL, true);
INSERT INTO public.planet VALUES (8, 'Neptune', 1, NULL, true);
INSERT INTO public.planet VALUES (9, 'Sirius A', 2, NULL, true);
INSERT INTO public.planet VALUES (10, 'Sirius B', 2, NULL, true);
INSERT INTO public.planet VALUES (11, 'Proxima Centauri b', 3, NULL, true);
INSERT INTO public.planet VALUES (12, 'Imaginative planet 1', 4, NULL, false);
INSERT INTO public.planet VALUES (13, 'Imaginative planet 2', 5, NULL, false);
INSERT INTO public.planet VALUES (14, 'Imaginative planet 3', 5, NULL, false);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', NULL, 1, NULL);
INSERT INTO public.star VALUES (2, 'Sirius', NULL, 1, NULL);
INSERT INTO public.star VALUES (3, 'Alpha Centauri', NULL, 1, NULL);
INSERT INTO public.star VALUES (4, 'Betelgeuse', NULL, 1, NULL);
INSERT INTO public.star VALUES (5, 'Vega', NULL, 1, NULL);
INSERT INTO public.star VALUES (6, 'NGC 5194', NULL, 4, NULL);
INSERT INTO public.star VALUES (7, 'NGC 5195', NULL, 4, NULL);
INSERT INTO public.star VALUES (8, 'SN1994I', NULL, 4, NULL);
INSERT INTO public.star VALUES (9, 'SN2005cs', NULL, 4, NULL);
INSERT INTO public.star VALUES (10, 'M82-F1', NULL, 5, NULL);
INSERT INTO public.star VALUES (11, 'M82-ULS1', NULL, 5, NULL);
INSERT INTO public.star VALUES (12, 'M82-IRS1', NULL, 5, NULL);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 1, false);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 1, false);


--
-- Name: more_info_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.more_info_star_id_seq', 1, false);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 1, false);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 1, false);


--
-- Name: galaxy galaxy_galaxy_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_galaxy_id_key UNIQUE (galaxy_id);


--
-- Name: galaxy galaxy_galaxy_id_key1; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_galaxy_id_key1 UNIQUE (galaxy_id);


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
-- Name: moon moon_moon_id_key1; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_moon_id_key1 UNIQUE (moon_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: more_info more_info_more_info_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.more_info
    ADD CONSTRAINT more_info_more_info_id_key UNIQUE (more_info_id);


--
-- Name: more_info more_info_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.more_info
    ADD CONSTRAINT more_info_pkey PRIMARY KEY (more_info_id);


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
-- Name: planet planet_planet_id_key1; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_planet_id_key1 UNIQUE (planet_id);


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
-- Name: star star_star_id_key1; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_star_id_key1 UNIQUE (star_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: moon moon_planet_id_fkey1; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey1 FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: planet planet_star_id_fkey1; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey1 FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: star star_galaxy_id_fkey1; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey1 FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

