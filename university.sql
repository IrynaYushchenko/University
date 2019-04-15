--
-- PostgreSQL database dump
--

-- Dumped from database version 11.2
-- Dumped by pg_dump version 11.2

-- Started on 2019-04-15 11:14:06

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 198 (class 1259 OID 16470)
-- Name: faculty; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.faculty (
    faculty_id integer NOT NULL,
    name character varying,
    address character varying,
    year integer,
    dean character varying
);


ALTER TABLE public.faculty OWNER TO postgres;

--
-- TOC entry 197 (class 1259 OID 16458)
-- Name: lecturer; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.lecturer (
    lecturer_id integer NOT NULL,
    lrcturer character varying,
    born_on date,
    degree character varying,
    "position" character varying,
    faculty_id integer
);


ALTER TABLE public.lecturer OWNER TO postgres;

--
-- TOC entry 196 (class 1259 OID 16452)
-- Name: subject; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.subject (
);


ALTER TABLE public.subject OWNER TO postgres;

--
-- TOC entry 2820 (class 0 OID 16470)
-- Dependencies: 198
-- Data for Name: faculty; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.faculty (faculty_id, name, address, year, dean) VALUES (1, 'biology', 'Ukraine, Chernivtsi, Lesya Ukrainka, 25, 58000', 1875, ' Marchenko Mykhailo');
INSERT INTO public.faculty (faculty_id, name, address, year, dean) VALUES (2, 'physics', 'Ukraine, Chernivtsi, Storozhynetska, 101, 58000', 1875, 'Hutzul Ivan');
INSERT INTO public.faculty (faculty_id, name, address, year, dean) VALUES (3, 'law', 'Ukraine, Chernivtsi, Universytetska, 19, 58000', 1875, 'Patsurkivskyi Petro');


--
-- TOC entry 2819 (class 0 OID 16458)
-- Dependencies: 197
-- Data for Name: lecturer; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.lecturer (lecturer_id, lrcturer, born_on, degree, "position", faculty_id) VALUES (1, 'Zaplitnyi Ruslan', '1985-03-12', NULL, 'assistant', 2);
INSERT INTO public.lecturer (lecturer_id, lrcturer, born_on, degree, "position", faculty_id) VALUES (2, 'Petryshyn Roman', '1967-05-15', 'professor', 'rector', 2);
INSERT INTO public.lecturer (lecturer_id, lrcturer, born_on, degree, "position", faculty_id) VALUES (3, 'Kotsyshyn Stepan', '1955-04-26', 'professor', 'rector', 1);
INSERT INTO public.lecturer (lecturer_id, lrcturer, born_on, degree, "position", faculty_id) VALUES (4, 'Kindzerskyi Vitalii', '1984-08-23', NULL, 'assistant', 3);


--
-- TOC entry 2818 (class 0 OID 16452)
-- Dependencies: 196
-- Data for Name: subject; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 2696 (class 2606 OID 16479)
-- Name: faculty faculty_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.faculty
    ADD CONSTRAINT faculty_pkey PRIMARY KEY (faculty_id);


--
-- TOC entry 2694 (class 2606 OID 16484)
-- Name: lecturer lectorer_id; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.lecturer
    ADD CONSTRAINT lectorer_id PRIMARY KEY (lecturer_id);


-- Completed on 2019-04-15 11:14:06

--
-- PostgreSQL database dump complete
--

