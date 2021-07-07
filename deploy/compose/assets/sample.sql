--
-- PostgreSQL database dump
--

-- Dumped from database version 10.17 (Debian 10.17-1.pgdg90+1)
-- Dumped by pg_dump version 13.2

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

--
-- Name: iris_data; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.iris_data (
    sepal_length double precision,
    sepal_width double precision,
    petal_length double precision,
    petal_width double precision,
    variety character varying
);


ALTER TABLE public.iris_data OWNER TO postgres;

--
-- Data for Name: iris_data; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.iris_data (sepal_length, sepal_width, petal_length, petal_width, variety) FROM stdin;
5.09999999999999964	3.5	1.39999999999999991	0.200000000000000011	Setosa
4.90000000000000036	3	1.39999999999999991	0.200000000000000011	Setosa
4.70000000000000018	3.20000000000000018	1.30000000000000004	0.200000000000000011	Setosa
4.59999999999999964	3.10000000000000009	1.5	0.200000000000000011	Setosa
5	3.60000000000000009	1.39999999999999991	0.200000000000000011	Setosa
5.40000000000000036	3.89999999999999991	1.69999999999999996	0.400000000000000022	Setosa
4.59999999999999964	3.39999999999999991	1.39999999999999991	0.299999999999999989	Setosa
5	3.39999999999999991	1.5	0.200000000000000011	Setosa
4.40000000000000036	2.89999999999999991	1.39999999999999991	0.200000000000000011	Setosa
4.90000000000000036	3.10000000000000009	1.5	0.100000000000000006	Setosa
5.40000000000000036	3.70000000000000018	1.5	0.200000000000000011	Setosa
4.79999999999999982	3.39999999999999991	1.60000000000000009	0.200000000000000011	Setosa
4.79999999999999982	3	1.39999999999999991	0.100000000000000006	Setosa
4.29999999999999982	3	1.10000000000000009	0.100000000000000006	Setosa
5.79999999999999982	4	1.19999999999999996	0.200000000000000011	Setosa
5.70000000000000018	4.40000000000000036	1.5	0.400000000000000022	Setosa
5.40000000000000036	3.89999999999999991	1.30000000000000004	0.400000000000000022	Setosa
5.09999999999999964	3.5	1.39999999999999991	0.299999999999999989	Setosa
5.70000000000000018	3.79999999999999982	1.69999999999999996	0.299999999999999989	Setosa
5.09999999999999964	3.79999999999999982	1.5	0.299999999999999989	Setosa
5.40000000000000036	3.39999999999999991	1.69999999999999996	0.200000000000000011	Setosa
5.09999999999999964	3.70000000000000018	1.5	0.400000000000000022	Setosa
4.59999999999999964	3.60000000000000009	1	0.200000000000000011	Setosa
5.09999999999999964	3.29999999999999982	1.69999999999999996	0.5	Setosa
4.79999999999999982	3.39999999999999991	1.89999999999999991	0.200000000000000011	Setosa
5	3	1.60000000000000009	0.200000000000000011	Setosa
5	3.39999999999999991	1.60000000000000009	0.400000000000000022	Setosa
5.20000000000000018	3.5	1.5	0.200000000000000011	Setosa
5.20000000000000018	3.39999999999999991	1.39999999999999991	0.200000000000000011	Setosa
4.70000000000000018	3.20000000000000018	1.60000000000000009	0.200000000000000011	Setosa
4.79999999999999982	3.10000000000000009	1.60000000000000009	0.200000000000000011	Setosa
5.40000000000000036	3.39999999999999991	1.5	0.400000000000000022	Setosa
5.20000000000000018	4.09999999999999964	1.5	0.100000000000000006	Setosa
5.5	4.20000000000000018	1.39999999999999991	0.200000000000000011	Setosa
4.90000000000000036	3.10000000000000009	1.5	0.200000000000000011	Setosa
5	3.20000000000000018	1.19999999999999996	0.200000000000000011	Setosa
5.5	3.5	1.30000000000000004	0.200000000000000011	Setosa
4.90000000000000036	3.60000000000000009	1.39999999999999991	0.100000000000000006	Setosa
4.40000000000000036	3	1.30000000000000004	0.200000000000000011	Setosa
5.09999999999999964	3.39999999999999991	1.5	0.200000000000000011	Setosa
5	3.5	1.30000000000000004	0.299999999999999989	Setosa
4.5	2.29999999999999982	1.30000000000000004	0.299999999999999989	Setosa
4.40000000000000036	3.20000000000000018	1.30000000000000004	0.200000000000000011	Setosa
5	3.5	1.60000000000000009	0.599999999999999978	Setosa
5.09999999999999964	3.79999999999999982	1.89999999999999991	0.400000000000000022	Setosa
4.79999999999999982	3	1.39999999999999991	0.299999999999999989	Setosa
5.09999999999999964	3.79999999999999982	1.60000000000000009	0.200000000000000011	Setosa
4.59999999999999964	3.20000000000000018	1.39999999999999991	0.200000000000000011	Setosa
5.29999999999999982	3.70000000000000018	1.5	0.200000000000000011	Setosa
5	3.29999999999999982	1.39999999999999991	0.200000000000000011	Setosa
7	3.20000000000000018	4.70000000000000018	1.39999999999999991	Versicolor
6.40000000000000036	3.20000000000000018	4.5	1.5	Versicolor
6.90000000000000036	3.10000000000000009	4.90000000000000036	1.5	Versicolor
5.5	2.29999999999999982	4	1.30000000000000004	Versicolor
6.5	2.79999999999999982	4.59999999999999964	1.5	Versicolor
5.70000000000000018	2.79999999999999982	4.5	1.30000000000000004	Versicolor
6.29999999999999982	3.29999999999999982	4.70000000000000018	1.60000000000000009	Versicolor
4.90000000000000036	2.39999999999999991	3.29999999999999982	1	Versicolor
6.59999999999999964	2.89999999999999991	4.59999999999999964	1.30000000000000004	Versicolor
5.20000000000000018	2.70000000000000018	3.89999999999999991	1.39999999999999991	Versicolor
5	2	3.5	1	Versicolor
5.90000000000000036	3	4.20000000000000018	1.5	Versicolor
6	2.20000000000000018	4	1	Versicolor
6.09999999999999964	2.89999999999999991	4.70000000000000018	1.39999999999999991	Versicolor
5.59999999999999964	2.89999999999999991	3.60000000000000009	1.30000000000000004	Versicolor
6.70000000000000018	3.10000000000000009	4.40000000000000036	1.39999999999999991	Versicolor
5.59999999999999964	3	4.5	1.5	Versicolor
5.79999999999999982	2.70000000000000018	4.09999999999999964	1	Versicolor
6.20000000000000018	2.20000000000000018	4.5	1.5	Versicolor
5.59999999999999964	2.5	3.89999999999999991	1.10000000000000009	Versicolor
5.90000000000000036	3.20000000000000018	4.79999999999999982	1.80000000000000004	Versicolor
6.09999999999999964	2.79999999999999982	4	1.30000000000000004	Versicolor
6.29999999999999982	2.5	4.90000000000000036	1.5	Versicolor
6.09999999999999964	2.79999999999999982	4.70000000000000018	1.19999999999999996	Versicolor
6.40000000000000036	2.89999999999999991	4.29999999999999982	1.30000000000000004	Versicolor
6.59999999999999964	3	4.40000000000000036	1.39999999999999991	Versicolor
6.79999999999999982	2.79999999999999982	4.79999999999999982	1.39999999999999991	Versicolor
6.70000000000000018	3	5	1.69999999999999996	Versicolor
6	2.89999999999999991	4.5	1.5	Versicolor
5.70000000000000018	2.60000000000000009	3.5	1	Versicolor
5.5	2.39999999999999991	3.79999999999999982	1.10000000000000009	Versicolor
5.5	2.39999999999999991	3.70000000000000018	1	Versicolor
5.79999999999999982	2.70000000000000018	3.89999999999999991	1.19999999999999996	Versicolor
6	2.70000000000000018	5.09999999999999964	1.60000000000000009	Versicolor
5.40000000000000036	3	4.5	1.5	Versicolor
6	3.39999999999999991	4.5	1.60000000000000009	Versicolor
6.70000000000000018	3.10000000000000009	4.70000000000000018	1.5	Versicolor
6.29999999999999982	2.29999999999999982	4.40000000000000036	1.30000000000000004	Versicolor
5.59999999999999964	3	4.09999999999999964	1.30000000000000004	Versicolor
5.5	2.5	4	1.30000000000000004	Versicolor
5.5	2.60000000000000009	4.40000000000000036	1.19999999999999996	Versicolor
6.09999999999999964	3	4.59999999999999964	1.39999999999999991	Versicolor
5.79999999999999982	2.60000000000000009	4	1.19999999999999996	Versicolor
5	2.29999999999999982	3.29999999999999982	1	Versicolor
5.59999999999999964	2.70000000000000018	4.20000000000000018	1.30000000000000004	Versicolor
5.70000000000000018	3	4.20000000000000018	1.19999999999999996	Versicolor
5.70000000000000018	2.89999999999999991	4.20000000000000018	1.30000000000000004	Versicolor
6.20000000000000018	2.89999999999999991	4.29999999999999982	1.30000000000000004	Versicolor
5.09999999999999964	2.5	3	1.10000000000000009	Versicolor
5.70000000000000018	2.79999999999999982	4.09999999999999964	1.30000000000000004	Versicolor
6.29999999999999982	3.29999999999999982	6	2.5	Virginica
5.79999999999999982	2.70000000000000018	5.09999999999999964	1.89999999999999991	Virginica
7.09999999999999964	3	5.90000000000000036	2.10000000000000009	Virginica
6.29999999999999982	2.89999999999999991	5.59999999999999964	1.80000000000000004	Virginica
6.5	3	5.79999999999999982	2.20000000000000018	Virginica
7.59999999999999964	3	6.59999999999999964	2.10000000000000009	Virginica
4.90000000000000036	2.5	4.5	1.69999999999999996	Virginica
7.29999999999999982	2.89999999999999991	6.29999999999999982	1.80000000000000004	Virginica
6.70000000000000018	2.5	5.79999999999999982	1.80000000000000004	Virginica
7.20000000000000018	3.60000000000000009	6.09999999999999964	2.5	Virginica
6.5	3.20000000000000018	5.09999999999999964	2	Virginica
6.40000000000000036	2.70000000000000018	5.29999999999999982	1.89999999999999991	Virginica
6.79999999999999982	3	5.5	2.10000000000000009	Virginica
5.70000000000000018	2.5	5	2	Virginica
5.79999999999999982	2.79999999999999982	5.09999999999999964	2.39999999999999991	Virginica
6.40000000000000036	3.20000000000000018	5.29999999999999982	2.29999999999999982	Virginica
6.5	3	5.5	1.80000000000000004	Virginica
7.70000000000000018	3.79999999999999982	6.70000000000000018	2.20000000000000018	Virginica
7.70000000000000018	2.60000000000000009	6.90000000000000036	2.29999999999999982	Virginica
6	2.20000000000000018	5	1.5	Virginica
6.90000000000000036	3.20000000000000018	5.70000000000000018	2.29999999999999982	Virginica
5.59999999999999964	2.79999999999999982	4.90000000000000036	2	Virginica
7.70000000000000018	2.79999999999999982	6.70000000000000018	2	Virginica
6.29999999999999982	2.70000000000000018	4.90000000000000036	1.80000000000000004	Virginica
6.70000000000000018	3.29999999999999982	5.70000000000000018	2.10000000000000009	Virginica
7.20000000000000018	3.20000000000000018	6	1.80000000000000004	Virginica
6.20000000000000018	2.79999999999999982	4.79999999999999982	1.80000000000000004	Virginica
6.09999999999999964	3	4.90000000000000036	1.80000000000000004	Virginica
6.40000000000000036	2.79999999999999982	5.59999999999999964	2.10000000000000009	Virginica
7.20000000000000018	3	5.79999999999999982	1.60000000000000009	Virginica
7.40000000000000036	2.79999999999999982	6.09999999999999964	1.89999999999999991	Virginica
7.90000000000000036	3.79999999999999982	6.40000000000000036	2	Virginica
6.40000000000000036	2.79999999999999982	5.59999999999999964	2.20000000000000018	Virginica
6.29999999999999982	2.79999999999999982	5.09999999999999964	1.5	Virginica
6.09999999999999964	2.60000000000000009	5.59999999999999964	1.39999999999999991	Virginica
7.70000000000000018	3	6.09999999999999964	2.29999999999999982	Virginica
6.29999999999999982	3.39999999999999991	5.59999999999999964	2.39999999999999991	Virginica
6.40000000000000036	3.10000000000000009	5.5	1.80000000000000004	Virginica
6	3	4.79999999999999982	1.80000000000000004	Virginica
6.90000000000000036	3.10000000000000009	5.40000000000000036	2.10000000000000009	Virginica
6.70000000000000018	3.10000000000000009	5.59999999999999964	2.39999999999999991	Virginica
6.90000000000000036	3.10000000000000009	5.09999999999999964	2.29999999999999982	Virginica
5.79999999999999982	2.70000000000000018	5.09999999999999964	1.89999999999999991	Virginica
6.79999999999999982	3.20000000000000018	5.90000000000000036	2.29999999999999982	Virginica
6.70000000000000018	3.29999999999999982	5.70000000000000018	2.5	Virginica
6.70000000000000018	3	5.20000000000000018	2.29999999999999982	Virginica
6.29999999999999982	2.5	5	1.89999999999999991	Virginica
6.5	3	5.20000000000000018	2	Virginica
6.20000000000000018	3.39999999999999991	5.40000000000000036	2.29999999999999982	Virginica
5.90000000000000036	3	5.09999999999999964	1.80000000000000004	Virginica
\.


--
-- PostgreSQL database dump complete
--

