--
-- PostgreSQL database dump
--

-- Dumped from database version 11.5 (Ubuntu 11.5-1.pgdg16.04+1)
-- Dumped by pg_dump version 11.5

-- Started on 2019-10-11 14:04:12

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
-- TOC entry 196 (class 1259 OID 12837528)
-- Name: admin; Type: TABLE; Schema: public; Owner: apfibvxhraexsp
--

CREATE TABLE public.admin (
    admin_id integer NOT NULL,
    admin_name text NOT NULL
);


ALTER TABLE public.admin OWNER TO apfibvxhraexsp;

--
-- TOC entry 197 (class 1259 OID 12837534)
-- Name: event; Type: TABLE; Schema: public; Owner: apfibvxhraexsp
--

CREATE TABLE public.event (
    event_id integer NOT NULL,
    user_id integer,
    admin_id integer,
    request_id integer
);


ALTER TABLE public.event OWNER TO apfibvxhraexsp;

--
-- TOC entry 198 (class 1259 OID 12837537)
-- Name: request; Type: TABLE; Schema: public; Owner: apfibvxhraexsp
--

CREATE TABLE public.request (
    request_id integer NOT NULL,
    request_title text,
    request_type text,
    request_date date DEFAULT CURRENT_DATE NOT NULL,
    request_description text,
    request_status text NOT NULL
);


ALTER TABLE public.request OWNER TO apfibvxhraexsp;

--
-- TOC entry 199 (class 1259 OID 12837544)
-- Name: users; Type: TABLE; Schema: public; Owner: apfibvxhraexsp
--

CREATE TABLE public.users (
    user_id integer NOT NULL,
    user_name integer NOT NULL,
    request_id integer NOT NULL
);


ALTER TABLE public.users OWNER TO apfibvxhraexsp;

--
-- TOC entry 3847 (class 0 OID 12837528)
-- Dependencies: 196
-- Data for Name: admin; Type: TABLE DATA; Schema: public; Owner: apfibvxhraexsp
--

COPY public.admin (admin_id, admin_name) FROM stdin;
\.


--
-- TOC entry 3848 (class 0 OID 12837534)
-- Dependencies: 197
-- Data for Name: event; Type: TABLE DATA; Schema: public; Owner: apfibvxhraexsp
--

COPY public.event (event_id, user_id, admin_id, request_id) FROM stdin;
\.


--
-- TOC entry 3849 (class 0 OID 12837537)
-- Dependencies: 198
-- Data for Name: request; Type: TABLE DATA; Schema: public; Owner: apfibvxhraexsp
--

COPY public.request (request_id, request_title, request_type, request_date, request_description, request_status) FROM stdin;
\.


--
-- TOC entry 3850 (class 0 OID 12837544)
-- Dependencies: 199
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: apfibvxhraexsp
--

COPY public.users (user_id, user_name, request_id) FROM stdin;
\.


--
-- TOC entry 3715 (class 2606 OID 12837549)
-- Name: admin admin_pkey; Type: CONSTRAINT; Schema: public; Owner: apfibvxhraexsp
--

ALTER TABLE ONLY public.admin
    ADD CONSTRAINT admin_pkey PRIMARY KEY (admin_id);


--
-- TOC entry 3717 (class 2606 OID 12837551)
-- Name: event event_pkey; Type: CONSTRAINT; Schema: public; Owner: apfibvxhraexsp
--

ALTER TABLE ONLY public.event
    ADD CONSTRAINT event_pkey PRIMARY KEY (event_id);


--
-- TOC entry 3719 (class 2606 OID 12837553)
-- Name: request request_pkey; Type: CONSTRAINT; Schema: public; Owner: apfibvxhraexsp
--

ALTER TABLE ONLY public.request
    ADD CONSTRAINT request_pkey PRIMARY KEY (request_id);


--
-- TOC entry 3721 (class 2606 OID 12837555)
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: apfibvxhraexsp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- TOC entry 3722 (class 2606 OID 12837556)
-- Name: event event_admin_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: apfibvxhraexsp
--

ALTER TABLE ONLY public.event
    ADD CONSTRAINT event_admin_id_fkey FOREIGN KEY (admin_id) REFERENCES public.admin(admin_id);


--
-- TOC entry 3723 (class 2606 OID 12837561)
-- Name: event event_request_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: apfibvxhraexsp
--

ALTER TABLE ONLY public.event
    ADD CONSTRAINT event_request_id_fkey FOREIGN KEY (request_id) REFERENCES public.request(request_id);


--
-- TOC entry 3724 (class 2606 OID 12837566)
-- Name: event event_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: apfibvxhraexsp
--

ALTER TABLE ONLY public.event
    ADD CONSTRAINT event_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- TOC entry 3725 (class 2606 OID 12837571)
-- Name: users users_request_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: apfibvxhraexsp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_request_id_fkey FOREIGN KEY (request_id) REFERENCES public.request(request_id);


--
-- TOC entry 3856 (class 0 OID 0)
-- Dependencies: 3
-- Name: SCHEMA public; Type: ACL; Schema: -; Owner: apfibvxhraexsp
--

REVOKE ALL ON SCHEMA public FROM postgres;
REVOKE ALL ON SCHEMA public FROM PUBLIC;
GRANT ALL ON SCHEMA public TO apfibvxhraexsp;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- TOC entry 3857 (class 0 OID 0)
-- Dependencies: 606
-- Name: LANGUAGE plpgsql; Type: ACL; Schema: -; Owner: postgres
--

GRANT ALL ON LANGUAGE plpgsql TO apfibvxhraexsp;


-- Completed on 2019-10-11 14:04:34

--
-- PostgreSQL database dump complete
--

