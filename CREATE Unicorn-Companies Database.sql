--
-- PostgreSQL database dump
--

-- Dumped from database version 17.4
-- Dumped by pg_dump version 17.4

-- Started on 2025-05-22 18:32:23

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

--
-- TOC entry 4791 (class 1262 OID 16502)
-- Name: Unicorn-Companies; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE "Unicorn-Companies" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'en-GB';


ALTER DATABASE "Unicorn-Companies" OWNER TO postgres;

\encoding SQL_ASCII
\connect -reuse-previous=on "dbname='Unicorn-Companies'"

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
-- TOC entry 217 (class 1259 OID 16503)
-- Name: unicorn_startups; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.unicorn_startups (
    startup_name character varying(100),
    industry character varying(100),
    founding_year integer,
    unicorn_entry_year integer,
    profit_loss_fy22 character varying(50),
    current_valuation character varying(50),
    acquisitions character varying(10),
    status character varying(50),
    current_numeric_valuation numeric,
    profit_loss_fy22_num numeric
);


ALTER TABLE public.unicorn_startups OWNER TO postgres;

--
-- TOC entry 4785 (class 0 OID 16503)
-- Dependencies: 217
-- Data for Name: unicorn_startups; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.unicorn_startups (startup_name, industry, founding_year, unicorn_entry_year, profit_loss_fy22, current_valuation, acquisitions, status, current_numeric_valuation, profit_loss_fy22_num) VALUES ('5ire', 'Fintech', 2021, 2022, 'NA', '$1.5 Billion', '1', 'Private ', 1500000000.0, 0);
INSERT INTO public.unicorn_startups (startup_name, industry, founding_year, unicorn_entry_year, profit_loss_fy22, current_valuation, acquisitions, status, current_numeric_valuation, profit_loss_fy22_num) VALUES ('Fractal', 'SaaS Analytics', 2000, 2022, '-$18.4 Billion', '$1 Billion', '7', 'Private ', 1000000000, -18400000000.0);
INSERT INTO public.unicorn_startups (startup_name, industry, founding_year, unicorn_entry_year, profit_loss_fy22, current_valuation, acquisitions, status, current_numeric_valuation, profit_loss_fy22_num) VALUES ('Darwinbox', 'SaaS HR', 2015, 2022, '-$7.6 Million', '$1 Billion', '0', 'Private ', 1000000000, -7600000.0);
INSERT INTO public.unicorn_startups (startup_name, industry, founding_year, unicorn_entry_year, profit_loss_fy22, current_valuation, acquisitions, status, current_numeric_valuation, profit_loss_fy22_num) VALUES ('Livspace', 'E-commerce Interior Design', 2014, 2022, '-$51 Million', '$1.2 Billion', '4', 'Private ', 1200000000.0, -51000000);
INSERT INTO public.unicorn_startups (startup_name, industry, founding_year, unicorn_entry_year, profit_loss_fy22, current_valuation, acquisitions, status, current_numeric_valuation, profit_loss_fy22_num) VALUES ('Uniphore', 'SaaS Conversational Automation', 2008, 2022, 'NA', '$2.5 Billion', '5', 'Private ', 2500000000.0, 0);
INSERT INTO public.unicorn_startups (startup_name, industry, founding_year, unicorn_entry_year, profit_loss_fy22, current_valuation, acquisitions, status, current_numeric_valuation, profit_loss_fy22_num) VALUES ('Hasura', 'SaaS Programming Tools', 2017, 2022, 'NA', '$1 Billion', '0', 'Private ', 1000000000, 0);
INSERT INTO public.unicorn_startups (startup_name, industry, founding_year, unicorn_entry_year, profit_loss_fy22, current_valuation, acquisitions, status, current_numeric_valuation, profit_loss_fy22_num) VALUES ('Yubi (Formerly CredAvenue)', 'Fintech', 2017, 2022, '-$7 million', '$1.5 Billion', '3', 'Private ', 1500000000.0, -7000000);
INSERT INTO public.unicorn_startups (startup_name, industry, founding_year, unicorn_entry_year, profit_loss_fy22, current_valuation, acquisitions, status, current_numeric_valuation, profit_loss_fy22_num) VALUES ('CommerceIQ', 'E-commerce Management Platform', 2012, 2022, 'NA', '$1 Billion', '0', 'Private ', 1000000000, 0);
INSERT INTO public.unicorn_startups (startup_name, industry, founding_year, unicorn_entry_year, profit_loss_fy22, current_valuation, acquisitions, status, current_numeric_valuation, profit_loss_fy22_num) VALUES ('Oxyzo', 'Fintech', 2016, 2022, '$8.6 Million', '$1 Billion', '0', 'Private ', 1000000000, 8600000.0);
INSERT INTO public.unicorn_startups (startup_name, industry, founding_year, unicorn_entry_year, profit_loss_fy22, current_valuation, acquisitions, status, current_numeric_valuation, profit_loss_fy22_num) VALUES ('Moglix', 'E-commerce', 2015, 2021, '-$2.5 Million', '$2.6 Billion', '2', 'Private ', 2600000000.0, -2500000.0);
INSERT INTO public.unicorn_startups (startup_name, industry, founding_year, unicorn_entry_year, profit_loss_fy22, current_valuation, acquisitions, status, current_numeric_valuation, profit_loss_fy22_num) VALUES ('NoBroker', 'PropTech', 2014, 2021, 'NA', '$1 Billion', '1', 'Private ', 1000000000, 0);
INSERT INTO public.unicorn_startups (startup_name, industry, founding_year, unicorn_entry_year, profit_loss_fy22, current_valuation, acquisitions, status, current_numeric_valuation, profit_loss_fy22_num) VALUES ('MobiKwik', 'Fintech', 2009, 2021, '-$16 Million', '$0.9 Billion', '1', 'Private ', 900000000.0, -16000000);
INSERT INTO public.unicorn_startups (startup_name, industry, founding_year, unicorn_entry_year, profit_loss_fy22, current_valuation, acquisitions, status, current_numeric_valuation, profit_loss_fy22_num) VALUES ('Spinny', 'Automotive (E-commerce)', 2015, 2021, '-$61.2 Million', '$1.75 Billion', '3', 'Private ', 1750000000.00, -61200000.0);
INSERT INTO public.unicorn_startups (startup_name, industry, founding_year, unicorn_entry_year, profit_loss_fy22, current_valuation, acquisitions, status, current_numeric_valuation, profit_loss_fy22_num) VALUES ('MPL', 'ESports', 2018, 2021, '-$56 Million', '$2.3 Billion', '3', 'Private ', 2300000000.0, -56000000);
INSERT INTO public.unicorn_startups (startup_name, industry, founding_year, unicorn_entry_year, profit_loss_fy22, current_valuation, acquisitions, status, current_numeric_valuation, profit_loss_fy22_num) VALUES ('Acko', 'Insurtech', 2016, 2021, '-$45.1 Million', '$1.1 Billion', '2', 'Private ', 1100000000.0, -45100000.0);
INSERT INTO public.unicorn_startups (startup_name, industry, founding_year, unicorn_entry_year, profit_loss_fy22, current_valuation, acquisitions, status, current_numeric_valuation, profit_loss_fy22_num) VALUES ('ShareChat', 'Media & Entertainment', 2015, 2021, '-$373 Million', '$5 Billion', '6', 'Private ', 5000000000, -373000000);
INSERT INTO public.unicorn_startups (startup_name, industry, founding_year, unicorn_entry_year, profit_loss_fy22, current_valuation, acquisitions, status, current_numeric_valuation, profit_loss_fy22_num) VALUES ('Eruditus', 'Edtech', 2010, 2021, '-$386.8 Million', '$3.2 Billion', '1', 'Private ', 3200000000.0, -386800000.0);
INSERT INTO public.unicorn_startups (startup_name, industry, founding_year, unicorn_entry_year, profit_loss_fy22, current_valuation, acquisitions, status, current_numeric_valuation, profit_loss_fy22_num) VALUES ('upGrad', 'Edtech', 2015, 2021, '-$78.3 Million', '$2.25 Billion', '14', 'Private ', 2250000000.00, -78300000.0);
INSERT INTO public.unicorn_startups (startup_name, industry, founding_year, unicorn_entry_year, profit_loss_fy22, current_valuation, acquisitions, status, current_numeric_valuation, profit_loss_fy22_num) VALUES ('Apna', 'Marketplace Employment', 2019, 2021, '-$14 Million', '$1.1 Billion', '0', 'Private ', 1100000000.0, -14000000);
INSERT INTO public.unicorn_startups (startup_name, industry, founding_year, unicorn_entry_year, profit_loss_fy22, current_valuation, acquisitions, status, current_numeric_valuation, profit_loss_fy22_num) VALUES ('Urban Company', 'Home Services', 2014, 2021, '-$64 Million', '$2.8 Billion', '3', 'Private ', 2800000000.0, -64000000);
INSERT INTO public.unicorn_startups (startup_name, industry, founding_year, unicorn_entry_year, profit_loss_fy22, current_valuation, acquisitions, status, current_numeric_valuation, profit_loss_fy22_num) VALUES ('BharatPe', 'Fintech Payments', 2018, 2021, '-$702 Million', '$2.9 Billion', '2', 'Private ', 2900000000.0, -702000000);
INSERT INTO public.unicorn_startups (startup_name, industry, founding_year, unicorn_entry_year, profit_loss_fy22, current_valuation, acquisitions, status, current_numeric_valuation, profit_loss_fy22_num) VALUES ('CarDekho', 'E-commerce Automotives', 2007, 2021, '-$29 Million', '$1.2 Billion', '3', 'Private ', 1200000000.0, -29000000);
INSERT INTO public.unicorn_startups (startup_name, industry, founding_year, unicorn_entry_year, profit_loss_fy22, current_valuation, acquisitions, status, current_numeric_valuation, profit_loss_fy22_num) VALUES ('Licious', 'E-commerce Meat Products', 2015, 2021, '-$106 Million', '$1.5 Billion', '0', 'Private ', 1500000000.0, -106000000);
INSERT INTO public.unicorn_startups (startup_name, industry, founding_year, unicorn_entry_year, profit_loss_fy22, current_valuation, acquisitions, status, current_numeric_valuation, profit_loss_fy22_num) VALUES ('Zetwerk', 'Manufacturing', 2018, 2021, '-$10.4 Million', '$2.7 Billion', '4', 'Private ', 2700000000.0, -10400000.0);
INSERT INTO public.unicorn_startups (startup_name, industry, founding_year, unicorn_entry_year, profit_loss_fy22, current_valuation, acquisitions, status, current_numeric_valuation, profit_loss_fy22_num) VALUES ('Meesho', 'E-commerce', 2015, 2021, '-$406 Million', '$4.9 Billion', '0', 'Private ', 4900000000.0, -406000000);
INSERT INTO public.unicorn_startups (startup_name, industry, founding_year, unicorn_entry_year, profit_loss_fy22, current_valuation, acquisitions, status, current_numeric_valuation, profit_loss_fy22_num) VALUES ('Blinkit (ex-Grofers)', 'E-commerce Groceries', 2013, 2021, '-$127 Million', '$0.568 Billion', 'NA', 'Acquired ', 568000000.000, -127000000);
INSERT INTO public.unicorn_startups (startup_name, industry, founding_year, unicorn_entry_year, profit_loss_fy22, current_valuation, acquisitions, status, current_numeric_valuation, profit_loss_fy22_num) VALUES ('Pristyn Care', 'Healthtech', 2018, 2021, 'NA', '$1.4 Billion', '1', 'Private ', 1400000000.0, 0);
INSERT INTO public.unicorn_startups (startup_name, industry, founding_year, unicorn_entry_year, profit_loss_fy22, current_valuation, acquisitions, status, current_numeric_valuation, profit_loss_fy22_num) VALUES ('Vedantu', 'Edtech', 2011, 2021, '-$87 Million', '$1 Billion', '3', 'Private ', 1000000000, -87000000);
INSERT INTO public.unicorn_startups (startup_name, industry, founding_year, unicorn_entry_year, profit_loss_fy22, current_valuation, acquisitions, status, current_numeric_valuation, profit_loss_fy22_num) VALUES ('Upstox', 'Fintech', 2010, 2021, '-$55.5 Million', '$3.4 Billion', '0', 'Private ', 3400000000.0, -55500000.0);
INSERT INTO public.unicorn_startups (startup_name, industry, founding_year, unicorn_entry_year, profit_loss_fy22, current_valuation, acquisitions, status, current_numeric_valuation, profit_loss_fy22_num) VALUES ('Slice', 'Fintech', 2016, 2021, '-$31 Million', '$1.5 Billion', '1', 'Private ', 1500000000.0, -31000000);
INSERT INTO public.unicorn_startups (startup_name, industry, founding_year, unicorn_entry_year, profit_loss_fy22, current_valuation, acquisitions, status, current_numeric_valuation, profit_loss_fy22_num) VALUES ('CRED', 'Financial Technology', 2018, 2021, '-$160 Million', '$6.4 Billion', '4', 'Private ', 6400000000.0, -160000000);
INSERT INTO public.unicorn_startups (startup_name, industry, founding_year, unicorn_entry_year, profit_loss_fy22, current_valuation, acquisitions, status, current_numeric_valuation, profit_loss_fy22_num) VALUES ('Cult.fit', 'Healthtech', 2016, 2021, '-$85 Million', '$1.5 Billion', '14', 'Private ', 1500000000.0, -85000000);
INSERT INTO public.unicorn_startups (startup_name, industry, founding_year, unicorn_entry_year, profit_loss_fy22, current_valuation, acquisitions, status, current_numeric_valuation, profit_loss_fy22_num) VALUES ('Mamaearth', 'E-commerce Personal Care', 2016, 2021, '$2.8 Million', '$1.2 Billion', '4', 'Private ', 1200000000.0, 2800000.0);
INSERT INTO public.unicorn_startups (startup_name, industry, founding_year, unicorn_entry_year, profit_loss_fy22, current_valuation, acquisitions, status, current_numeric_valuation, profit_loss_fy22_num) VALUES ('Infra.Market', 'B2B E-commerce', 2016, 2021, '$28.3 Million', '$2.5 Billion', '3', 'Private ', 2500000000.0, 28300000.0);
INSERT INTO public.unicorn_startups (startup_name, industry, founding_year, unicorn_entry_year, profit_loss_fy22, current_valuation, acquisitions, status, current_numeric_valuation, profit_loss_fy22_num) VALUES ('Five Star Business Finance', 'Financial Services', 1984, 2021, 'NA', '$1.4 Billion', '0', 'Listed ', 1400000000.0, 0);
INSERT INTO public.unicorn_startups (startup_name, industry, founding_year, unicorn_entry_year, profit_loss_fy22, current_valuation, acquisitions, status, current_numeric_valuation, profit_loss_fy22_num) VALUES ('OfBusiness', 'Building Materials', 2015, 2021, '$34.4 Million', '$4.8 Billion', '1', 'Private ', 4800000000.0, 34400000.0);
INSERT INTO public.unicorn_startups (startup_name, industry, founding_year, unicorn_entry_year, profit_loss_fy22, current_valuation, acquisitions, status, current_numeric_valuation, profit_loss_fy22_num) VALUES ('CoinSwitch Kuber', 'Cryptocurrencies', 2017, 2021, 'NA', '$1.9 Billion', '0', 'Private ', 1900000000.0, 0);
INSERT INTO public.unicorn_startups (startup_name, industry, founding_year, unicorn_entry_year, profit_loss_fy22, current_valuation, acquisitions, status, current_numeric_valuation, profit_loss_fy22_num) VALUES ('CoinDCX', 'Cryptocurrency Exchange', 2018, 2021, '$5.1 Million', '$2.15 Billion', '0', 'Private ', 2150000000.00, 5100000.0);
INSERT INTO public.unicorn_startups (startup_name, industry, founding_year, unicorn_entry_year, profit_loss_fy22, current_valuation, acquisitions, status, current_numeric_valuation, profit_loss_fy22_num) VALUES ('BlackBuck', 'Logistics', 2015, 2021, '-$35 Million', '$1.02 Billion', '0', 'Private ', 1020000000.00, -35000000);
INSERT INTO public.unicorn_startups (startup_name, industry, founding_year, unicorn_entry_year, profit_loss_fy22, current_valuation, acquisitions, status, current_numeric_valuation, profit_loss_fy22_num) VALUES ('Droom', 'Marketplace Automotives', 2014, 2021, '-$17 Million', '$1.2 Billion', '1', 'Private ', 1200000000.0, -17000000);
INSERT INTO public.unicorn_startups (startup_name, industry, founding_year, unicorn_entry_year, profit_loss_fy22, current_valuation, acquisitions, status, current_numeric_valuation, profit_loss_fy22_num) VALUES ('PharmEasy', 'Online Pharmacy', 2015, 2021, 'NA', '$5.6 Billion', '3', 'Private ', 5600000000.0, 0);
INSERT INTO public.unicorn_startups (startup_name, industry, founding_year, unicorn_entry_year, profit_loss_fy22, current_valuation, acquisitions, status, current_numeric_valuation, profit_loss_fy22_num) VALUES ('FirstCry', 'E-commerce', 2010, 2020, '$6.39 Million', '$3 Billion', '2', 'Private ', 3000000000, 6390000.00);
INSERT INTO public.unicorn_startups (startup_name, industry, founding_year, unicorn_entry_year, profit_loss_fy22, current_valuation, acquisitions, status, current_numeric_valuation, profit_loss_fy22_num) VALUES ('Lenskart', 'E-commerce Eyewear', 2010, 2019, '-$13.4 Million', '$4.5 Billion', '2', 'Private ', 4500000000.0, -13400000.0);
INSERT INTO public.unicorn_startups (startup_name, industry, founding_year, unicorn_entry_year, profit_loss_fy22, current_valuation, acquisitions, status, current_numeric_valuation, profit_loss_fy22_num) VALUES ('Dream11', 'Fantasy Sports', 2008, 2019, '$37.8 Million', '$8 Billion', '0', 'Private ', 8000000000, 37800000.0);
INSERT INTO public.unicorn_startups (startup_name, industry, founding_year, unicorn_entry_year, profit_loss_fy22, current_valuation, acquisitions, status, current_numeric_valuation, profit_loss_fy22_num) VALUES ('CitiusTech', 'Healthcare Technology', 2005, 2019, 'NA', '$2.4 Billion', '3', 'Private ', 2400000000.0, 0);
INSERT INTO public.unicorn_startups (startup_name, industry, founding_year, unicorn_entry_year, profit_loss_fy22, current_valuation, acquisitions, status, current_numeric_valuation, profit_loss_fy22_num) VALUES ('Freshworks', 'SaaS CRM', 2010, 2018, '-$220 Million', '$4.53 Billion', '13', 'Listed ', 4530000000.00, -220000000);
INSERT INTO public.unicorn_startups (startup_name, industry, founding_year, unicorn_entry_year, profit_loss_fy22, current_valuation, acquisitions, status, current_numeric_valuation, profit_loss_fy22_num) VALUES ('Udaan', 'E-commerce', 2016, 2018, '-$220.9 Million', '$3.1 Billion', '0', 'Private ', 3100000000.0, -220900000.0);
INSERT INTO public.unicorn_startups (startup_name, industry, founding_year, unicorn_entry_year, profit_loss_fy22, current_valuation, acquisitions, status, current_numeric_valuation, profit_loss_fy22_num) VALUES ('OYO', 'Travel Tech (Hospitality)', 2013, 2018, '-$263 Million', '$10 Billion', '8', 'IPO-Bound ', 10000000000, -263000000);
INSERT INTO public.unicorn_startups (startup_name, industry, founding_year, unicorn_entry_year, profit_loss_fy22, current_valuation, acquisitions, status, current_numeric_valuation, profit_loss_fy22_num) VALUES ('Paytm Mall', 'E-commerce', 2017, 2018, '-$65.6 Million', 'NA', '0', 'Private ', NULL, -65600000.0);
INSERT INTO public.unicorn_startups (startup_name, industry, founding_year, unicorn_entry_year, profit_loss_fy22, current_valuation, acquisitions, status, current_numeric_valuation, profit_loss_fy22_num) VALUES ('Perfios', 'SaaS (Fintech)', 2008, 2024, '$0.94 Million', '$1 Billion', '3', 'Private ', 1000000000, 940000.00);
INSERT INTO public.unicorn_startups (startup_name, industry, founding_year, unicorn_entry_year, profit_loss_fy22, current_valuation, acquisitions, status, current_numeric_valuation, profit_loss_fy22_num) VALUES ('Krutrim', 'Research Services (AI)', 2023, 2024, 'NA', '$1 Billion', 'NA', 'Private ', 1000000000, 0);
INSERT INTO public.unicorn_startups (startup_name, industry, founding_year, unicorn_entry_year, profit_loss_fy22, current_valuation, acquisitions, status, current_numeric_valuation, profit_loss_fy22_num) VALUES ('Zepto', 'Quick Commerce', 2021, 2023, '-$47.1 Million', '$1.4 Billion', 'NA', 'Private ', 1400000000.0, -47100000.0);
INSERT INTO public.unicorn_startups (startup_name, industry, founding_year, unicorn_entry_year, profit_loss_fy22, current_valuation, acquisitions, status, current_numeric_valuation, profit_loss_fy22_num) VALUES ('Molbio Diagnostics', 'HealthTech (MedTech)', 2010, 2022, 'NA', '$1.5 Billion', '1', 'Private ', 1500000000.0, 0);
INSERT INTO public.unicorn_startups (startup_name, industry, founding_year, unicorn_entry_year, profit_loss_fy22, current_valuation, acquisitions, status, current_numeric_valuation, profit_loss_fy22_num) VALUES ('Tata 1mg', 'HealthTech', 2015, 2022, '-$65 Million', '$1.25 Billion', 'NA', 'Acquired ', 1250000000.00, -65000000);
INSERT INTO public.unicorn_startups (startup_name, industry, founding_year, unicorn_entry_year, profit_loss_fy22, current_valuation, acquisitions, status, current_numeric_valuation, profit_loss_fy22_num) VALUES ('Shiprocket', 'Logistics', 2017, 2022, '-$11.67 Million', '$1.3 Billion', '5', 'Private ', 1300000000.0, -11670000.00);
INSERT INTO public.unicorn_startups (startup_name, industry, founding_year, unicorn_entry_year, profit_loss_fy22, current_valuation, acquisitions, status, current_numeric_valuation, profit_loss_fy22_num) VALUES ('OneCard', 'Fintech', 2018, 2022, '-$22.8 Million', '$1.4 Billion', '0', 'Private ', 1400000000.0, -22800000.0);
INSERT INTO public.unicorn_startups (startup_name, industry, founding_year, unicorn_entry_year, profit_loss_fy22, current_valuation, acquisitions, status, current_numeric_valuation, profit_loss_fy22_num) VALUES ('PhysicsWallah', 'Edtech', 2016, 2022, '$16.4 Million', '$1.1 Billion', '6', 'Private ', 1100000000.0, 16400000.0);
INSERT INTO public.unicorn_startups (startup_name, industry, founding_year, unicorn_entry_year, profit_loss_fy22, current_valuation, acquisitions, status, current_numeric_valuation, profit_loss_fy22_num) VALUES ('LeadSquared', 'SaaS CRM', 2011, 2022, '-$7.7 Million', '$1 Billion', 'NA', 'Private ', 1000000000, -7700000.0);
INSERT INTO public.unicorn_startups (startup_name, industry, founding_year, unicorn_entry_year, profit_loss_fy22, current_valuation, acquisitions, status, current_numeric_valuation, profit_loss_fy22_num) VALUES ('ElasticRun', 'E-commerce Logistics', 2015, 2022, '-$45.1 Million', '$1.5 Billion', 'NA', 'Private ', 1500000000.0, -45100000.0);
INSERT INTO public.unicorn_startups (startup_name, industry, founding_year, unicorn_entry_year, profit_loss_fy22, current_valuation, acquisitions, status, current_numeric_valuation, profit_loss_fy22_num) VALUES ('LEAD', 'Edtech', 2012, 2022, '-$49.6 Million', '$1.1 Billion', '2', 'Private ', 1100000000.0, -49600000.0);
INSERT INTO public.unicorn_startups (startup_name, industry, founding_year, unicorn_entry_year, profit_loss_fy22, current_valuation, acquisitions, status, current_numeric_valuation, profit_loss_fy22_num) VALUES ('Purplle', 'E-commerce Personal Care', 2012, 2022, '-$25 Million', '$1.1 Billion', '1', 'Private ', 1100000000.0, -25000000);
INSERT INTO public.unicorn_startups (startup_name, industry, founding_year, unicorn_entry_year, profit_loss_fy22, current_valuation, acquisitions, status, current_numeric_valuation, profit_loss_fy22_num) VALUES ('DealShare', 'E-commerce', 2018, 2022, '-$53.8 Million', '$1.7 Billion', '0', 'Private ', 1700000000.0, -53800000.0);
INSERT INTO public.unicorn_startups (startup_name, industry, founding_year, unicorn_entry_year, profit_loss_fy22, current_valuation, acquisitions, status, current_numeric_valuation, profit_loss_fy22_num) VALUES ('Xpressbees', 'E-commerce Logistics', 2015, 2022, '-$3.39 Million', '$1.2 Billion', '1', 'Private ', 1200000000.0, -3390000.00);
INSERT INTO public.unicorn_startups (startup_name, industry, founding_year, unicorn_entry_year, profit_loss_fy22, current_valuation, acquisitions, status, current_numeric_valuation, profit_loss_fy22_num) VALUES ('Open', 'Fintech', 2017, 2022, '-$20.9 Million', '$1 Billion', '2', 'Private ', 1000000000, -20900000.0);
INSERT INTO public.unicorn_startups (startup_name, industry, founding_year, unicorn_entry_year, profit_loss_fy22, current_valuation, acquisitions, status, current_numeric_valuation, profit_loss_fy22_num) VALUES ('Games24x7', 'Gaming', 2006, 2022, '-$39 Million', '$2.5 Billion', '0', 'Private ', 2500000000.0, -39000000);
INSERT INTO public.unicorn_startups (startup_name, industry, founding_year, unicorn_entry_year, profit_loss_fy22, current_valuation, acquisitions, status, current_numeric_valuation, profit_loss_fy22_num) VALUES ('Amagi', 'Media (Advertising)', 2008, 2022, 'NA', '$1.4 Billion', '1', 'Private ', 1400000000.0, 0);
INSERT INTO public.unicorn_startups (startup_name, industry, founding_year, unicorn_entry_year, profit_loss_fy22, current_valuation, acquisitions, status, current_numeric_valuation, profit_loss_fy22_num) VALUES ('MyGlamm (Good Glamm Group)', 'Personal Care Marketplace', 2015, 2021, '-$36 Million', '$1.2 Billion', '7', 'Private ', 1200000000.0, -36000000);
INSERT INTO public.unicorn_startups (startup_name, industry, founding_year, unicorn_entry_year, profit_loss_fy22, current_valuation, acquisitions, status, current_numeric_valuation, profit_loss_fy22_num) VALUES ('Digit Insurance', 'Insurance', 2016, 2021, 'NA', '$4 Billion', '1', 'Private ', 4000000000, 0);
INSERT INTO public.unicorn_startups (startup_name, industry, founding_year, unicorn_entry_year, profit_loss_fy22, current_valuation, acquisitions, status, current_numeric_valuation, profit_loss_fy22_num) VALUES ('Innovaccer', 'Healthcare', 2014, 2021, 'NA', '$3.2 Billion', '0', 'Private ', 3200000000.0, 0);
INSERT INTO public.unicorn_startups (startup_name, industry, founding_year, unicorn_entry_year, profit_loss_fy22, current_valuation, acquisitions, status, current_numeric_valuation, profit_loss_fy22_num) VALUES ('Groww', 'Fintech', 2017, 2021, '-$29.5', '$3 Billion', '1', 'Private ', 3000000000, -29.5);
INSERT INTO public.unicorn_startups (startup_name, industry, founding_year, unicorn_entry_year, profit_loss_fy22, current_valuation, acquisitions, status, current_numeric_valuation, profit_loss_fy22_num) VALUES ('Gupshup', 'Enterprisetech', 2004, 2021, '$7.06 Million', '$1.4 Billion', '5', 'Private ', 1400000000.0, 7060000.00);
INSERT INTO public.unicorn_startups (startup_name, industry, founding_year, unicorn_entry_year, profit_loss_fy22, current_valuation, acquisitions, status, current_numeric_valuation, profit_loss_fy22_num) VALUES ('Chargebee', 'Financial Services', 2011, 2021, '$3.9 Million', '$3.5 Billion', '3', 'Private ', 3500000000.0, 3900000.0);
INSERT INTO public.unicorn_startups (startup_name, industry, founding_year, unicorn_entry_year, profit_loss_fy22, current_valuation, acquisitions, status, current_numeric_valuation, profit_loss_fy22_num) VALUES ('Zeta', 'Fintech', 2015, 2021, 'NA', '$1.5 Billion', '0', 'Private ', 1500000000.0, 0);
INSERT INTO public.unicorn_startups (startup_name, industry, founding_year, unicorn_entry_year, profit_loss_fy22, current_valuation, acquisitions, status, current_numeric_valuation, profit_loss_fy22_num) VALUES ('BrowserStack', 'Cloud Infrastructure and Software', 2011, 2021, '$12.5 Million', '$4 Billion', '3', 'Private ', 4000000000, 12500000.0);
INSERT INTO public.unicorn_startups (startup_name, industry, founding_year, unicorn_entry_year, profit_loss_fy22, current_valuation, acquisitions, status, current_numeric_valuation, profit_loss_fy22_num) VALUES ('Mohalla Tech (Moj)', 'Software', 2015, 2021, 'NA', '$5 Billion', '6', 'Private ', 5000000000, 0);
INSERT INTO public.unicorn_startups (startup_name, industry, founding_year, unicorn_entry_year, profit_loss_fy22, current_valuation, acquisitions, status, current_numeric_valuation, profit_loss_fy22_num) VALUES ('Polygon (Formerly Matic Network)', 'Blockchain', 2018, 2021, 'NA', '$10 Billion', '3', 'Private ', 10000000000, 0);
INSERT INTO public.unicorn_startups (startup_name, industry, founding_year, unicorn_entry_year, profit_loss_fy22, current_valuation, acquisitions, status, current_numeric_valuation, profit_loss_fy22_num) VALUES ('MindTickle', 'Saas Enterprise Software', 2011, 2021, '$3.5 Million', '$1.2 Billion', '1', 'Private ', 1200000000.0, 3500000.0);
INSERT INTO public.unicorn_startups (startup_name, industry, founding_year, unicorn_entry_year, profit_loss_fy22, current_valuation, acquisitions, status, current_numeric_valuation, profit_loss_fy22_num) VALUES ('Rebel Foods', 'E-commerce Food Delivery', 2011, 2021, '-$66.7 Million', '$1.4 Billion', '1', 'Private ', 1400000000.0, -66700000.0);
INSERT INTO public.unicorn_startups (startup_name, industry, founding_year, unicorn_entry_year, profit_loss_fy22, current_valuation, acquisitions, status, current_numeric_valuation, profit_loss_fy22_num) VALUES ('Mensa Brands', 'Ecommerce Financial Services', 2021, 2021, '-$12 Million', '$1.2 Billion', '20', 'Private ', 1200000000.0, -12000000);
INSERT INTO public.unicorn_startups (startup_name, industry, founding_year, unicorn_entry_year, profit_loss_fy22, current_valuation, acquisitions, status, current_numeric_valuation, profit_loss_fy22_num) VALUES ('GlobalBees', 'E-commerce Retail', 2021, 2021, '-$4.4 Million', '$1.1 Billion', '11', 'Private ', 1100000000.0, -4400000.0);
INSERT INTO public.unicorn_startups (startup_name, industry, founding_year, unicorn_entry_year, profit_loss_fy22, current_valuation, acquisitions, status, current_numeric_valuation, profit_loss_fy22_num) VALUES ('DailyHunt', 'Media & Entertainment', 2007, 2020, 'NA', '$5 Billion', '2', 'Private ', 5000000000, 0);
INSERT INTO public.unicorn_startups (startup_name, industry, founding_year, unicorn_entry_year, profit_loss_fy22, current_valuation, acquisitions, status, current_numeric_valuation, profit_loss_fy22_num) VALUES ('Unacademy', 'Edtech', 2015, 2020, '-$357 Million', '$3.4 Billion', '12', 'Private ', 3400000000.0, -357000000);
INSERT INTO public.unicorn_startups (startup_name, industry, founding_year, unicorn_entry_year, profit_loss_fy22, current_valuation, acquisitions, status, current_numeric_valuation, profit_loss_fy22_num) VALUES ('Cars24', 'B2C E-commerce', 2015, 2020, '-$31 Million', '$3.3 Billion', '0', 'Private ', 3300000000.0, -31000000);
INSERT INTO public.unicorn_startups (startup_name, industry, founding_year, unicorn_entry_year, profit_loss_fy22, current_valuation, acquisitions, status, current_numeric_valuation, profit_loss_fy22_num) VALUES ('Glance (Inmobi)', 'Mobile Technology', 2019, 2020, 'NA', '$1.7 Billion', '2', 'Private ', 1700000000.0, 0);
INSERT INTO public.unicorn_startups (startup_name, industry, founding_year, unicorn_entry_year, profit_loss_fy22, current_valuation, acquisitions, status, current_numeric_valuation, profit_loss_fy22_num) VALUES ('RazorPay', 'Fintech', 2014, 2020, '$1.14 Million', '$7.5 Billion', '7', 'Private ', 7500000000.0, 1140000.00);
INSERT INTO public.unicorn_startups (startup_name, industry, founding_year, unicorn_entry_year, profit_loss_fy22, current_valuation, acquisitions, status, current_numeric_valuation, profit_loss_fy22_num) VALUES ('Zerodha', 'Stockbroker', 2010, 2020, '$349.9 Million', '$2 Billion', '0', 'Private ', 2000000000, 349900000.0);
INSERT INTO public.unicorn_startups (startup_name, industry, founding_year, unicorn_entry_year, profit_loss_fy22, current_valuation, acquisitions, status, current_numeric_valuation, profit_loss_fy22_num) VALUES ('PhonePe', 'Fintech', 2015, 2020, '-$251.6 Million', '$12 Billion', '6', 'Acquired by Flipkart ', 12000000000, -251600000.0);
INSERT INTO public.unicorn_startups (startup_name, industry, founding_year, unicorn_entry_year, profit_loss_fy22, current_valuation, acquisitions, status, current_numeric_valuation, profit_loss_fy22_num) VALUES ('Nykaa', 'E-commerce', 2012, 2020, '$4.96 Million', '$4.44 Billion', '6', 'Listed ', 4440000000.00, 4960000.00);
INSERT INTO public.unicorn_startups (startup_name, industry, founding_year, unicorn_entry_year, profit_loss_fy22, current_valuation, acquisitions, status, current_numeric_valuation, profit_loss_fy22_num) VALUES ('Pine Labs', 'Fintech', 1998, 2020, 'NA', '$5 Billion', '6', 'Private ', 5000000000, 0);
INSERT INTO public.unicorn_startups (startup_name, industry, founding_year, unicorn_entry_year, profit_loss_fy22, current_valuation, acquisitions, status, current_numeric_valuation, profit_loss_fy22_num) VALUES ('HighRadius', 'Fintech', 2006, 2020, 'NA', '$3.1 Billion', '0', 'Private ', 3100000000.0, 0);
INSERT INTO public.unicorn_startups (startup_name, industry, founding_year, unicorn_entry_year, profit_loss_fy22, current_valuation, acquisitions, status, current_numeric_valuation, profit_loss_fy22_num) VALUES ('Verse Innovation', 'Media & Entertainment', 2007, 2020, '-$320 Million', '$5 Billion', '3', 'Private ', 5000000000, -320000000);
INSERT INTO public.unicorn_startups (startup_name, industry, founding_year, unicorn_entry_year, profit_loss_fy22, current_valuation, acquisitions, status, current_numeric_valuation, profit_loss_fy22_num) VALUES ('Zenoti', 'Saas Spa and Salon Services', 2010, 2020, 'NA', '$1.5 Billion', '1', 'Private ', 1500000000.0, 0);
INSERT INTO public.unicorn_startups (startup_name, industry, founding_year, unicorn_entry_year, profit_loss_fy22, current_valuation, acquisitions, status, current_numeric_valuation, profit_loss_fy22_num) VALUES ('Postman', 'Saas API Development and Testing', 2014, 2020, 'NA', '$5.6 Billion', '0', 'Private ', 5600000000.0, 0);
INSERT INTO public.unicorn_startups (startup_name, industry, founding_year, unicorn_entry_year, profit_loss_fy22, current_valuation, acquisitions, status, current_numeric_valuation, profit_loss_fy22_num) VALUES ('Delhivery', 'E-commerce Logistics Services', 2011, 2019, '-$128 Million', '$3.27 Billion', '5', 'Listed ', 3270000000.00, -128000000);
INSERT INTO public.unicorn_startups (startup_name, industry, founding_year, unicorn_entry_year, profit_loss_fy22, current_valuation, acquisitions, status, current_numeric_valuation, profit_loss_fy22_num) VALUES ('Icertis', 'Saas Contract Management', 2009, 2019, 'NA', '$5 Billion', '0', 'Private ', 5000000000, 0);
INSERT INTO public.unicorn_startups (startup_name, industry, founding_year, unicorn_entry_year, profit_loss_fy22, current_valuation, acquisitions, status, current_numeric_valuation, profit_loss_fy22_num) VALUES ('Ola Electric', 'Automotive', 2017, 2019, 'NA', '$5 Billion', '1', 'Private ', 5000000000, 0);
INSERT INTO public.unicorn_startups (startup_name, industry, founding_year, unicorn_entry_year, profit_loss_fy22, current_valuation, acquisitions, status, current_numeric_valuation, profit_loss_fy22_num) VALUES ('Druva', 'Saas Data Management', 2008, 2019, 'NA', '$2 Billion', '3', 'Acquired ', 2000000000, 0);
INSERT INTO public.unicorn_startups (startup_name, industry, founding_year, unicorn_entry_year, profit_loss_fy22, current_valuation, acquisitions, status, current_numeric_valuation, profit_loss_fy22_num) VALUES ('BigBasket', 'E-commerce Groceries', 2011, 2019, '-$100 Million', '$3.2 Billion', '6', 'Acquired ', 3200000000.0, -100000000);
INSERT INTO public.unicorn_startups (startup_name, industry, founding_year, unicorn_entry_year, profit_loss_fy22, current_valuation, acquisitions, status, current_numeric_valuation, profit_loss_fy22_num) VALUES ('Rivigo', 'Logistics', 2014, 2019, '-$21 Million', '$1.05 Billion', '0', 'Private ', 1050000000.00, -21000000);


-- Completed on 2025-05-22 18:32:24

--
-- PostgreSQL database dump complete
--

