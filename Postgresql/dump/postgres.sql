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
-- Name: clientprojects; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.clientprojects (
    project_id character varying(10) NOT NULL,
    client_id character varying(10) NOT NULL,
    cpid character varying(10) NOT NULL
);


ALTER TABLE public.clientprojects OWNER TO postgres;

--
-- Name: clients; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.clients (
    clientid character varying(10) NOT NULL,
    clientname character varying(20) NOT NULL
);


ALTER TABLE public.clients OWNER TO postgres;

--
-- Name: departments; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.departments (
    dept_id character varying(5) NOT NULL,
    dept_name character varying(10)
);


ALTER TABLE public.departments OWNER TO postgres;

--
-- Name: employee; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.employee (
    emp_first_name character varying(50) NOT NULL,
    emp_last_name character varying(50) NOT NULL,
    gender character varying(7) NOT NULL,
    date_of_birth date NOT NULL,
    email character varying(150),
    salary integer,
    eid character varying(10) NOT NULL,
    dept character varying(10),
    dept_id_fk character varying
);


ALTER TABLE public.employee OWNER TO postgres;

--
-- Name: project; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.project (
    project_id bigint NOT NULL,
    project_name character varying(50) NOT NULL
);


ALTER TABLE public.project OWNER TO postgres;

--
-- Name: project_assigned; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.project_assigned (
    eid character varying(10) NOT NULL,
    project_id integer NOT NULL
);


ALTER TABLE public.project_assigned OWNER TO postgres;

--
-- Name: project_project_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.project_project_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.project_project_id_seq OWNER TO postgres;

--
-- Name: project_project_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.project_project_id_seq OWNED BY public.project.project_id;


--
-- Name: through; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.through (
    eid character varying(10) NOT NULL,
    project_id integer NOT NULL,
    eidpk character varying(10) NOT NULL
);


ALTER TABLE public.through OWNER TO postgres;

--
-- Name: project project_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.project ALTER COLUMN project_id SET DEFAULT nextval('public.project_project_id_seq'::regclass);


--
-- Data for Name: clientprojects; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.clientprojects (project_id, client_id, cpid) FROM stdin;
1001	AMZN	1
1002	ALAI	2
1005	GGLE	5
1006	AMZN	6
1004	GGLE	8
1003	JUNG	7
\.


--
-- Data for Name: clients; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.clients (clientid, clientname) FROM stdin;
AMZN	Amazon AWS
JUNG	Junglee games
ALAI	All AI
GGLE	Google
PLAY	Play with store
\.


--
-- Data for Name: departments; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.departments (dept_id, dept_name) FROM stdin;
101IT	IT
102HR	HR
103SL	SALES
104AC	ACCOUNTS
103RE	RESEARCH
\.


--
-- Data for Name: employee; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.employee (emp_first_name, emp_last_name, gender, date_of_birth, email, salary, eid, dept, dept_id_fk) FROM stdin;
Aman	Chouhan	MALE	1997-12-28	amanchouhan@gmail.com	30000	1	IT	101IT
Ankansha	sharma	FEMALE	1998-11-28	akansha@gmail.com	30000	2	IT	101IT
Niharika	kumari	FEMALE	1999-09-20	niharika@gmail.com	20000	3	IT	101IT
Kunal	kumar	MALE	1999-09-11	kunal@gmail.com	50000	4	HR	102HR
Neha	Nagar	FEMALE	1997-12-28	neha@gmail.com	25000	5	SALES	103SL
kiran	sharma	FEMALE	1998-12-24	kiran@gmail.com	30000	6	SALES	103SL
Pawan	khanna	MALE	1994-06-20	pawan@gmail.com	35000	7	SALES	103SL
krshna	kapoor	MALE	1995-08-24	krish@gmail.com	35000	8	ACCOUNTS	104AC
Thomas	smith	MALE	1990-04-20	thomas@gmail.com	30000	9	ACCOUNTS	103SL
Brijesh	Yadav	MALE	1992-03-21	brij@gmail.com	25000	10	RESEARCH	103RE
\.


--
-- Data for Name: project; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.project (project_id, project_name) FROM stdin;
1001	web_project
1002	Machine Learning
1003	Android
1005	funds analysis
1006	Cloud service
1004	mutual funds
\.


--
-- Data for Name: project_assigned; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.project_assigned (eid, project_id) FROM stdin;
1	1001
2	1002
3	1003
4	1005
5	1003
6	1006
7	1001
8	1004
9	1004
10	1001
\.


--
-- Data for Name: through; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.through (eid, project_id, eidpk) FROM stdin;
1	1001	1
1	1002	2
2	1001	3
2	1003	4
3	1002	5
3	1003	6
5	1004	7
5	1005	8
6	1004	9
10	1001	10
\.


--
-- Name: project_project_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.project_project_id_seq', 1, false);


--
-- Name: clientprojects clientprojects_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.clientprojects
    ADD CONSTRAINT clientprojects_pkey PRIMARY KEY (cpid);


--
-- Name: clients clients_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.clients
    ADD CONSTRAINT clients_pkey PRIMARY KEY (clientid);


--
-- Name: departments departments_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.departments
    ADD CONSTRAINT departments_pkey PRIMARY KEY (dept_id);


--
-- Name: employee employee_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.employee
    ADD CONSTRAINT employee_pkey PRIMARY KEY (eid);


--
-- Name: project_assigned project_assigned_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.project_assigned
    ADD CONSTRAINT project_assigned_pkey PRIMARY KEY (eid);


--
-- Name: project project_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.project
    ADD CONSTRAINT project_pkey PRIMARY KEY (project_id);


--
-- Name: through through_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.through
    ADD CONSTRAINT through_pkey PRIMARY KEY (eidpk);


--
-- Name: employee employee_dept_id_fk_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.employee
    ADD CONSTRAINT employee_dept_id_fk_fkey FOREIGN KEY (dept_id_fk) REFERENCES public.departments(dept_id);


--
-- Name: employee employee_eid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.employee
    ADD CONSTRAINT employee_eid_fkey FOREIGN KEY (eid) REFERENCES public.employee(eid);


--
-- Name: project_assigned project_assigned_eid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.project_assigned
    ADD CONSTRAINT project_assigned_eid_fkey FOREIGN KEY (eid) REFERENCES public.through(eidpk);


--
-- Name: project_assigned project_assigned_project_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.project_assigned
    ADD CONSTRAINT project_assigned_project_id_fkey FOREIGN KEY (project_id) REFERENCES public.project(project_id);


--
-- PostgreSQL database dump complete
--

