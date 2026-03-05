--
-- PostgreSQL database dump
--

\restrict 7RdsHsNE6SC8JzxqTXED4bDvpuSbUS97JWHLGitwABgeTO1l8dAPmKMswjvoftg

-- Dumped from database version 18.3 (Debian 18.3-1.pgdg13+1)
-- Dumped by pg_dump version 18.3 (Debian 18.3-1.pgdg13+1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
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
-- Name: lawfirm_contact_details; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.lawfirm_contact_details (
    id integer NOT NULL,
    email text[] NOT NULL,
    website_url text[],
    phone_number text[],
    meta_id integer
);


ALTER TABLE public.lawfirm_contact_details OWNER TO admin;

--
-- Name: lawfirm_contact_details_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.lawfirm_contact_details_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.lawfirm_contact_details_id_seq OWNER TO admin;

--
-- Name: lawfirm_contact_details_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.lawfirm_contact_details_id_seq OWNED BY public.lawfirm_contact_details.id;


--
-- Name: lawfirm_meta; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.lawfirm_meta (
    id integer NOT NULL,
    name character varying(100) NOT NULL,
    admin_email character varying(50) NOT NULL,
    password_hash text NOT NULL,
    address text NOT NULL,
    avg_rating integer,
    logo_url character varying,
    firm_size integer,
    established_in integer,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    practice_area character varying(20)
);


ALTER TABLE public.lawfirm_meta OWNER TO admin;

--
-- Name: lawfirm_meta_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.lawfirm_meta_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.lawfirm_meta_id_seq OWNER TO admin;

--
-- Name: lawfirm_meta_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.lawfirm_meta_id_seq OWNED BY public.lawfirm_meta.id;


--
-- Name: lawfirm_contact_details id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.lawfirm_contact_details ALTER COLUMN id SET DEFAULT nextval('public.lawfirm_contact_details_id_seq'::regclass);


--
-- Name: lawfirm_meta id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.lawfirm_meta ALTER COLUMN id SET DEFAULT nextval('public.lawfirm_meta_id_seq'::regclass);


--
-- Name: lawfirm_contact_details lawfirm_contact_details_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.lawfirm_contact_details
    ADD CONSTRAINT lawfirm_contact_details_pkey PRIMARY KEY (id);


--
-- Name: lawfirm_meta lawfirm_meta_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.lawfirm_meta
    ADD CONSTRAINT lawfirm_meta_pkey PRIMARY KEY (id);


--
-- Name: lawfirm_contact_details lawfirm_contact_details_meta_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.lawfirm_contact_details
    ADD CONSTRAINT lawfirm_contact_details_meta_id_fkey FOREIGN KEY (meta_id) REFERENCES public.lawfirm_meta(id) ON DELETE CASCADE;


--
-- PostgreSQL database dump complete
--

\unrestrict 7RdsHsNE6SC8JzxqTXED4bDvpuSbUS97JWHLGitwABgeTO1l8dAPmKMswjvoftg

