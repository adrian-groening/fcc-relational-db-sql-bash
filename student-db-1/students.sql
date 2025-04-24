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

DROP DATABASE students;
--
-- Name: students; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE students WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE students OWNER TO freecodecamp;

\connect students

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
-- Name: courses; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.courses (
    course_id integer NOT NULL,
    course character varying(100) NOT NULL
);


ALTER TABLE public.courses OWNER TO freecodecamp;

--
-- Name: courses_course_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.courses_course_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.courses_course_id_seq OWNER TO freecodecamp;

--
-- Name: courses_course_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.courses_course_id_seq OWNED BY public.courses.course_id;


--
-- Name: majors; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.majors (
    major_id integer NOT NULL,
    major character varying(50) NOT NULL
);


ALTER TABLE public.majors OWNER TO freecodecamp;

--
-- Name: majors_courses; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.majors_courses (
    major_id integer NOT NULL,
    course_id integer NOT NULL
);


ALTER TABLE public.majors_courses OWNER TO freecodecamp;

--
-- Name: majors_major_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.majors_major_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.majors_major_id_seq OWNER TO freecodecamp;

--
-- Name: majors_major_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.majors_major_id_seq OWNED BY public.majors.major_id;


--
-- Name: students; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.students (
    student_id integer NOT NULL,
    first_name character varying(50) NOT NULL,
    last_name character varying(50) NOT NULL,
    major_id integer,
    gpa numeric(2,1)
);


ALTER TABLE public.students OWNER TO freecodecamp;

--
-- Name: students_student_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.students_student_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.students_student_id_seq OWNER TO freecodecamp;

--
-- Name: students_student_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.students_student_id_seq OWNED BY public.students.student_id;


--
-- Name: courses course_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.courses ALTER COLUMN course_id SET DEFAULT nextval('public.courses_course_id_seq'::regclass);


--
-- Name: majors major_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.majors ALTER COLUMN major_id SET DEFAULT nextval('public.majors_major_id_seq'::regclass);


--
-- Name: students student_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.students ALTER COLUMN student_id SET DEFAULT nextval('public.students_student_id_seq'::regclass);


--
-- Data for Name: courses; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.courses VALUES (55, 'Data Structures and Algorithms');
INSERT INTO public.courses VALUES (56, 'Web Programming');
INSERT INTO public.courses VALUES (57, 'Database Systems');
INSERT INTO public.courses VALUES (58, 'Computer Networks');
INSERT INTO public.courses VALUES (59, 'SQL');
INSERT INTO public.courses VALUES (60, 'Machine Learning');
INSERT INTO public.courses VALUES (61, 'Computer Systems');
INSERT INTO public.courses VALUES (62, 'Web Applications');
INSERT INTO public.courses VALUES (63, 'Artificial Intelligence');
INSERT INTO public.courses VALUES (64, 'Python');
INSERT INTO public.courses VALUES (65, 'Object-Oriented Programming');
INSERT INTO public.courses VALUES (66, 'Calculus');
INSERT INTO public.courses VALUES (67, 'Game Architecture');
INSERT INTO public.courses VALUES (68, 'Algorithms');
INSERT INTO public.courses VALUES (69, 'UNIX');
INSERT INTO public.courses VALUES (70, 'Server Administration');
INSERT INTO public.courses VALUES (71, 'Network Security');


--
-- Data for Name: majors; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.majors VALUES (58, 'Database Administration');
INSERT INTO public.majors VALUES (59, 'Web Development');
INSERT INTO public.majors VALUES (60, 'Data Science');
INSERT INTO public.majors VALUES (61, 'Network Engineering');
INSERT INTO public.majors VALUES (62, 'Computer Programming');
INSERT INTO public.majors VALUES (63, 'Game Design');
INSERT INTO public.majors VALUES (64, 'System Administration');


--
-- Data for Name: majors_courses; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.majors_courses VALUES (58, 55);
INSERT INTO public.majors_courses VALUES (59, 56);
INSERT INTO public.majors_courses VALUES (58, 57);
INSERT INTO public.majors_courses VALUES (60, 55);
INSERT INTO public.majors_courses VALUES (61, 58);
INSERT INTO public.majors_courses VALUES (58, 59);
INSERT INTO public.majors_courses VALUES (60, 60);
INSERT INTO public.majors_courses VALUES (61, 61);
INSERT INTO public.majors_courses VALUES (62, 58);
INSERT INTO public.majors_courses VALUES (58, 62);
INSERT INTO public.majors_courses VALUES (63, 63);
INSERT INTO public.majors_courses VALUES (60, 64);
INSERT INTO public.majors_courses VALUES (62, 65);
INSERT INTO public.majors_courses VALUES (64, 61);
INSERT INTO public.majors_courses VALUES (63, 66);
INSERT INTO public.majors_courses VALUES (59, 55);
INSERT INTO public.majors_courses VALUES (60, 66);
INSERT INTO public.majors_courses VALUES (59, 65);
INSERT INTO public.majors_courses VALUES (63, 67);
INSERT INTO public.majors_courses VALUES (64, 58);
INSERT INTO public.majors_courses VALUES (63, 68);
INSERT INTO public.majors_courses VALUES (64, 69);
INSERT INTO public.majors_courses VALUES (64, 70);
INSERT INTO public.majors_courses VALUES (62, 61);
INSERT INTO public.majors_courses VALUES (62, 64);
INSERT INTO public.majors_courses VALUES (61, 71);
INSERT INTO public.majors_courses VALUES (59, 62);
INSERT INTO public.majors_courses VALUES (61, 68);


--
-- Data for Name: students; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.students VALUES (44, 'Rhea', 'Kellems', 58, 2.5);
INSERT INTO public.students VALUES (45, 'Emma', 'Gilbert', NULL, NULL);
INSERT INTO public.students VALUES (46, 'Kimberly', 'Whitley', 59, 3.8);
INSERT INTO public.students VALUES (47, 'Jimmy', 'Felipe', 58, 3.7);
INSERT INTO public.students VALUES (48, 'Kyle', 'Stimson', NULL, 2.8);
INSERT INTO public.students VALUES (49, 'Casares', 'Hijo', 63, 4.0);
INSERT INTO public.students VALUES (50, 'Noe', 'Savage', NULL, 3.6);
INSERT INTO public.students VALUES (51, 'Sterling', 'Boss', 63, 3.9);
INSERT INTO public.students VALUES (52, 'Brian', 'Davis', NULL, 2.3);
INSERT INTO public.students VALUES (53, 'Kaija', 'Uronen', 63, 3.7);
INSERT INTO public.students VALUES (54, 'Faye', 'Conn', 63, 2.1);
INSERT INTO public.students VALUES (55, 'Efren', 'Reilly', 59, 3.9);
INSERT INTO public.students VALUES (56, 'Danh', 'Nhung', NULL, 2.4);
INSERT INTO public.students VALUES (57, 'Maxine', 'Hagenes', 58, 2.9);
INSERT INTO public.students VALUES (58, 'Larry', 'Saunders', 60, 2.2);
INSERT INTO public.students VALUES (59, 'Karl', 'Kuhar', 59, NULL);
INSERT INTO public.students VALUES (60, 'Lieke', 'Hazenveld', 63, 3.5);
INSERT INTO public.students VALUES (61, 'Obie', 'Hilpert', 59, NULL);
INSERT INTO public.students VALUES (62, 'Peter', 'Booysen', NULL, 2.9);
INSERT INTO public.students VALUES (63, 'Nathan', 'Turner', 58, 3.3);
INSERT INTO public.students VALUES (64, 'Gerald', 'Osiki', 60, 2.2);
INSERT INTO public.students VALUES (65, 'Vanya', 'Hassanah', 63, 4.0);
INSERT INTO public.students VALUES (66, 'Roxelana', 'Florescu', 58, 3.2);
INSERT INTO public.students VALUES (67, 'Helene', 'Parker', 60, 3.4);
INSERT INTO public.students VALUES (68, 'Mariana', 'Russel', 59, 1.8);
INSERT INTO public.students VALUES (69, 'Ajit', 'Dhungel', NULL, 3.0);
INSERT INTO public.students VALUES (70, 'Mehdi', 'Vandenberghe', 58, 1.9);
INSERT INTO public.students VALUES (71, 'Dejon', 'Howell', 59, 4.0);
INSERT INTO public.students VALUES (72, 'Aliya', 'Gulgowski', 64, 2.6);
INSERT INTO public.students VALUES (73, 'Ana', 'Tupajic', 60, 3.1);
INSERT INTO public.students VALUES (74, 'Hugo', 'Duran', NULL, 3.8);


--
-- Name: courses_course_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.courses_course_id_seq', 71, true);


--
-- Name: majors_major_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.majors_major_id_seq', 64, true);


--
-- Name: students_student_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.students_student_id_seq', 74, true);


--
-- Name: courses courses_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.courses
    ADD CONSTRAINT courses_pkey PRIMARY KEY (course_id);


--
-- Name: majors_courses majors_courses_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.majors_courses
    ADD CONSTRAINT majors_courses_pkey PRIMARY KEY (major_id, course_id);


--
-- Name: majors majors_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.majors
    ADD CONSTRAINT majors_pkey PRIMARY KEY (major_id);


--
-- Name: students students_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.students
    ADD CONSTRAINT students_pkey PRIMARY KEY (student_id);


--
-- Name: majors_courses majors_courses_course_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.majors_courses
    ADD CONSTRAINT majors_courses_course_id_fkey FOREIGN KEY (course_id) REFERENCES public.courses(course_id);


--
-- Name: majors_courses majors_courses_major_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.majors_courses
    ADD CONSTRAINT majors_courses_major_id_fkey FOREIGN KEY (major_id) REFERENCES public.majors(major_id);


--
-- Name: students students_major_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.students
    ADD CONSTRAINT students_major_id_fkey FOREIGN KEY (major_id) REFERENCES public.majors(major_id);


--
-- PostgreSQL database dump complete
--

