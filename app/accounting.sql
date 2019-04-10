--
-- PostgreSQL database dump
--

-- Dumped from database version 10.7
-- Dumped by pg_dump version 10.7

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: modal; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.modal (
    id_barang integer NOT NULL,
    nama_barang character varying(200),
    jumlah_barang integer,
    satuan character varying(200),
    harga_beli integer,
    harga_jual integer
);


ALTER TABLE public.modal OWNER TO postgres;

--
-- Name: modal_id_barang_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.modal_id_barang_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.modal_id_barang_seq OWNER TO postgres;

--
-- Name: modal_id_barang_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.modal_id_barang_seq OWNED BY public.modal.id_barang;


--
-- Name: pembeli; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.pembeli (
    id_pembeli integer NOT NULL,
    id_ integer,
    jumlah_belanja integer
);


ALTER TABLE public.pembeli OWNER TO postgres;

--
-- Name: pembeli_id_pembeli_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.pembeli_id_pembeli_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.pembeli_id_pembeli_seq OWNER TO postgres;

--
-- Name: pembeli_id_pembeli_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.pembeli_id_pembeli_seq OWNED BY public.pembeli.id_pembeli;


--
-- Name: modal id_barang; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.modal ALTER COLUMN id_barang SET DEFAULT nextval('public.modal_id_barang_seq'::regclass);


--
-- Name: pembeli id_pembeli; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pembeli ALTER COLUMN id_pembeli SET DEFAULT nextval('public.pembeli_id_pembeli_seq'::regclass);


--
-- Data for Name: modal; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.modal (id_barang, nama_barang, jumlah_barang, satuan, harga_beli, harga_jual) FROM stdin;
7	ember	5	Unit	10000	1000000
8	panci	8	Unit	15000	800000
9	teplon	5	Unit	20000	50000
10	teplon	5	Unit	20000	50000
11	hihid	5	Unit	20000	50000
12	tutup saji	3	unit	35000	50000
13	tutup saji	3	unit	35000	50000
14	tutup saji	3	unit	35000	50000
15	tutup saji	3	unit	35000	50000
16	minyak	20	Liter	5000	10000
17	tutup saji	45	unit	100	5000
18	pensil alis	20	unit	2000	5000
19	piring	20	pcs	2000	10000
\.


--
-- Data for Name: pembeli; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.pembeli (id_pembeli, id_, jumlah_belanja) FROM stdin;
1	7	5
2	7	5
3	7	5
4	7	5
\.


--
-- Name: modal_id_barang_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.modal_id_barang_seq', 19, true);


--
-- Name: pembeli_id_pembeli_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.pembeli_id_pembeli_seq', 4, true);


--
-- Name: modal modal_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.modal
    ADD CONSTRAINT modal_pkey PRIMARY KEY (id_barang);


--
-- Name: pembeli pembeli_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pembeli
    ADD CONSTRAINT pembeli_pkey PRIMARY KEY (id_pembeli);


--
-- Name: pembeli pembeli_id__fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pembeli
    ADD CONSTRAINT pembeli_id__fkey FOREIGN KEY (id_) REFERENCES public.modal(id_barang);


--
-- PostgreSQL database dump complete
--

