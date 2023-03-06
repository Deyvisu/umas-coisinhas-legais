--
-- PostgreSQL database dump
--

-- Dumped from database version 15.1
-- Dumped by pg_dump version 15.1

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
-- Name: Cadastro_Cliente; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Cadastro_Cliente" (
    "ID" integer NOT NULL,
    "Nome Completo" character varying(255) NOT NULL,
    "Idade" integer NOT NULL,
    "Data Nascimento" character(10) NOT NULL,
    "CPF" character(14) NOT NULL,
    "Telefone" character varying(14),
    "E-mail" character varying NOT NULL,
    "Senha" character varying(8) NOT NULL
);


ALTER TABLE public."Cadastro_Cliente" OWNER TO postgres;

--
-- Name: Cadastro_Ciente_ID_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public."Cadastro_Cliente" ALTER COLUMN "ID" ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public."Cadastro_Ciente_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: Cadastro_Endereço; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Cadastro_Endereço" (
    "ID" integer NOT NULL,
    "CEP" character varying(9) NOT NULL,
    "Nome_Rua" character varying(255) NOT NULL,
    "Numero" integer NOT NULL,
    "Complemento" character varying,
    "Nome_Bairro" character varying(255) NOT NULL,
    "Ponto_Referencia" character varying,
    "Cidade" character varying(255) NOT NULL,
    "Estado" character varying(255) NOT NULL,
    "ID_Cliente" integer NOT NULL
);


ALTER TABLE public."Cadastro_Endereço" OWNER TO postgres;

--
-- Name: Cadastro_Endereço_ID_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public."Cadastro_Endereço" ALTER COLUMN "ID" ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public."Cadastro_Endereço_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Data for Name: Cadastro_Cliente; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Cadastro_Cliente" ("ID", "Nome Completo", "Idade", "Data Nascimento", "CPF", "Telefone", "E-mail", "Senha") FROM stdin;
1	Francisco Deyvison Viana Rodrigues	22	21/03/2000	069.677.983-83	85985696765	deyvisonviana9@gmail.com	abuble
3	Douglas Viana	21	07/09/2001	123.456.789-10	85989589396	douglasviana49@gmail.com	12345
\.


--
-- Data for Name: Cadastro_Endereço; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Cadastro_Endereço" ("ID", "CEP", "Nome_Rua", "Numero", "Complemento", "Nome_Bairro", "Ponto_Referencia", "Cidade", "Estado", "ID_Cliente") FROM stdin;
\.


--
-- Name: Cadastro_Ciente_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Cadastro_Ciente_ID_seq"', 3, true);


--
-- Name: Cadastro_Endereço_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Cadastro_Endereço_ID_seq"', 1, false);


--
-- Name: Cadastro_Cliente Cadastro_Ciente_CPF_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Cadastro_Cliente"
    ADD CONSTRAINT "Cadastro_Ciente_CPF_key" UNIQUE ("CPF");


--
-- Name: Cadastro_Cliente Cadastro_Ciente_E-mail_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Cadastro_Cliente"
    ADD CONSTRAINT "Cadastro_Ciente_E-mail_key" UNIQUE ("E-mail");


--
-- Name: Cadastro_Cliente Cadastro_Ciente_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Cadastro_Cliente"
    ADD CONSTRAINT "Cadastro_Ciente_pkey" PRIMARY KEY ("ID");


--
-- Name: Cadastro_Endereço Cadastro_Endereço_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Cadastro_Endereço"
    ADD CONSTRAINT "Cadastro_Endereço_pkey" PRIMARY KEY ("ID");


--
-- Name: Cadastro_Endereço fk_cadastro_clientes; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Cadastro_Endereço"
    ADD CONSTRAINT fk_cadastro_clientes FOREIGN KEY ("ID_Cliente") REFERENCES public."Cadastro_Cliente"("ID") ON DELETE CASCADE;


--
-- PostgreSQL database dump complete
--

