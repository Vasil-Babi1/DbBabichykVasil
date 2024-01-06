--
-- PostgreSQL database dump
--

-- Dumped from database version 16.1
-- Dumped by pg_dump version 16.1

-- Started on 2024-01-06 21:34:29

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
-- TOC entry 219 (class 1259 OID 18642)
-- Name: computerequipment; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.computerequipment (
    equipment_id integer NOT NULL,
    equipment_type character varying(64) NOT NULL,
    model character varying(32) NOT NULL,
    office_id integer,
    service_id integer
);


ALTER TABLE public.computerequipment OWNER TO postgres;

--
-- TOC entry 218 (class 1259 OID 18627)
-- Name: networkequipment; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.networkequipment (
    equipment_id integer NOT NULL,
    equipment_type character varying(64) NOT NULL,
    model character varying(32) NOT NULL,
    office_id integer,
    service_id integer
);


ALTER TABLE public.networkequipment OWNER TO postgres;

--
-- TOC entry 215 (class 1259 OID 18605)
-- Name: officemanagers; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.officemanagers (
    manager_id integer NOT NULL,
    manager_name character varying(32) NOT NULL,
    contact_info character varying(64) NOT NULL
);


ALTER TABLE public.officemanagers OWNER TO postgres;

--
-- TOC entry 216 (class 1259 OID 18610)
-- Name: offices; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.offices (
    office_id integer NOT NULL,
    office_name character varying(64) NOT NULL,
    manager_id integer NOT NULL
);


ALTER TABLE public.offices OWNER TO postgres;

--
-- TOC entry 217 (class 1259 OID 18620)
-- Name: servicehistory; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.servicehistory (
    service_id integer NOT NULL,
    service_date date NOT NULL,
    service_details text
);


ALTER TABLE public.servicehistory OWNER TO postgres;

--
-- TOC entry 4865 (class 0 OID 18642)
-- Dependencies: 219
-- Data for Name: computerequipment; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.computerequipment (equipment_id, equipment_type, model, office_id, service_id) VALUES (401, 'Настільний комп’ютер', 'Dell OptiPlex 3080', 201, 8);
INSERT INTO public.computerequipment (equipment_id, equipment_type, model, office_id, service_id) VALUES (402, 'Ноутбук', 'HP Pavilion 15', 201, NULL);
INSERT INTO public.computerequipment (equipment_id, equipment_type, model, office_id, service_id) VALUES (403, 'Монітор', 'LG 27GL850-B', 201, 9);
INSERT INTO public.computerequipment (equipment_id, equipment_type, model, office_id, service_id) VALUES (404, 'Принтер', 'Brother HL-L2390DW', 201, NULL);
INSERT INTO public.computerequipment (equipment_id, equipment_type, model, office_id, service_id) VALUES (405, 'Сканер', 'Canon CanoScan LiDE 300', 201, NULL);
INSERT INTO public.computerequipment (equipment_id, equipment_type, model, office_id, service_id) VALUES (411, 'Настільний комп’ютер', 'Lenovo ThinkCentre M720q', 213, NULL);
INSERT INTO public.computerequipment (equipment_id, equipment_type, model, office_id, service_id) VALUES (412, 'Ноутбук', 'Apple MacBook Pro', 213, NULL);
INSERT INTO public.computerequipment (equipment_id, equipment_type, model, office_id, service_id) VALUES (413, 'Монітор', 'Dell Ultrasharp U2720Q', 213, 10);
INSERT INTO public.computerequipment (equipment_id, equipment_type, model, office_id, service_id) VALUES (414, 'Принтер', 'HP LaserJet Pro M15w', 213, 11);
INSERT INTO public.computerequipment (equipment_id, equipment_type, model, office_id, service_id) VALUES (415, 'Сканер', 'Epson Perfection V600', 213, NULL);
INSERT INTO public.computerequipment (equipment_id, equipment_type, model, office_id, service_id) VALUES (421, 'Настільний комп’ютер', 'HP EliteDesk 800 G5', 227, NULL);
INSERT INTO public.computerequipment (equipment_id, equipment_type, model, office_id, service_id) VALUES (422, 'Ноутбук', 'Dell XPS 13', 227, NULL);
INSERT INTO public.computerequipment (equipment_id, equipment_type, model, office_id, service_id) VALUES (423, 'Монітор', 'ASUS ProArt PA329C', 227, 12);
INSERT INTO public.computerequipment (equipment_id, equipment_type, model, office_id, service_id) VALUES (424, 'Принтер', 'Canon PIXMA TR8520', 227, NULL);
INSERT INTO public.computerequipment (equipment_id, equipment_type, model, office_id, service_id) VALUES (425, 'Сканер', 'Fujitsu ScanSnap iX1500', 227, 13);


--
-- TOC entry 4864 (class 0 OID 18627)
-- Dependencies: 218
-- Data for Name: networkequipment; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.networkequipment (equipment_id, equipment_type, model, office_id, service_id) VALUES (301, 'Маршрутизатор', 'Cisco RV340', 201, NULL);
INSERT INTO public.networkequipment (equipment_id, equipment_type, model, office_id, service_id) VALUES (302, 'Комутатор', 'NETGEAR GS308', 201, NULL);
INSERT INTO public.networkequipment (equipment_id, equipment_type, model, office_id, service_id) VALUES (303, 'Бездротовий маршрутизатор', 'TP-Link Archer C7', 201, 2);
INSERT INTO public.networkequipment (equipment_id, equipment_type, model, office_id, service_id) VALUES (304, 'Маршрутизатор', 'ASUS RT-AC68U', 201, NULL);
INSERT INTO public.networkequipment (equipment_id, equipment_type, model, office_id, service_id) VALUES (305, 'Комутатор', 'Cisco SG200-08', 201, 1);
INSERT INTO public.networkequipment (equipment_id, equipment_type, model, office_id, service_id) VALUES (311, 'Маршрутизатор', 'Linksys EA7500', 213, NULL);
INSERT INTO public.networkequipment (equipment_id, equipment_type, model, office_id, service_id) VALUES (312, 'Комутатор', 'D-Link DGS-108', 213, 3);
INSERT INTO public.networkequipment (equipment_id, equipment_type, model, office_id, service_id) VALUES (313, 'Бездротовий маршрутизатор', 'Netgear Nighthawk AX12', 213, 4);
INSERT INTO public.networkequipment (equipment_id, equipment_type, model, office_id, service_id) VALUES (314, 'Маршрутизатор', 'TP-Link Archer C1200', 213, 5);
INSERT INTO public.networkequipment (equipment_id, equipment_type, model, office_id, service_id) VALUES (315, 'Комутатор', 'Linksys LGS108', 213, NULL);
INSERT INTO public.networkequipment (equipment_id, equipment_type, model, office_id, service_id) VALUES (321, 'Маршрутизатор', 'Netgear Nighthawk R7000', 227, NULL);
INSERT INTO public.networkequipment (equipment_id, equipment_type, model, office_id, service_id) VALUES (322, 'Комутатор', 'TP-Link TL-SG108', 227, NULL);
INSERT INTO public.networkequipment (equipment_id, equipment_type, model, office_id, service_id) VALUES (323, 'Бездротовий маршрутизатор', 'Google Wifi', 227, NULL);
INSERT INTO public.networkequipment (equipment_id, equipment_type, model, office_id, service_id) VALUES (324, 'Маршрутизатор', 'Cisco RV340', 227, 6);
INSERT INTO public.networkequipment (equipment_id, equipment_type, model, office_id, service_id) VALUES (325, 'Комутатор', 'NETGEAR GS105NA', 227, 7);


--
-- TOC entry 4861 (class 0 OID 18605)
-- Dependencies: 215
-- Data for Name: officemanagers; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.officemanagers (manager_id, manager_name, contact_info) VALUES (101, 'Олександр Сергійович', 'oleksandr.s@company.com');
INSERT INTO public.officemanagers (manager_id, manager_name, contact_info) VALUES (113, 'Ірина Василівна', 'iryna.v@company.com');
INSERT INTO public.officemanagers (manager_id, manager_name, contact_info) VALUES (127, 'Микола Іванович', 'mykola.i@company.com');


--
-- TOC entry 4862 (class 0 OID 18610)
-- Dependencies: 216
-- Data for Name: offices; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.offices (office_id, office_name, manager_id) VALUES (201, 'Головний офіс', 101);
INSERT INTO public.offices (office_id, office_name, manager_id) VALUES (213, 'Офіс з розробки', 113);
INSERT INTO public.offices (office_id, office_name, manager_id) VALUES (227, 'Офіс з маркетингу', 127);


--
-- TOC entry 4863 (class 0 OID 18620)
-- Dependencies: 217
-- Data for Name: servicehistory; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.servicehistory (service_id, service_date, service_details) VALUES (1, '2024-01-15', 'Оновлення прошивки комутатора Cisco SG200-08');
INSERT INTO public.servicehistory (service_id, service_date, service_details) VALUES (2, '2024-02-20', 'Оновлення прошивки маршрутизатора TP-Link Archer C7');
INSERT INTO public.servicehistory (service_id, service_date, service_details) VALUES (3, '2024-03-30', 'Оновлення прошивки комутатора D-Link DGS-108');
INSERT INTO public.servicehistory (service_id, service_date, service_details) VALUES (4, '2024-04-18', 'Заміна антени в бездротовому маршрутизаторі Netgear Nighthawk AX12');
INSERT INTO public.servicehistory (service_id, service_date, service_details) VALUES (5, '2024-05-22', 'Оновлення прошивки маршрутизатора TP-Link Archer C1200');
INSERT INTO public.servicehistory (service_id, service_date, service_details) VALUES (6, '2024-06-25', 'Оновлення прошивки маршрутизатора Cisco RV340');
INSERT INTO public.servicehistory (service_id, service_date, service_details) VALUES (7, '2024-07-30', 'Заміна портів в комутаторі NETGEAR GS105NA');
INSERT INTO public.servicehistory (service_id, service_date, service_details) VALUES (8, '2024-08-18', 'Заміна блоку живлення в настільному комп’ютері Dell OptiPlex 3080');
INSERT INTO public.servicehistory (service_id, service_date, service_details) VALUES (9, '2024-09-22', 'Калібрування кольорів для монітора LG 27GL850-B');
INSERT INTO public.servicehistory (service_id, service_date, service_details) VALUES (10, '2024-10-22', 'Калібрування кольорів для монітора Dell Ultrasharp U2720Q');
INSERT INTO public.servicehistory (service_id, service_date, service_details) VALUES (11, '2024-11-22', 'Заміна картриджа в принтері HP LaserJet Pro M15w');
INSERT INTO public.servicehistory (service_id, service_date, service_details) VALUES (12, '2024-12-22', 'Заміна матриці в моніторі ASUS ProArt PA329C');
INSERT INTO public.servicehistory (service_id, service_date, service_details) VALUES (13, '2025-01-22', 'Заміна лампи сканера Fujitsu ScanSnap iX1500');


--
-- TOC entry 4712 (class 2606 OID 18646)
-- Name: computerequipment computerequipment_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.computerequipment
    ADD CONSTRAINT computerequipment_pkey PRIMARY KEY (equipment_id);


--
-- TOC entry 4710 (class 2606 OID 18631)
-- Name: networkequipment networkequipment_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.networkequipment
    ADD CONSTRAINT networkequipment_pkey PRIMARY KEY (equipment_id);


--
-- TOC entry 4704 (class 2606 OID 18609)
-- Name: officemanagers officemanagers_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.officemanagers
    ADD CONSTRAINT officemanagers_pkey PRIMARY KEY (manager_id);


--
-- TOC entry 4706 (class 2606 OID 18614)
-- Name: offices offices_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.offices
    ADD CONSTRAINT offices_pkey PRIMARY KEY (office_id);


--
-- TOC entry 4708 (class 2606 OID 18626)
-- Name: servicehistory servicehistory_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.servicehistory
    ADD CONSTRAINT servicehistory_pkey PRIMARY KEY (service_id);


--
-- TOC entry 4716 (class 2606 OID 18647)
-- Name: computerequipment computerequipment_office_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.computerequipment
    ADD CONSTRAINT computerequipment_office_id_fkey FOREIGN KEY (office_id) REFERENCES public.offices(office_id);


--
-- TOC entry 4717 (class 2606 OID 18652)
-- Name: computerequipment computerequipment_service_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.computerequipment
    ADD CONSTRAINT computerequipment_service_id_fkey FOREIGN KEY (service_id) REFERENCES public.servicehistory(service_id);


--
-- TOC entry 4714 (class 2606 OID 18632)
-- Name: networkequipment networkequipment_office_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.networkequipment
    ADD CONSTRAINT networkequipment_office_id_fkey FOREIGN KEY (office_id) REFERENCES public.offices(office_id);


--
-- TOC entry 4715 (class 2606 OID 18637)
-- Name: networkequipment networkequipment_service_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.networkequipment
    ADD CONSTRAINT networkequipment_service_id_fkey FOREIGN KEY (service_id) REFERENCES public.servicehistory(service_id);


--
-- TOC entry 4713 (class 2606 OID 18615)
-- Name: offices offices_manager_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.offices
    ADD CONSTRAINT offices_manager_id_fkey FOREIGN KEY (manager_id) REFERENCES public.officemanagers(manager_id);


-- Completed on 2024-01-06 21:34:29

--
-- PostgreSQL database dump complete
--

