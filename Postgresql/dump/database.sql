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
    aid bigint NOT NULL,
    aname character varying(50) NOT NULL,
    cruisingrange bigint NOT NULL,
    c_id_fk bigint
);


ALTER TABLE public.aircraft OWNER TO postgres;

--
-- Name: aircraft_aid_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.aircraft_aid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.aircraft_aid_seq OWNER TO postgres;

--
-- Name: aircraft_aid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.aircraft_aid_seq OWNED BY public.aircraft.aid;


--
-- Name: aircraft_cruisingrange_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.aircraft_cruisingrange_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.aircraft_cruisingrange_seq OWNER TO postgres;

--
-- Name: aircraft_cruisingrange_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.aircraft_cruisingrange_seq OWNED BY public.aircraft.cruisingrange;


--
-- Name: certified; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.certified (
    eid bigint NOT NULL,
    aid bigint NOT NULL,
    emp_id_fk bigint
);


ALTER TABLE public.certified OWNER TO postgres;

--
-- Name: certified_aid_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.certified_aid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.certified_aid_seq OWNER TO postgres;

--
-- Name: certified_aid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.certified_aid_seq OWNED BY public.certified.aid;


--
-- Name: certified_eid_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.certified_eid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.certified_eid_seq OWNER TO postgres;

--
-- Name: certified_eid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.certified_eid_seq OWNED BY public.certified.eid;


--
-- Name: employees; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.employees (
    eid bigint NOT NULL,
    ename character varying(50) NOT NULL,
    salary bigint NOT NULL
);


ALTER TABLE public.employees OWNER TO postgres;

--
-- Name: employees_eid_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.employees_eid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.employees_eid_seq OWNER TO postgres;

--
-- Name: employees_eid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.employees_eid_seq OWNED BY public.employees.eid;


--
-- Name: employees_salary_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.employees_salary_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.employees_salary_seq OWNER TO postgres;

--
-- Name: employees_salary_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.employees_salary_seq OWNED BY public.employees.salary;


--
-- Name: flights; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.flights (
    flno bigint NOT NULL,
    from_ character varying(50) NOT NULL,
    to_ character varying(50) NOT NULL,
    distance bigint NOT NULL,
    departs character varying(10) NOT NULL,
    arrives character varying(10) NOT NULL,
    price bigint NOT NULL,
    emp_id_fk bigint
);


ALTER TABLE public.flights OWNER TO postgres;

--
-- Name: flights_distance_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.flights_distance_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.flights_distance_seq OWNER TO postgres;

--
-- Name: flights_distance_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.flights_distance_seq OWNED BY public.flights.distance;


--
-- Name: flights_flno_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.flights_flno_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.flights_flno_seq OWNER TO postgres;

--
-- Name: flights_flno_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.flights_flno_seq OWNED BY public.flights.flno;


--
-- Name: flights_price_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.flights_price_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.flights_price_seq OWNER TO postgres;

--
-- Name: flights_price_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.flights_price_seq OWNED BY public.flights.price;


--
-- Name: aircraft aid; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aircraft ALTER COLUMN aid SET DEFAULT nextval('public.aircraft_aid_seq'::regclass);


--
-- Name: aircraft cruisingrange; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aircraft ALTER COLUMN cruisingrange SET DEFAULT nextval('public.aircraft_cruisingrange_seq'::regclass);


--
-- Name: certified eid; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.certified ALTER COLUMN eid SET DEFAULT nextval('public.certified_eid_seq'::regclass);


--
-- Name: certified aid; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.certified ALTER COLUMN aid SET DEFAULT nextval('public.certified_aid_seq'::regclass);


--
-- Name: employees eid; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.employees ALTER COLUMN eid SET DEFAULT nextval('public.employees_eid_seq'::regclass);


--
-- Name: employees salary; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.employees ALTER COLUMN salary SET DEFAULT nextval('public.employees_salary_seq'::regclass);


--
-- Name: flights flno; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.flights ALTER COLUMN flno SET DEFAULT nextval('public.flights_flno_seq'::regclass);


--
-- Name: flights distance; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.flights ALTER COLUMN distance SET DEFAULT nextval('public.flights_distance_seq'::regclass);


--
-- Name: flights price; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.flights ALTER COLUMN price SET DEFAULT nextval('public.flights_price_seq'::regclass);


--
-- Data for Name: aircraft; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.aircraft (aid, aname, cruisingrange, c_id_fk) FROM stdin;
101	Boeing	3000	101
103	American	4000	103
105	Breeze	1200	105
102	Alaska	4000	102
104	Avelo	6000	104
106	Jetblue	5000	106
\.


--
-- Data for Name: certified; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.certified (eid, aid, emp_id_fk) FROM stdin;
2	102	2
3	103	3
5	105	5
8	102	8
1	101	1
6	102	6
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
10	Norah	5500
11	kalpana	57000
\.


--
-- Data for Name: flights; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.flights (flno, from_, to_, distance, departs, arrives, price, emp_id_fk) FROM stdin;
101	Los Angeles	Honlulu	2558	5pm	7pm	410	101
102	Madison	New York	821	4pm	6pm	216	102
103	Los Angeles	Chicago	1740	4am	8am	800	103
104	Honlulu	Madison	4166	6pm	3am	742	104
105	Los Angeles	Honlulu	148	1pm	2pm	6000	105
106	Los Angeles	Honlulu	4238	5pm	9pm	679	106
\.


--
-- Name: aircraft_aid_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.aircraft_aid_seq', 1, false);


--
-- Name: aircraft_cruisingrange_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.aircraft_cruisingrange_seq', 1, false);


--
-- Name: certified_aid_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.certified_aid_seq', 1, false);


--
-- Name: certified_eid_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.certified_eid_seq', 1, false);


--
-- Name: employees_eid_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.employees_eid_seq', 1, false);


--
-- Name: employees_salary_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.employees_salary_seq', 1, false);


--
-- Name: flights_distance_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.flights_distance_seq', 1, false);


--
-- Name: flights_flno_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.flights_flno_seq', 1, false);


--
-- Name: flights_price_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.flights_price_seq', 1, false);


--
-- Name: aircraft aircraft_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aircraft
    ADD CONSTRAINT aircraft_pkey PRIMARY KEY (aid);


--
-- Name: certified certified_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.certified
    ADD CONSTRAINT certified_pkey PRIMARY KEY (eid);


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
-- Name: aircraft aircraft_c_id_fk_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aircraft
    ADD CONSTRAINT aircraft_c_id_fk_fkey FOREIGN KEY (c_id_fk) REFERENCES public.aircraft(aid);


--
-- Name: certified certified_emp_id_fk_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.certified
    ADD CONSTRAINT certified_emp_id_fk_fkey FOREIGN KEY (emp_id_fk) REFERENCES public.employees(eid);


--
-- Name: flights flights_emp_id_fk_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.flights
    ADD CONSTRAINT flights_emp_id_fk_fkey FOREIGN KEY (emp_id_fk) REFERENCES public.flights(flno);


--
-- PostgreSQL database dump complete
--

