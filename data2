--
-- PostgreSQL database dump
--

-- Dumped from database version 10.12 (Ubuntu 10.12-0ubuntu0.18.04.1)
-- Dumped by pg_dump version 10.12 (Ubuntu 10.12-0ubuntu0.18.04.1)

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
-- Name: adress; Type: TABLE; Schema: public; Owner: nathan
--

CREATE TABLE public.adress (
    id integer NOT NULL,
    name character varying(100) NOT NULL,
    adress character varying(200) NOT NULL,
    zipcode character varying(10) NOT NULL,
    city character varying(100) NOT NULL
);


ALTER TABLE public.adress OWNER TO nathan;

--
-- Name: adress_id_seq; Type: SEQUENCE; Schema: public; Owner: nathan
--

CREATE SEQUENCE public.adress_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.adress_id_seq OWNER TO nathan;

--
-- Name: adress_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: nathan
--

ALTER SEQUENCE public.adress_id_seq OWNED BY public.adress.id;


--
-- Name: aliment; Type: TABLE; Schema: public; Owner: nathan
--

CREATE TABLE public.aliment (
    id integer NOT NULL,
    name character varying(100) NOT NULL,
    price numeric(9,2) NOT NULL,
    category character varying(45) NOT NULL,
    description character varying(1000),
    picture character varying(500)
);


ALTER TABLE public.aliment OWNER TO nathan;

--
-- Name: aliment_id_seq; Type: SEQUENCE; Schema: public; Owner: nathan
--

CREATE SEQUENCE public.aliment_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.aliment_id_seq OWNER TO nathan;

--
-- Name: aliment_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: nathan
--

ALTER SEQUENCE public.aliment_id_seq OWNED BY public.aliment.id;


--
-- Name: customer; Type: TABLE; Schema: public; Owner: nathan
--

CREATE TABLE public.customer (
    person_id integer NOT NULL,
    phone character varying(20),
    adress_id integer NOT NULL
);


ALTER TABLE public.customer OWNER TO nathan;

--
-- Name: user_id_seq; Type: SEQUENCE; Schema: public; Owner: nathan
--

CREATE SEQUENCE public.user_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.user_id_seq OWNER TO nathan;

--
-- Name: user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: nathan
--

ALTER SEQUENCE public.user_id_seq OWNED BY public.customer.person_id;


--
-- Name: delivery_men; Type: TABLE; Schema: public; Owner: nathan
--

CREATE TABLE public.delivery_men (
    employe_id integer DEFAULT nextval('public.user_id_seq'::regclass) NOT NULL,
    vehicle character varying(45) NOT NULL
);


ALTER TABLE public.delivery_men OWNER TO nathan;

--
-- Name: employee; Type: TABLE; Schema: public; Owner: nathan
--

CREATE TABLE public.employee (
    person_id integer DEFAULT nextval('public.user_id_seq'::regclass) NOT NULL,
    role character varying(45) NOT NULL,
    restaurant_id integer NOT NULL
);


ALTER TABLE public.employee OWNER TO nathan;

--
-- Name: ingredient; Type: TABLE; Schema: public; Owner: nathan
--

CREATE TABLE public.ingredient (
    id integer NOT NULL,
    name character varying(100) NOT NULL,
    unit character varying(45) NOT NULL,
    price_per_unit numeric(9,2) NOT NULL,
    soldout_treshold numeric(9,2) NOT NULL
);


ALTER TABLE public.ingredient OWNER TO nathan;

--
-- Name: ingredient_id_seq; Type: SEQUENCE; Schema: public; Owner: nathan
--

CREATE SEQUENCE public.ingredient_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ingredient_id_seq OWNER TO nathan;

--
-- Name: ingredient_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: nathan
--

ALTER SEQUENCE public.ingredient_id_seq OWNED BY public.ingredient.id;


--
-- Name: person; Type: TABLE; Schema: public; Owner: nathan
--

CREATE TABLE public.person (
    id integer NOT NULL,
    name character varying(100) NOT NULL,
    last_name character varying(100) NOT NULL,
    password character varying(255) NOT NULL,
    email character varying(200) NOT NULL
);


ALTER TABLE public.person OWNER TO nathan;

--
-- Name: person_id_seq; Type: SEQUENCE; Schema: public; Owner: nathan
--

CREATE SEQUENCE public.person_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.person_id_seq OWNER TO nathan;

--
-- Name: person_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: nathan
--

ALTER SEQUENCE public.person_id_seq OWNED BY public.person.id;


--
-- Name: purchase; Type: TABLE; Schema: public; Owner: nathan
--

CREATE TABLE public.purchase (
    id integer NOT NULL,
    state character varying(45) NOT NULL,
    date timestamp without time zone NOT NULL,
    paid_price numeric(9,2),
    restaurant_id integer NOT NULL,
    person_id integer NOT NULL,
    adress_id integer NOT NULL
);


ALTER TABLE public.purchase OWNER TO nathan;

--
-- Name: purchase_aliment; Type: TABLE; Schema: public; Owner: nathan
--

CREATE TABLE public.purchase_aliment (
    id integer NOT NULL,
    purchase_id integer NOT NULL,
    aliment_id integer NOT NULL
);


ALTER TABLE public.purchase_aliment OWNER TO nathan;

--
-- Name: purchase_aliment_id_seq; Type: SEQUENCE; Schema: public; Owner: nathan
--

CREATE SEQUENCE public.purchase_aliment_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.purchase_aliment_id_seq OWNER TO nathan;

--
-- Name: purchase_aliment_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: nathan
--

ALTER SEQUENCE public.purchase_aliment_id_seq OWNED BY public.purchase_aliment.id;


--
-- Name: purchase_id_seq; Type: SEQUENCE; Schema: public; Owner: nathan
--

CREATE SEQUENCE public.purchase_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.purchase_id_seq OWNER TO nathan;

--
-- Name: purchase_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: nathan
--

ALTER SEQUENCE public.purchase_id_seq OWNED BY public.purchase.id;


--
-- Name: recipe; Type: TABLE; Schema: public; Owner: nathan
--

CREATE TABLE public.recipe (
    aliment_id integer NOT NULL,
    ingredient_id integer NOT NULL,
    quantity numeric(9,2) NOT NULL,
    is_public boolean NOT NULL
);


ALTER TABLE public.recipe OWNER TO nathan;

--
-- Name: restaurant; Type: TABLE; Schema: public; Owner: nathan
--

CREATE TABLE public.restaurant (
    id integer NOT NULL,
    name character varying(100) NOT NULL,
    description character varying(1000),
    phone character varying(20),
    picture character varying(500),
    adress_id integer NOT NULL
);


ALTER TABLE public.restaurant OWNER TO nathan;

--
-- Name: restaurant_id_seq; Type: SEQUENCE; Schema: public; Owner: nathan
--

CREATE SEQUENCE public.restaurant_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.restaurant_id_seq OWNER TO nathan;

--
-- Name: restaurant_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: nathan
--

ALTER SEQUENCE public.restaurant_id_seq OWNED BY public.restaurant.id;


--
-- Name: stock; Type: TABLE; Schema: public; Owner: nathan
--

CREATE TABLE public.stock (
    restaurant_id integer NOT NULL,
    ingredient_id integer NOT NULL,
    quantity numeric(9,2) NOT NULL
);


ALTER TABLE public.stock OWNER TO nathan;

--
-- Name: adress id; Type: DEFAULT; Schema: public; Owner: nathan
--

ALTER TABLE ONLY public.adress ALTER COLUMN id SET DEFAULT nextval('public.adress_id_seq'::regclass);


--
-- Name: aliment id; Type: DEFAULT; Schema: public; Owner: nathan
--

ALTER TABLE ONLY public.aliment ALTER COLUMN id SET DEFAULT nextval('public.aliment_id_seq'::regclass);


--
-- Name: customer person_id; Type: DEFAULT; Schema: public; Owner: nathan
--

ALTER TABLE ONLY public.customer ALTER COLUMN person_id SET DEFAULT nextval('public.user_id_seq'::regclass);


--
-- Name: ingredient id; Type: DEFAULT; Schema: public; Owner: nathan
--

ALTER TABLE ONLY public.ingredient ALTER COLUMN id SET DEFAULT nextval('public.ingredient_id_seq'::regclass);


--
-- Name: person id; Type: DEFAULT; Schema: public; Owner: nathan
--

ALTER TABLE ONLY public.person ALTER COLUMN id SET DEFAULT nextval('public.person_id_seq'::regclass);


--
-- Name: purchase id; Type: DEFAULT; Schema: public; Owner: nathan
--

ALTER TABLE ONLY public.purchase ALTER COLUMN id SET DEFAULT nextval('public.purchase_id_seq'::regclass);


--
-- Name: purchase_aliment id; Type: DEFAULT; Schema: public; Owner: nathan
--

ALTER TABLE ONLY public.purchase_aliment ALTER COLUMN id SET DEFAULT nextval('public.purchase_aliment_id_seq'::regclass);


--
-- Name: restaurant id; Type: DEFAULT; Schema: public; Owner: nathan
--

ALTER TABLE ONLY public.restaurant ALTER COLUMN id SET DEFAULT nextval('public.restaurant_id_seq'::regclass);


--
-- Data for Name: adress; Type: TABLE DATA; Schema: public; Owner: nathan
--

COPY public.adress (id, name, adress, zipcode, city) FROM stdin;
1	Pizzaria Manosque	123 rue corsair	04100	Manosque
2	Pizzaria Marseille	3 avenue de la caserne	13003	Marseille
3	Pizzaria Aix-En-Provence	42 Place Jean le bleu	13080	Aix-En-Provence
4	Maison Nathan	7 boulevard St-Michel	13015	Marseille
5	Maison Diana	15 rue Bolton	13080	Aix-En-Provence
6	Maison Nathan	7 boulevard St-Michel	13015	Marseille
\.


--
-- Data for Name: aliment; Type: TABLE DATA; Schema: public; Owner: nathan
--

COPY public.aliment (id, name, price, category, description, picture) FROM stdin;
1	Pizza Fromage	9.50	Pizza	\N	\N
2	Pizza Bolognaise	10.00	Pizza	\N	\N
3	Pizza Chèvre Miel	12.50	Pizza	\N	\N
4	Coca Cola 1.5L	3.00	Boisson	\N	\N
\.


--
-- Data for Name: customer; Type: TABLE DATA; Schema: public; Owner: nathan
--

COPY public.customer (person_id, phone, adress_id) FROM stdin;
1	0123456789	4
2	0123456789	5
\.


--
-- Data for Name: delivery_men; Type: TABLE DATA; Schema: public; Owner: nathan
--

COPY public.delivery_men (employe_id, vehicle) FROM stdin;
4	auto
5	auto
6	scooter
\.


--
-- Data for Name: employee; Type: TABLE DATA; Schema: public; Owner: nathan
--

COPY public.employee (person_id, role, restaurant_id) FROM stdin;
3	Pizzaiolo	1
4	Pizzaiolo	2
5	Pizzaiolo	3
6	Delivery	1
7	Delivery	2
8	Delivery	3
\.


--
-- Data for Name: ingredient; Type: TABLE DATA; Schema: public; Owner: nathan
--

COPY public.ingredient (id, name, unit, price_per_unit, soldout_treshold) FROM stdin;
1	Farine	g	0.01	1000.00
2	Sel	g	0.01	100.00
3	Emmental	g	0.01	1000.00
4	Chèvre	g	0.50	500.00
5	Sauce Tomate	g	0.10	1000.00
6	Sauce Crèmiare	g	0.20	1000.00
7	Miel	g	0.50	100.00
8	Viande de Boeuf	g	0.50	500.00
9	Olive	piece	0.05	10.00
10	Ognons	g	0.20	500.00
11	Coca Cola 1.5L	piece	1.00	5.00
\.


--
-- Data for Name: person; Type: TABLE DATA; Schema: public; Owner: nathan
--

COPY public.person (id, name, last_name, password, email) FROM stdin;
1	Nathan	Boukobza	123password	nathan@email.com
2	Diana	Cajes	123password	Diana@email.com
3	Bob	Le Bricoleur	123password	bob@email.com
4	Ryan	Reynolds	123password	ryan@email.com
5	Jacob	Boukobza	123password	jacob@email.com
6	Pierre	Paoli	123password	pierre@email.com
7	Paul	Paoli	123password	paul@email.com
8	Enzo	Orlando	123password	enzo@email.com
\.


--
-- Data for Name: purchase; Type: TABLE DATA; Schema: public; Owner: nathan
--

COPY public.purchase (id, state, date, paid_price, restaurant_id, person_id, adress_id) FROM stdin;
1	Delivered	2020-06-06 15:00:01	22.50	1	1	6
2	On-Hold	2020-06-06 15:07:53	25.00	1	2	6
3	In Preparation	2020-06-06 15:04:24	9.50	1	1	5
\.


--
-- Data for Name: purchase_aliment; Type: TABLE DATA; Schema: public; Owner: nathan
--

COPY public.purchase_aliment (id, purchase_id, aliment_id) FROM stdin;
1	1	1
2	1	2
3	1	4
4	2	1
5	2	1
6	2	4
7	2	4
8	3	1
\.


--
-- Data for Name: recipe; Type: TABLE DATA; Schema: public; Owner: nathan
--

COPY public.recipe (aliment_id, ingredient_id, quantity, is_public) FROM stdin;
1	1	150.00	t
1	2	30.00	t
1	3	50.00	t
1	5	50.00	t
1	9	4.00	t
2	1	150.00	t
2	2	30.00	t
2	3	50.00	t
2	5	50.00	t
2	8	50.00	t
2	9	4.00	t
2	10	10.00	t
3	1	150.00	t
3	2	30.00	t
3	3	50.00	t
3	4	20.00	t
3	6	30.00	t
3	7	10.00	t
3	9	4.00	t
3	10	10.00	t
4	11	1.00	f
\.


--
-- Data for Name: restaurant; Type: TABLE DATA; Schema: public; Owner: nathan
--

COPY public.restaurant (id, name, description, phone, picture, adress_id) FROM stdin;
1	Pizza Manosque	Meilleurs pizza de Manosque !	0123456789	\N	1
2	Pizza Marseille	Meilleurs pizza de Marseille !	0123456789	\N	2
3	Pizza Aix-En-Provence	Meilleurs pizza de Aix-En-Provence !	0123456789	\N	3
\.


--
-- Data for Name: stock; Type: TABLE DATA; Schema: public; Owner: nathan
--

COPY public.stock (restaurant_id, ingredient_id, quantity) FROM stdin;
1	1	100000.00
1	2	10000.00
1	3	10000.00
1	4	5000.00
1	5	10000.00
1	6	10000.00
1	7	5000.00
1	8	10000.00
1	9	500.00
1	10	5000.00
1	11	0.00
2	1	100000.00
2	2	10000.00
2	3	10000.00
2	4	5000.00
2	5	7.00
2	6	10000.00
2	7	5000.00
2	8	10000.00
2	9	500.00
2	10	5000.00
2	11	20.00
3	1	100000.00
3	2	10000.00
3	3	10000.00
3	5	10000.00
3	8	10000.00
3	9	500.00
3	10	5000.00
3	11	20.00
\.


--
-- Name: adress_id_seq; Type: SEQUENCE SET; Schema: public; Owner: nathan
--

SELECT pg_catalog.setval('public.adress_id_seq', 6, true);


--
-- Name: aliment_id_seq; Type: SEQUENCE SET; Schema: public; Owner: nathan
--

SELECT pg_catalog.setval('public.aliment_id_seq', 4, true);


--
-- Name: ingredient_id_seq; Type: SEQUENCE SET; Schema: public; Owner: nathan
--

SELECT pg_catalog.setval('public.ingredient_id_seq', 11, true);


--
-- Name: person_id_seq; Type: SEQUENCE SET; Schema: public; Owner: nathan
--

SELECT pg_catalog.setval('public.person_id_seq', 8, true);


--
-- Name: purchase_aliment_id_seq; Type: SEQUENCE SET; Schema: public; Owner: nathan
--

SELECT pg_catalog.setval('public.purchase_aliment_id_seq', 8, true);


--
-- Name: purchase_id_seq; Type: SEQUENCE SET; Schema: public; Owner: nathan
--

SELECT pg_catalog.setval('public.purchase_id_seq', 3, true);


--
-- Name: restaurant_id_seq; Type: SEQUENCE SET; Schema: public; Owner: nathan
--

SELECT pg_catalog.setval('public.restaurant_id_seq', 3, true);


--
-- Name: user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: nathan
--

SELECT pg_catalog.setval('public.user_id_seq', 1, false);


--
-- Name: adress adress_pk; Type: CONSTRAINT; Schema: public; Owner: nathan
--

ALTER TABLE ONLY public.adress
    ADD CONSTRAINT adress_pk PRIMARY KEY (id);


--
-- Name: aliment aliment_pk; Type: CONSTRAINT; Schema: public; Owner: nathan
--

ALTER TABLE ONLY public.aliment
    ADD CONSTRAINT aliment_pk PRIMARY KEY (id);


--
-- Name: customer customer_pk; Type: CONSTRAINT; Schema: public; Owner: nathan
--

ALTER TABLE ONLY public.customer
    ADD CONSTRAINT customer_pk PRIMARY KEY (person_id);


--
-- Name: delivery_men delivery_men_pk; Type: CONSTRAINT; Schema: public; Owner: nathan
--

ALTER TABLE ONLY public.delivery_men
    ADD CONSTRAINT delivery_men_pk PRIMARY KEY (employe_id);


--
-- Name: employee employee_pk; Type: CONSTRAINT; Schema: public; Owner: nathan
--

ALTER TABLE ONLY public.employee
    ADD CONSTRAINT employee_pk PRIMARY KEY (person_id);


--
-- Name: ingredient ingredient_pk; Type: CONSTRAINT; Schema: public; Owner: nathan
--

ALTER TABLE ONLY public.ingredient
    ADD CONSTRAINT ingredient_pk PRIMARY KEY (id);


--
-- Name: person person_pk; Type: CONSTRAINT; Schema: public; Owner: nathan
--

ALTER TABLE ONLY public.person
    ADD CONSTRAINT person_pk PRIMARY KEY (id);


--
-- Name: purchase_aliment purchase_aliment_pk; Type: CONSTRAINT; Schema: public; Owner: nathan
--

ALTER TABLE ONLY public.purchase_aliment
    ADD CONSTRAINT purchase_aliment_pk PRIMARY KEY (id);


--
-- Name: purchase purchase_pk; Type: CONSTRAINT; Schema: public; Owner: nathan
--

ALTER TABLE ONLY public.purchase
    ADD CONSTRAINT purchase_pk PRIMARY KEY (id);


--
-- Name: recipe recipe_pk; Type: CONSTRAINT; Schema: public; Owner: nathan
--

ALTER TABLE ONLY public.recipe
    ADD CONSTRAINT recipe_pk PRIMARY KEY (aliment_id, ingredient_id);


--
-- Name: restaurant restaurant_pk; Type: CONSTRAINT; Schema: public; Owner: nathan
--

ALTER TABLE ONLY public.restaurant
    ADD CONSTRAINT restaurant_pk PRIMARY KEY (id);


--
-- Name: stock stock_pk; Type: CONSTRAINT; Schema: public; Owner: nathan
--

ALTER TABLE ONLY public.stock
    ADD CONSTRAINT stock_pk PRIMARY KEY (restaurant_id, ingredient_id);


--
-- Name: aliment_idx; Type: INDEX; Schema: public; Owner: nathan
--

CREATE INDEX aliment_idx ON public.aliment USING btree (category);


--
-- Name: order_idx; Type: INDEX; Schema: public; Owner: nathan
--

CREATE INDEX order_idx ON public.purchase USING btree (state, restaurant_id, person_id);


--
-- Name: customer adress_customer_fk; Type: FK CONSTRAINT; Schema: public; Owner: nathan
--

ALTER TABLE ONLY public.customer
    ADD CONSTRAINT adress_customer_fk FOREIGN KEY (adress_id) REFERENCES public.adress(id);


--
-- Name: purchase adress_order_fk; Type: FK CONSTRAINT; Schema: public; Owner: nathan
--

ALTER TABLE ONLY public.purchase
    ADD CONSTRAINT adress_order_fk FOREIGN KEY (adress_id) REFERENCES public.adress(id);


--
-- Name: restaurant adress_restaurant_fk; Type: FK CONSTRAINT; Schema: public; Owner: nathan
--

ALTER TABLE ONLY public.restaurant
    ADD CONSTRAINT adress_restaurant_fk FOREIGN KEY (adress_id) REFERENCES public.adress(id);


--
-- Name: purchase_aliment aliment_order_aliment_fk; Type: FK CONSTRAINT; Schema: public; Owner: nathan
--

ALTER TABLE ONLY public.purchase_aliment
    ADD CONSTRAINT aliment_order_aliment_fk FOREIGN KEY (aliment_id) REFERENCES public.aliment(id);


--
-- Name: recipe aliment_recipe_fk; Type: FK CONSTRAINT; Schema: public; Owner: nathan
--

ALTER TABLE ONLY public.recipe
    ADD CONSTRAINT aliment_recipe_fk FOREIGN KEY (aliment_id) REFERENCES public.aliment(id);


--
-- Name: purchase customer_order_fk; Type: FK CONSTRAINT; Schema: public; Owner: nathan
--

ALTER TABLE ONLY public.purchase
    ADD CONSTRAINT customer_order_fk FOREIGN KEY (person_id) REFERENCES public.customer(person_id);


--
-- Name: delivery_men employee_delivery_men_fk; Type: FK CONSTRAINT; Schema: public; Owner: nathan
--

ALTER TABLE ONLY public.delivery_men
    ADD CONSTRAINT employee_delivery_men_fk FOREIGN KEY (employe_id) REFERENCES public.employee(person_id);


--
-- Name: recipe ingredient_recipe_fk; Type: FK CONSTRAINT; Schema: public; Owner: nathan
--

ALTER TABLE ONLY public.recipe
    ADD CONSTRAINT ingredient_recipe_fk FOREIGN KEY (ingredient_id) REFERENCES public.ingredient(id);


--
-- Name: stock ingredient_stock_fk; Type: FK CONSTRAINT; Schema: public; Owner: nathan
--

ALTER TABLE ONLY public.stock
    ADD CONSTRAINT ingredient_stock_fk FOREIGN KEY (ingredient_id) REFERENCES public.ingredient(id);


--
-- Name: purchase_aliment order_order_aliment_fk; Type: FK CONSTRAINT; Schema: public; Owner: nathan
--

ALTER TABLE ONLY public.purchase_aliment
    ADD CONSTRAINT order_order_aliment_fk FOREIGN KEY (purchase_id) REFERENCES public.purchase(id);


--
-- Name: employee restaurant_employee_fk; Type: FK CONSTRAINT; Schema: public; Owner: nathan
--

ALTER TABLE ONLY public.employee
    ADD CONSTRAINT restaurant_employee_fk FOREIGN KEY (restaurant_id) REFERENCES public.restaurant(id);


--
-- Name: purchase restaurant_order_fk; Type: FK CONSTRAINT; Schema: public; Owner: nathan
--

ALTER TABLE ONLY public.purchase
    ADD CONSTRAINT restaurant_order_fk FOREIGN KEY (restaurant_id) REFERENCES public.restaurant(id);


--
-- Name: stock restaurant_stock_fk; Type: FK CONSTRAINT; Schema: public; Owner: nathan
--

ALTER TABLE ONLY public.stock
    ADD CONSTRAINT restaurant_stock_fk FOREIGN KEY (restaurant_id) REFERENCES public.restaurant(id);


--
-- Name: customer user_customer_fk; Type: FK CONSTRAINT; Schema: public; Owner: nathan
--

ALTER TABLE ONLY public.customer
    ADD CONSTRAINT user_customer_fk FOREIGN KEY (person_id) REFERENCES public.person(id);


--
-- Name: employee user_employee_fk; Type: FK CONSTRAINT; Schema: public; Owner: nathan
--

ALTER TABLE ONLY public.employee
    ADD CONSTRAINT user_employee_fk FOREIGN KEY (person_id) REFERENCES public.person(id);


--
-- PostgreSQL database dump complete
--

