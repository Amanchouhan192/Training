--
-- PostgreSQL database dump
--

-- Dumped from database version 11.13 (Ubuntu 11.13-1.pgdg18.04+1)
-- Dumped by pg_dump version 11.13 (Ubuntu 11.13-1.pgdg18.04+1)

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

SET default_with_oids = false;

--
-- Name: aircraft; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aircraft (
    aid integer NOT NULL,
    aname character varying(20) NOT NULL,
    cruisingrange integer NOT NULL,
    c_fk bigint
);


ALTER TABLE public.aircraft OWNER TO postgres;

--
-- Name: certified; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.certified (
    eid integer NOT NULL,
    aid integer NOT NULL,
    cpk integer NOT NULL
);


ALTER TABLE public.certified OWNER TO postgres;

--
-- Name: employees; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.employees (
    eid integer NOT NULL,
    ename character varying(50) NOT NULL,
    salary integer NOT NULL
);


ALTER TABLE public.employees OWNER TO postgres;

--
-- Name: flights; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.flights (
    flno integer NOT NULL,
    from_ character varying(50) NOT NULL,
    to_ character varying(50) NOT NULL,
    distence integer NOT NULL,
    departs character varying(10) NOT NULL,
    arrives character varying(10) NOT NULL,
    price integer NOT NULL,
    emp_fk bigint
);


ALTER TABLE public.flights OWNER TO postgres;

--
-- Data for Name: aircraft; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.aircraft (aid, aname, cruisingrange, c_fk) FROM stdin;
101	Boeing	3000	1
102	Alaska	4000	2
103	American	4000	3
104	Avelo	6000	4
105	Breeze	1200	5
106	Jetblue	5000	6
\.


--
-- Data for Name: certified; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.certified (eid, aid, cpk) FROM stdin;
1	101	1
2	102	2
3	103	3
5	104	4
8	105	5
9	102	6
2	106	7
2	105	8
3	103	9
3	104	10
3	101	11
\.


--
-- Data for Name: employees; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.employees (eid, ename, salary) FROM stdin;
1	Ron	82000
2	Harry	81000
3	Ginni	83000
4	shawn	81000
5	Gerry	70000
6	Nikita	60000
7	Richard	75000
8	Micheal	79000
9	Mili	65000
10	Norha	5500
11	kalpana	57000
12	karan	600
\.


--
-- Data for Name: flights; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.flights (flno, from_, to_, distence, departs, arrives, price, emp_fk) FROM stdin;
101	Los Angeles	Honlulu	2558	5pm	7pm	4100	1
102	Madison	New York	821	4pm	6pm	2160	2
103	Los Angeles	Chicago	1740	4pm	8pm	8000	3
104	Los Angeles	Honlulu	148	1pm	2pm	5000	4
106	Los Angeles	Honlulu	4238	5pm	9pm	679	5
105	Honlulu	Madison	4166	6pm	3am	742	6
\.


--
-- Name: aircraft aircraft_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aircraft
    ADD CONSTRAINT aircraft_pkey PRIMARY KEY (aid);


--
-- Name: certified certified_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.certified
    ADD CONSTRAINT certified_pkey PRIMARY KEY (cpk);


--
-- Name: employees employees_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.employees
    ADD CONSTRAINT employees_pkey PRIMARY KEY (eid);


--
-- Name: flights flights_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.flights
    ADD CONSTRAINT flights_pkey PRIMARY KEY (flno);


--
-- Name: aircraft aircraft_c_fk_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aircraft
    ADD CONSTRAINT aircraft_c_fk_fkey FOREIGN KEY (c_fk) REFERENCES public.certified(cpk);


--
-- Name: certified certified_cpk_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.certified
    ADD CONSTRAINT certified_cpk_fkey FOREIGN KEY (cpk) REFERENCES public.employees(eid);


--
-- Name: flights flights_emp_fk_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.flights
    ADD CONSTRAINT flights_emp_fk_fkey FOREIGN KEY (emp_fk) REFERENCES public.employees(eid);


--
-- PostgreSQL database dump complete
--

