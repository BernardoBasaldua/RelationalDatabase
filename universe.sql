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
-- Name: actions; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.actions (
    actions_id integer NOT NULL,
    name character varying(30) NOT NULL,
    one_to_ten_frecuency integer
);


ALTER TABLE public.actions OWNER TO freecodecamp;

--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    age_in_millions_of_years integer,
    number_stars_in_millions integer,
    galaxy_type character varying(30)
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30) NOT NULL,
    planet_id integer,
    color character varying(30),
    is_spherical boolean
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30) NOT NULL,
    star_id integer,
    description text,
    has_life boolean
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30) NOT NULL,
    galaxy_id integer,
    birthday_in_million_years numeric(12,2),
    color character varying(30)
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Data for Name: actions; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.actions VALUES (1, 'Girar', NULL);
INSERT INTO public.actions VALUES (2, 'Colisionar', NULL);
INSERT INTO public.actions VALUES (3, 'Explotar', NULL);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Via Lactea', 13, 300, 'Espiral Barrada');
INSERT INTO public.galaxy VALUES (2, 'Palo de Hockey', NULL, NULL, 'Irregular');
INSERT INTO public.galaxy VALUES (3, 'Gran Nube de Magallanes', NULL, NULL, 'Enana');
INSERT INTO public.galaxy VALUES (4, 'NGC 4248', NULL, NULL, 'Espiral');
INSERT INTO public.galaxy VALUES (5, 'NGC 2500', NULL, NULL, 'Espiral Barrada');
INSERT INTO public.galaxy VALUES (6, 'Andromeda', NULL, 300, 'Espiral');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'The Moon', 1, 'Grey', true);
INSERT INTO public.moon VALUES (2, 'Fobos', 2, 'Grey', false);
INSERT INTO public.moon VALUES (3, 'Deimos', 2, 'Brown', false);
INSERT INTO public.moon VALUES (4, 'HPO Moon', 5, 'Grey', false);
INSERT INTO public.moon VALUES (5, 'HPT Moon One', 6, 'Blue', true);
INSERT INTO public.moon VALUES (6, 'HPT Moon Two', 6, 'Brown', false);
INSERT INTO public.moon VALUES (7, 'MPO Moon', 3, 'Green', false);
INSERT INTO public.moon VALUES (8, 'MPT Moon', 4, 'Blue', true);
INSERT INTO public.moon VALUES (9, 'Endor Moon One', 7, 'Green', true);
INSERT INTO public.moon VALUES (10, 'Endor Moon Two', 7, 'Grey', true);
INSERT INTO public.moon VALUES (11, 'Tatooine Moon One', 8, 'Red', true);
INSERT INTO public.moon VALUES (12, 'Tatooine Moon Two', 8, 'Grey', false);
INSERT INTO public.moon VALUES (13, 'Tatooine Moon Three', 8, 'Blue', false);
INSERT INTO public.moon VALUES (14, 'Coruscant Moon One', 9, 'Red', false);
INSERT INTO public.moon VALUES (15, 'Coruscant Moon Two', 9, 'Green', false);
INSERT INTO public.moon VALUES (16, 'Bespin Moon', 10, 'Grey', true);
INSERT INTO public.moon VALUES (17, 'APO Moon One', 11, 'Grey', true);
INSERT INTO public.moon VALUES (18, 'APO Moon Two', 11, 'Grey', false);
INSERT INTO public.moon VALUES (19, 'APO Moon Three', 11, 'Blue', false);
INSERT INTO public.moon VALUES (20, 'APT Moon', 12, 'Grey', false);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', 1, 'El planeta donde habitan los seres humanos', true);
INSERT INTO public.planet VALUES (2, 'Mars', 1, 'El planeta rojo, hogar de los extraterrestres de ficcion', false);
INSERT INTO public.planet VALUES (3, 'Magallanes Planet One', 3, 'Un planeta unicamente de hielo', false);
INSERT INTO public.planet VALUES (4, 'Magallanes Planet Two', 3, 'Un planeta frio lleno de diamantes', false);
INSERT INTO public.planet VALUES (5, 'Hockey Planet One', 2, 'Un planeta con constantes erupciones volcanicas', false);
INSERT INTO public.planet VALUES (6, 'Hockey Planet Two', 2, 'Un planeta con insectos gigantes', true);
INSERT INTO public.planet VALUES (7, 'Endor', 4, 'Hogar de los Ewoks', true);
INSERT INTO public.planet VALUES (8, 'Tatooine', 4, 'Un planeta desertico y comercial', true);
INSERT INTO public.planet VALUES (9, 'Coruscant', 5, 'Capital de la Republica y hogar de los Jedi', true);
INSERT INTO public.planet VALUES (10, 'Bespin', 5, 'Un planeta gaseoso inavitable', false);
INSERT INTO public.planet VALUES (11, 'Andromeda Planet One', 6, 'Un planeta rocoso ardiente', false);
INSERT INTO public.planet VALUES (12, 'Andromeda Planet Two', 6, 'Un planeta gaseoso', false);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sol', 1, 4570.10, 'Orange');
INSERT INTO public.star VALUES (2, 'Sol de Hockey', 2, 3450.30, 'Blue');
INSERT INTO public.star VALUES (3, 'Sol de Magallanes', 3, 2367.89, 'Red');
INSERT INTO public.star VALUES (4, 'Sol de 4248', 4, 4575.12, 'Orange');
INSERT INTO public.star VALUES (5, 'Sol de 2500', 5, 9870.56, 'Blue');
INSERT INTO public.star VALUES (6, 'Sol de Andromeda', 6, 2352.57, 'Orange');


--
-- Name: actions actions_action_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.actions
    ADD CONSTRAINT actions_action_id_key UNIQUE (actions_id);


--
-- Name: actions actions_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.actions
    ADD CONSTRAINT actions_name_key UNIQUE (name);


--
-- Name: actions actions_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.actions
    ADD CONSTRAINT actions_pkey PRIMARY KEY (actions_id);


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
