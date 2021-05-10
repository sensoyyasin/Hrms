--
-- PostgreSQL database dump
--

-- Dumped from database version 13.2
-- Dumped by pg_dump version 13.2

-- Started on 2021-05-10 22:55:08

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
-- TOC entry 200 (class 1259 OID 16619)
-- Name: Departments; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Departments" (
    id integer NOT NULL,
    name character varying(100)
);


ALTER TABLE public."Departments" OWNER TO postgres;

--
-- TOC entry 201 (class 1259 OID 16622)
-- Name: Employers; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Employers" (
    id integer NOT NULL,
    name character varying(100),
    "Website" character varying(100),
    "Website_Email" character varying(100),
    "Password" character varying(100),
    "Website_phone" character varying(50)
);


ALTER TABLE public."Employers" OWNER TO postgres;

--
-- TOC entry 202 (class 1259 OID 16625)
-- Name: JobSeekers; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."JobSeekers" (
    id integer NOT NULL,
    name character varying(50),
    "lastName" character varying(75),
    birthdate date,
    "TCNO" character varying(100)
);


ALTER TABLE public."JobSeekers" OWNER TO postgres;

--
-- TOC entry 203 (class 1259 OID 16628)
-- Name: SystemPersonnel; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."SystemPersonnel" (
    id integer NOT NULL,
    name character varying(50),
    "lastName" character varying(75),
    "Email" character varying(100),
    phone character varying(75)
);


ALTER TABLE public."SystemPersonnel" OWNER TO postgres;

--
-- TOC entry 204 (class 1259 OID 16631)
-- Name: Users; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Users" (
    id integer NOT NULL,
    "Email" character varying(100),
    "Password" character varying(100),
    "Email_verified" boolean
);


ALTER TABLE public."Users" OWNER TO postgres;

--
-- TOC entry 206 (class 1259 OID 16851)
-- Name: hibernate_sequence; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.hibernate_sequence
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.hibernate_sequence OWNER TO postgres;

--
-- TOC entry 205 (class 1259 OID 16846)
-- Name: job_positions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.job_positions (
    id integer NOT NULL,
    position_name character varying(255)
);


ALTER TABLE public.job_positions OWNER TO postgres;

--
-- TOC entry 3012 (class 0 OID 16619)
-- Dependencies: 200
-- Data for Name: Departments; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Departments" (id, name) FROM stdin;
\.


--
-- TOC entry 3013 (class 0 OID 16622)
-- Dependencies: 201
-- Data for Name: Employers; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Employers" (id, name, "Website", "Website_Email", "Password", "Website_phone") FROM stdin;
\.


--
-- TOC entry 3014 (class 0 OID 16625)
-- Dependencies: 202
-- Data for Name: JobSeekers; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."JobSeekers" (id, name, "lastName", birthdate, "TCNO") FROM stdin;
\.


--
-- TOC entry 3015 (class 0 OID 16628)
-- Dependencies: 203
-- Data for Name: SystemPersonnel; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."SystemPersonnel" (id, name, "lastName", "Email", phone) FROM stdin;
\.


--
-- TOC entry 3016 (class 0 OID 16631)
-- Dependencies: 204
-- Data for Name: Users; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Users" (id, "Email", "Password", "Email_verified") FROM stdin;
\.


--
-- TOC entry 3017 (class 0 OID 16846)
-- Dependencies: 205
-- Data for Name: job_positions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.job_positions (id, position_name) FROM stdin;
\.


--
-- TOC entry 3024 (class 0 OID 0)
-- Dependencies: 206
-- Name: hibernate_sequence; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.hibernate_sequence', 1, false);


--
-- TOC entry 2871 (class 2606 OID 16635)
-- Name: Departments Departments_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Departments"
    ADD CONSTRAINT "Departments_pkey" PRIMARY KEY (id);


--
-- TOC entry 2873 (class 2606 OID 16643)
-- Name: Employers Employers_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Employers"
    ADD CONSTRAINT "Employers_pkey" PRIMARY KEY (id);


--
-- TOC entry 2875 (class 2606 OID 16645)
-- Name: JobSeekers JobSeekers_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."JobSeekers"
    ADD CONSTRAINT "JobSeekers_pkey" PRIMARY KEY (id);


--
-- TOC entry 2877 (class 2606 OID 16647)
-- Name: SystemPersonnel SystemPersonnel_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."SystemPersonnel"
    ADD CONSTRAINT "SystemPersonnel_pkey" PRIMARY KEY (id);


--
-- TOC entry 2879 (class 2606 OID 16649)
-- Name: Users Users_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Users_pkey" PRIMARY KEY (id);


--
-- TOC entry 2881 (class 2606 OID 16850)
-- Name: job_positions job_positions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.job_positions
    ADD CONSTRAINT job_positions_pkey PRIMARY KEY (id);


-- Completed on 2021-05-10 22:55:08

--
-- PostgreSQL database dump complete
--

