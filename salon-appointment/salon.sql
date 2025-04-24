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

DROP DATABASE salon;
--
-- Name: salon; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE salon WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE salon OWNER TO freecodecamp;

\connect salon

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
-- Name: appointments; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.appointments (
    appointment_id integer NOT NULL,
    customer_id integer,
    service_id integer,
    "time" character varying(10)
);


ALTER TABLE public.appointments OWNER TO freecodecamp;

--
-- Name: appointments_appointment_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.appointments_appointment_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.appointments_appointment_id_seq OWNER TO freecodecamp;

--
-- Name: appointments_appointment_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.appointments_appointment_id_seq OWNED BY public.appointments.appointment_id;


--
-- Name: customers; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.customers (
    customer_id integer NOT NULL,
    phone character varying(15),
    name character varying(30)
);


ALTER TABLE public.customers OWNER TO freecodecamp;

--
-- Name: customers_customer_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.customers_customer_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.customers_customer_id_seq OWNER TO freecodecamp;

--
-- Name: customers_customer_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.customers_customer_id_seq OWNED BY public.customers.customer_id;


--
-- Name: services; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.services (
    service_id integer NOT NULL,
    name character varying(30)
);


ALTER TABLE public.services OWNER TO freecodecamp;

--
-- Name: services_service_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.services_service_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.services_service_id_seq OWNER TO freecodecamp;

--
-- Name: services_service_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.services_service_id_seq OWNED BY public.services.service_id;


--
-- Name: appointments appointment_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.appointments ALTER COLUMN appointment_id SET DEFAULT nextval('public.appointments_appointment_id_seq'::regclass);


--
-- Name: customers customer_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.customers ALTER COLUMN customer_id SET DEFAULT nextval('public.customers_customer_id_seq'::regclass);


--
-- Name: services service_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.services ALTER COLUMN service_id SET DEFAULT nextval('public.services_service_id_seq'::regclass);


--
-- Data for Name: appointments; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.appointments VALUES (7, 6, 1, '10:30');
INSERT INTO public.appointments VALUES (20, 17, 1, '11:50');
INSERT INTO public.appointments VALUES (21, 18, 6, '5:00 PM');
INSERT INTO public.appointments VALUES (22, 27, 6, '11:00 AM');
INSERT INTO public.appointments VALUES (23, 21, 6, '9:30 AM');
INSERT INTO public.appointments VALUES (24, 33, 4, '12:30 PM');
INSERT INTO public.appointments VALUES (25, 24, 9, '5:30 PM');
INSERT INTO public.appointments VALUES (26, 18, 4, '9:30 AM');
INSERT INTO public.appointments VALUES (27, 6, 9, '11:30 AM');
INSERT INTO public.appointments VALUES (28, 29, 12, '11:00 AM');
INSERT INTO public.appointments VALUES (29, 26, 7, '4:00 PM');
INSERT INTO public.appointments VALUES (30, 36, 5, '4:30 PM');
INSERT INTO public.appointments VALUES (31, 22, 10, '1:30 PM');
INSERT INTO public.appointments VALUES (32, 28, 3, '1:00 PM');
INSERT INTO public.appointments VALUES (33, 22, 1, '5:00 PM');
INSERT INTO public.appointments VALUES (34, 26, 2, '9:00 AM');
INSERT INTO public.appointments VALUES (35, 34, 10, '11:00 AM');
INSERT INTO public.appointments VALUES (36, 27, 12, '1:00 PM');
INSERT INTO public.appointments VALUES (37, 27, 4, '3:30 PM');
INSERT INTO public.appointments VALUES (38, 29, 8, '1:30 PM');
INSERT INTO public.appointments VALUES (39, 37, 9, '5:00 PM');
INSERT INTO public.appointments VALUES (40, 20, 4, '11:30 AM');
INSERT INTO public.appointments VALUES (41, 34, 7, '5:30 PM');
INSERT INTO public.appointments VALUES (42, 30, 4, '5:30 PM');
INSERT INTO public.appointments VALUES (43, 18, 4, '10:00 AM');
INSERT INTO public.appointments VALUES (44, 29, 5, '1:30 PM');
INSERT INTO public.appointments VALUES (45, 32, 7, '3:30 PM');
INSERT INTO public.appointments VALUES (46, 23, 2, '2:30 PM');
INSERT INTO public.appointments VALUES (47, 22, 10, '4:00 PM');
INSERT INTO public.appointments VALUES (48, 20, 4, '3:00 PM');
INSERT INTO public.appointments VALUES (49, 36, 11, '6:00 PM');
INSERT INTO public.appointments VALUES (50, 35, 10, '1:00 PM');
INSERT INTO public.appointments VALUES (51, 36, 9, '12:00 PM');
INSERT INTO public.appointments VALUES (52, 6, 6, '6:00 PM');
INSERT INTO public.appointments VALUES (53, 27, 7, '5:30 PM');
INSERT INTO public.appointments VALUES (54, 20, 7, '11:00 AM');
INSERT INTO public.appointments VALUES (55, 22, 2, '1:00 PM');
INSERT INTO public.appointments VALUES (56, 17, 6, '12:30 PM');
INSERT INTO public.appointments VALUES (57, 30, 12, '2:00 PM');
INSERT INTO public.appointments VALUES (58, 28, 1, '6:00 PM');
INSERT INTO public.appointments VALUES (59, 37, 8, '2:30 PM');
INSERT INTO public.appointments VALUES (60, 32, 10, '2:30 PM');
INSERT INTO public.appointments VALUES (61, 33, 12, '3:30 PM');
INSERT INTO public.appointments VALUES (62, 32, 2, '1:00 PM');
INSERT INTO public.appointments VALUES (63, 29, 1, '11:00 AM');
INSERT INTO public.appointments VALUES (64, 30, 7, '10:00 AM');
INSERT INTO public.appointments VALUES (65, 31, 6, '4:30 PM');
INSERT INTO public.appointments VALUES (66, 30, 11, '10:30 AM');
INSERT INTO public.appointments VALUES (67, 33, 10, '2:00 PM');
INSERT INTO public.appointments VALUES (68, 26, 2, '10:30 AM');
INSERT INTO public.appointments VALUES (69, 33, 3, '1:00 PM');
INSERT INTO public.appointments VALUES (70, 25, 8, '5:30 PM');


--
-- Data for Name: customers; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.customers VALUES (6, '555-555-5555', 'Fabio');
INSERT INTO public.customers VALUES (17, '222-2222', 'Adrian');
INSERT INTO public.customers VALUES (18, '555-1001', 'Alice');
INSERT INTO public.customers VALUES (19, '555-1002', 'Bob');
INSERT INTO public.customers VALUES (20, '555-1003', 'Charlie');
INSERT INTO public.customers VALUES (21, '555-1004', 'David');
INSERT INTO public.customers VALUES (22, '555-1005', 'Emma');
INSERT INTO public.customers VALUES (23, '555-1006', 'Frank');
INSERT INTO public.customers VALUES (24, '555-1007', 'Grace');
INSERT INTO public.customers VALUES (25, '555-1008', 'Henry');
INSERT INTO public.customers VALUES (26, '555-1009', 'Ivy');
INSERT INTO public.customers VALUES (27, '555-1010', 'Jack');
INSERT INTO public.customers VALUES (28, '555-1011', 'Kate');
INSERT INTO public.customers VALUES (29, '555-1012', 'Leo');
INSERT INTO public.customers VALUES (30, '555-1013', 'Mia');
INSERT INTO public.customers VALUES (31, '555-1014', 'Noah');
INSERT INTO public.customers VALUES (32, '555-1015', 'Olivia');
INSERT INTO public.customers VALUES (33, '555-1016', 'Paul');
INSERT INTO public.customers VALUES (34, '555-1017', 'Quinn');
INSERT INTO public.customers VALUES (35, '555-1018', 'Ryan');
INSERT INTO public.customers VALUES (36, '555-1019', 'Sophia');
INSERT INTO public.customers VALUES (37, '555-1020', 'Tom');


--
-- Data for Name: services; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.services VALUES (1, 'Foot Rub');
INSERT INTO public.services VALUES (2, 'Wax');
INSERT INTO public.services VALUES (3, 'Massage');
INSERT INTO public.services VALUES (4, 'Haircut');
INSERT INTO public.services VALUES (5, 'Hair Coloring');
INSERT INTO public.services VALUES (6, 'Shaving');
INSERT INTO public.services VALUES (7, 'Facial');
INSERT INTO public.services VALUES (8, 'Manicure');
INSERT INTO public.services VALUES (9, 'Pedicure');
INSERT INTO public.services VALUES (10, 'Waxing');
INSERT INTO public.services VALUES (11, 'Scalp Treatment');
INSERT INTO public.services VALUES (12, 'Beard Trim');


--
-- Name: appointments_appointment_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.appointments_appointment_id_seq', 70, true);


--
-- Name: customers_customer_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.customers_customer_id_seq', 37, true);


--
-- Name: services_service_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.services_service_id_seq', 12, true);


--
-- Name: appointments appointments_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.appointments
    ADD CONSTRAINT appointments_pkey PRIMARY KEY (appointment_id);


--
-- Name: customers customers_phone_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.customers
    ADD CONSTRAINT customers_phone_key UNIQUE (phone);


--
-- Name: customers customers_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.customers
    ADD CONSTRAINT customers_pkey PRIMARY KEY (customer_id);


--
-- Name: services services_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.services
    ADD CONSTRAINT services_pkey PRIMARY KEY (service_id);


--
-- Name: appointments appointments_customer_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.appointments
    ADD CONSTRAINT appointments_customer_id_fkey FOREIGN KEY (customer_id) REFERENCES public.customers(customer_id);


--
-- Name: appointments appointments_service_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.appointments
    ADD CONSTRAINT appointments_service_id_fkey FOREIGN KEY (service_id) REFERENCES public.services(service_id);


--
-- PostgreSQL database dump complete
--

