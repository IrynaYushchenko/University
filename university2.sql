--
-- PostgreSQL database dump
--

-- Dumped from database version 11.2
-- Dumped by pg_dump version 11.2

-- Started on 2019-04-15 14:04:13

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
    subject_id integer NOT NULL,
    subject character varying,
    faculty_id integer,
    term integer,
    hours integer,
    test character varying,
    lecturer_id integer
);


ALTER TABLE public.subject OWNER TO postgres;

--
-- TOC entry 2830 (class 0 OID 16470)
-- Dependencies: 198
-- Data for Name: faculty; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.faculty (faculty_id, name, address, year, dean) VALUES (1, 'biology', 'Ukraine, Chernivtsi, Lesya Ukrainka, 25, 58000', 1875, ' Marchenko Mykhailo');
INSERT INTO public.faculty (faculty_id, name, address, year, dean) VALUES (2, 'physics', 'Ukraine, Chernivtsi, Storozhynetska, 101, 58000', 1875, 'Hutzul Ivan');
INSERT INTO public.faculty (faculty_id, name, address, year, dean) VALUES (3, 'law', 'Ukraine, Chernivtsi, Universytetska, 19, 58000', 1875, 'Patsurkivskyi Petro');


--
-- TOC entry 2829 (class 0 OID 16458)
-- Dependencies: 197
-- Data for Name: lecturer; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.lecturer (lecturer_id, lrcturer, born_on, degree, "position", faculty_id) VALUES (1, 'Zaplitnyi Ruslan', '1985-03-12', NULL, 'assistant', 2);
INSERT INTO public.lecturer (lecturer_id, lrcturer, born_on, degree, "position", faculty_id) VALUES (2, 'Petryshyn Roman', '1967-05-15', 'professor', 'rector', 2);
INSERT INTO public.lecturer (lecturer_id, lrcturer, born_on, degree, "position", faculty_id) VALUES (3, 'Kotsyshyn Stepan', '1955-04-26', 'professor', 'rector', 1);
INSERT INTO public.lecturer (lecturer_id, lrcturer, born_on, degree, "position", faculty_id) VALUES (4, 'Kindzerskyi Vitalii', '1984-08-23', NULL, 'assistant', 3);


--
-- TOC entry 2828 (class 0 OID 16452)
-- Dependencies: 196
-- Data for Name: subject; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.subject (subject_id, subject, faculty_id, term, hours, test, lecturer_id) VALUES (1, 'biology', 1, 1, 16, 'exam', 3);
INSERT INTO public.subject (subject_id, subject, faculty_id, term, hours, test, lecturer_id) VALUES (2, 'agronomics', 1, 2, 16, 'test', 3);
INSERT INTO public.subject (subject_id, subject, faculty_id, term, hours, test, lecturer_id) VALUES (3, 'physics', 2, 2, 32, 'exam', 1);
INSERT INTO public.subject (subject_id, subject, faculty_id, term, hours, test, lecturer_id) VALUES (4, 'law', 3, 1, 16, 'exam', 4);


--
-- TOC entry 2702 (class 2606 OID 16479)
-- Name: faculty faculty_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.faculty
    ADD CONSTRAINT faculty_pkey PRIMARY KEY (faculty_id);


--
-- TOC entry 2700 (class 2606 OID 16484)
-- Name: lecturer lectorer_id; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.lecturer
    ADD CONSTRAINT lectorer_id PRIMARY KEY (lecturer_id);


--
-- TOC entry 2697 (class 2606 OID 16489)
-- Name: subject subject_id; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.subject
    ADD CONSTRAINT subject_id PRIMARY KEY (subject_id);


--
-- TOC entry 2698 (class 1259 OID 16520)
-- Name: fki_faculty_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX fki_faculty_id ON public.lecturer USING btree (faculty_id);


--
-- TOC entry 2694 (class 1259 OID 16531)
-- Name: fki_faculty_id2; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX fki_faculty_id2 ON public.subject USING btree (faculty_id);


--
-- TOC entry 2695 (class 1259 OID 16537)
-- Name: fki_lecture_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX fki_lecture_id ON public.subject USING btree (lecturer_id);


--
-- TOC entry 2706 (class 2606 OID 16515)
-- Name: lecturer faculty_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.lecturer
    ADD CONSTRAINT faculty_id FOREIGN KEY (faculty_id) REFERENCES public.faculty(faculty_id);


--
-- TOC entry 2703 (class 2606 OID 16521)
-- Name: subject faculty_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.subject
    ADD CONSTRAINT faculty_id FOREIGN KEY (faculty_id) REFERENCES public.faculty(faculty_id);


--
-- TOC entry 2704 (class 2606 OID 16526)
-- Name: subject faculty_id2; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.subject
    ADD CONSTRAINT faculty_id2 FOREIGN KEY (faculty_id) REFERENCES public.faculty(faculty_id);


--
-- TOC entry 2705 (class 2606 OID 16532)
-- Name: subject lecture_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.subject
    ADD CONSTRAINT lecture_id FOREIGN KEY (lecturer_id) REFERENCES public.lecturer(lecturer_id);


-- Completed on 2019-04-15 14:04:13

--
-- PostgreSQL database dump complete
--

