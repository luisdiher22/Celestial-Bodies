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
-- Name: constellation; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.constellation (
    name character varying(20) NOT NULL,
    constellation_id integer NOT NULL,
    size integer
);


ALTER TABLE public.constellation OWNER TO freecodecamp;

--
-- Name: constellation_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.constellation_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.constellation_id_seq OWNER TO freecodecamp;

--
-- Name: constellation_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.constellation_id_seq OWNED BY public.constellation.constellation_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    name character varying NOT NULL,
    galaxy_id integer NOT NULL,
    size numeric,
    temperature integer,
    gravity integer
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
    name character varying NOT NULL,
    moon_id integer NOT NULL,
    planet_id integer,
    temperature integer,
    gravity integer
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
    name character varying NOT NULL,
    planet_id integer NOT NULL,
    hax_oxygen boolean,
    hax_water boolean,
    star_id integer,
    gravity integer,
    temperature integer
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
    name character varying NOT NULL,
    star_id integer NOT NULL,
    constellation text,
    galaxy_id integer,
    gravity integer
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
-- Name: constellation constellation_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.constellation ALTER COLUMN constellation_id SET DEFAULT nextval('public.constellation_id_seq'::regclass);


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
-- Data for Name: constellation; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.constellation VALUES ('Osa', 1, 20);
INSERT INTO public.constellation VALUES ('Leon', 2, 30);
INSERT INTO public.constellation VALUES ('Capricornio', 3, 40);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES ('Milky', 1, 20, NULL, NULL);
INSERT INTO public.galaxy VALUES ('Way', 2, 30, NULL, NULL);
INSERT INTO public.galaxy VALUES ('Galaxy3', 3, 40, NULL, NULL);
INSERT INTO public.galaxy VALUES ('Galaxy4', 4, 12, NULL, NULL);
INSERT INTO public.galaxy VALUES ('Sideral', 5, 22, NULL, NULL);
INSERT INTO public.galaxy VALUES ('Siz', 6, 33, NULL, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES ('Moon1', 1, 2, NULL, NULL);
INSERT INTO public.moon VALUES ('Moon2', 2, 3, NULL, NULL);
INSERT INTO public.moon VALUES ('Moon3', 3, 4, NULL, NULL);
INSERT INTO public.moon VALUES ('Moon4', 4, 1, NULL, NULL);
INSERT INTO public.moon VALUES ('Moon5', 5, 2, NULL, NULL);
INSERT INTO public.moon VALUES ('Moon6', 6, 3, NULL, NULL);
INSERT INTO public.moon VALUES ('Moon7', 7, 2, NULL, NULL);
INSERT INTO public.moon VALUES ('Moon8', 8, 3, NULL, NULL);
INSERT INTO public.moon VALUES ('Moon9', 9, 4, NULL, NULL);
INSERT INTO public.moon VALUES ('Moon10', 10, 1, NULL, NULL);
INSERT INTO public.moon VALUES ('Moon11', 11, 2, NULL, NULL);
INSERT INTO public.moon VALUES ('Moon12', 12, 3, NULL, NULL);
INSERT INTO public.moon VALUES ('Moon13', 13, 2, NULL, NULL);
INSERT INTO public.moon VALUES ('Moon14', 14, 3, NULL, NULL);
INSERT INTO public.moon VALUES ('Moon15', 15, 4, NULL, NULL);
INSERT INTO public.moon VALUES ('Moon16', 16, 1, NULL, NULL);
INSERT INTO public.moon VALUES ('Moon17', 17, 2, NULL, NULL);
INSERT INTO public.moon VALUES ('Moon18', 18, 3, NULL, NULL);
INSERT INTO public.moon VALUES ('Moon19', 19, 2, NULL, NULL);
INSERT INTO public.moon VALUES ('Moon20', 20, 3, NULL, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES ('Earth', 1, NULL, NULL, 2, NULL, NULL);
INSERT INTO public.planet VALUES ('Mars', 2, NULL, NULL, 3, NULL, NULL);
INSERT INTO public.planet VALUES ('Jupiter', 3, NULL, NULL, 4, NULL, NULL);
INSERT INTO public.planet VALUES ('Saturn', 4, NULL, NULL, 1, NULL, NULL);
INSERT INTO public.planet VALUES ('Uranus', 5, NULL, NULL, 2, NULL, NULL);
INSERT INTO public.planet VALUES ('Venus', 6, NULL, NULL, 3, NULL, NULL);
INSERT INTO public.planet VALUES ('Washington', 7, NULL, NULL, 2, NULL, NULL);
INSERT INTO public.planet VALUES ('Kentucky', 8, NULL, NULL, 3, NULL, NULL);
INSERT INTO public.planet VALUES ('Alabama', 9, NULL, NULL, 4, NULL, NULL);
INSERT INTO public.planet VALUES ('Seattle', 10, NULL, NULL, 1, NULL, NULL);
INSERT INTO public.planet VALUES ('Dakota', 11, NULL, NULL, 2, NULL, NULL);
INSERT INTO public.planet VALUES ('Idaho', 12, NULL, NULL, 3, NULL, NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES ('Star1', 1, NULL, 2, NULL);
INSERT INTO public.star VALUES ('Star2', 2, NULL, 3, NULL);
INSERT INTO public.star VALUES ('Star3', 3, NULL, 4, NULL);
INSERT INTO public.star VALUES ('Star4', 4, NULL, 1, NULL);
INSERT INTO public.star VALUES ('Star5', 5, NULL, 2, NULL);
INSERT INTO public.star VALUES ('Star6', 6, NULL, 3, NULL);


--
-- Name: constellation_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.constellation_id_seq', 3, true);


--
-- Name: galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_id_seq', 6, true);


--
-- Name: moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_id_seq', 20, true);


--
-- Name: planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_id_seq', 12, true);


--
-- Name: star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_id_seq', 6, true);


--
-- Name: constellation constellation_pk; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.constellation
    ADD CONSTRAINT constellation_pk PRIMARY KEY (constellation_id);


--
-- Name: galaxy galaxy_pk; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pk PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_pk; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pk PRIMARY KEY (planet_id);


--
-- Name: star star_pk; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pk PRIMARY KEY (star_id);


--
-- Name: constellation unique_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.constellation
    ADD CONSTRAINT unique_name UNIQUE (name);


--
-- Name: galaxy unique_namegalaxy; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT unique_namegalaxy UNIQUE (name);


--
-- Name: moon unique_namemoon; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT unique_namemoon UNIQUE (name);


--
-- Name: planet unique_nameplanet; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT unique_nameplanet UNIQUE (name);


--
-- Name: star unique_namestar; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT unique_namestar UNIQUE (name);


--
-- Name: moon fk_moon; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_moon FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet fk_planet; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_planet FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star fk_star; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_star FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

