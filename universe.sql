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
-- Name: asteroid; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.asteroid (
    asteroid_id integer NOT NULL,
    name character varying(30) NOT NULL,
    diameter_in_km integer,
    year_discovered numeric
);


ALTER TABLE public.asteroid OWNER TO freecodecamp;

--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    year_discovered integer,
    discoverer text,
    diameter_in_ly integer
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30) NOT NULL,
    diameter_in_km integer,
    year_discovered integer,
    spherical boolean,
    planet_id integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30) NOT NULL,
    diameter_in_km integer,
    year_discovered integer,
    has_life boolean,
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30) NOT NULL,
    magnitude double precision,
    mass double precision,
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Data for Name: asteroid; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.asteroid VALUES (1, 'Ceres', 946, 1801);
INSERT INTO public.asteroid VALUES (2, 'Vesta', 530, 1807);
INSERT INTO public.asteroid VALUES (3, 'Palas', 545, 1802);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Via Lactea', NULL, NULL, 150000);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 964, 'Azophi', 110000);
INSERT INTO public.galaxy VALUES (3, 'Galaxia del triángulo', 1654, 'Giovanni B. Hodierna', 25000);
INSERT INTO public.galaxy VALUES (4, 'Galaxia Remolino', 1773, 'Charles Messier', 38000);
INSERT INTO public.galaxy VALUES (5, 'Galaxia del Girasol', 1779, 'Pierre Méchain', NULL);
INSERT INTO public.galaxy VALUES (6, 'Galaxia del Ojo Negro', 1779, 'Edward Pigott', 43000);
INSERT INTO public.galaxy VALUES (7, 'Galaxia de Bode', 1774, 'Johann Elert Bode', 36000);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Luna', 3475, NULL, true, 3);
INSERT INTO public.moon VALUES (2, 'Fobos', NULL, 1877, false, 4);
INSERT INTO public.moon VALUES (3, 'Deimos', NULL, 1877, false, 4);
INSERT INTO public.moon VALUES (4, 'Ío', 3643, 1610, true, 5);
INSERT INTO public.moon VALUES (5, 'Europa', 3121, 1610, true, 5);
INSERT INTO public.moon VALUES (6, 'Ganimedes', 5268, 1610, true, 5);
INSERT INTO public.moon VALUES (7, 'Calisto', 4820, 1610, true, 5);
INSERT INTO public.moon VALUES (8, 'Titán', 5150, 1655, true, 6);
INSERT INTO public.moon VALUES (9, 'Mimas', 397, 1789, true, 6);
INSERT INTO public.moon VALUES (10, 'Encélado', 504, 1789, true, 6);
INSERT INTO public.moon VALUES (11, 'Tetis', 1059, 1684, true, 6);
INSERT INTO public.moon VALUES (12, 'Dione', 1128, 1684, true, 6);
INSERT INTO public.moon VALUES (13, 'Rea', 1527, 1684, true, 6);
INSERT INTO public.moon VALUES (14, 'Hiperión', NULL, 1848, false, 6);
INSERT INTO public.moon VALUES (15, 'Jápeto', 1436, 1671, true, 6);
INSERT INTO public.moon VALUES (16, 'Febe', 220, 1898, false, 6);
INSERT INTO public.moon VALUES (17, 'Miranda', 472, 1948, true, 7);
INSERT INTO public.moon VALUES (18, 'Ariel', 1158, 1851, true, 7);
INSERT INTO public.moon VALUES (19, 'Umbriel', 1172, 1851, true, 7);
INSERT INTO public.moon VALUES (20, 'Titania', 1577, 1787, true, 7);
INSERT INTO public.moon VALUES (21, 'Oberón', 1523, 1787, true, 7);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercurio', 4879, NULL, false, 1);
INSERT INTO public.planet VALUES (2, 'Venus', 12103, NULL, false, 1);
INSERT INTO public.planet VALUES (3, 'Tierra', 12756, NULL, true, 1);
INSERT INTO public.planet VALUES (4, 'Marte', 6794, NULL, false, 1);
INSERT INTO public.planet VALUES (5, 'Jupiter', 142984, NULL, false, 1);
INSERT INTO public.planet VALUES (6, 'Saturno', 120536, NULL, false, 1);
INSERT INTO public.planet VALUES (7, 'Urano', 51118, 1781, false, 1);
INSERT INTO public.planet VALUES (8, 'Neptuno', 49572, 1846, false, 1);
INSERT INTO public.planet VALUES (9, 'Kepler-452b', 19113, 2015, NULL, 12);
INSERT INTO public.planet VALUES (10, 'Kepler-1410b', NULL, 2016, NULL, 12);
INSERT INTO public.planet VALUES (11, 'Kepler-438b', NULL, 2015, NULL, 12);
INSERT INTO public.planet VALUES (12, 'Kepler-439b', NULL, 2015, NULL, 12);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sol', -27, 1, 1);
INSERT INTO public.star VALUES (2, 'Sirio B', -6, 0.98, 1);
INSERT INTO public.star VALUES (3, 'Antares', -5.28, 15.5, 1);
INSERT INTO public.star VALUES (4, 'Betelgeuse', -5.5, 18, 1);
INSERT INTO public.star VALUES (5, 'Rigel', -6.7, 18, 1);
INSERT INTO public.star VALUES (6, 'Bellatrix', -2.72, 9, 1);
INSERT INTO public.star VALUES (7, 'Mintaka', -4.99, 20, 1);
INSERT INTO public.star VALUES (8, 'Alnilam', -6.95, 30, 1);
INSERT INTO public.star VALUES (9, 'Alnitak', -5.1, 20, 1);
INSERT INTO public.star VALUES (10, 'Hatysa', 2.75, 15, 1);
INSERT INTO public.star VALUES (11, 'Saiph', -4.68, 16, 1);
INSERT INTO public.star VALUES (12, 'Kepler-452', NULL, 4, 1);
INSERT INTO public.star VALUES (13, 'Tabit', 3.66, 1.25, 1);


--
-- Name: asteroid asteroid_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroid
    ADD CONSTRAINT asteroid_name_key UNIQUE (name);


--
-- Name: asteroid asteroid_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroid
    ADD CONSTRAINT asteroid_pkey PRIMARY KEY (asteroid_id);


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
