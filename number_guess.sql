--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

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

DROP DATABASE number_guess;
--
-- Name: number_guess; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE number_guess WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE number_guess OWNER TO freecodecamp;

\connect number_guess

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
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    user_id integer NOT NULL,
    username character varying(25) NOT NULL,
    games_played integer DEFAULT 0,
    best_game integer
);


ALTER TABLE public.users OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.users_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_user_id_seq OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users.user_id;


--
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (36, 'alice', 11, 5);
INSERT INTO public.users VALUES (2, 'user_1737322564428', 2, 37);
INSERT INTO public.users VALUES (13, 'user_1737322950186', 2, 705);
INSERT INTO public.users VALUES (1, 'user_1737322564429', 5, 140);
INSERT INTO public.users VALUES (94, 'user_1737325476924', 5, 235);
INSERT INTO public.users VALUES (23, 'user_1737323354360', 2, 319);
INSERT INTO public.users VALUES (12, 'user_1737322950187', 5, 335);
INSERT INTO public.users VALUES (4, 'user_1737322617363', 2, 438);
INSERT INTO public.users VALUES (5, 'Nick', 2, 10);
INSERT INTO public.users VALUES (3, 'user_1737322617364', 5, 86);
INSERT INTO public.users VALUES (22, 'user_1737323354361', 5, 81);
INSERT INTO public.users VALUES (72, 'user_1737325360117', 5, 364);
INSERT INTO public.users VALUES (42, 'user_1737323901562', 2, 175);
INSERT INTO public.users VALUES (53, 'teste', 5, 5);
INSERT INTO public.users VALUES (7, 'user_1737322683178', 2, 353);
INSERT INTO public.users VALUES (15, 'user_1737323043469', 2, 569);
INSERT INTO public.users VALUES (6, 'user_1737322683179', 5, 95);
INSERT INTO public.users VALUES (41, 'user_1737323901563', 5, 16);
INSERT INTO public.users VALUES (14, 'user_1737323043470', 5, 128);
INSERT INTO public.users VALUES (25, 'user_1737323380078', 2, 468);
INSERT INTO public.users VALUES (9, 'user_1737322719288', 2, 11);
INSERT INTO public.users VALUES (24, 'user_1737323380079', 5, 150);
INSERT INTO public.users VALUES (8, 'user_1737322719289', 5, 216);
INSERT INTO public.users VALUES (65, 'user_1737325154554', 2, 165);
INSERT INTO public.users VALUES (17, 'user_1737323165355', 2, 423);
INSERT INTO public.users VALUES (16, 'user_1737323165356', 5, 278);
INSERT INTO public.users VALUES (11, 'user_1737322761923', 2, 519);
INSERT INTO public.users VALUES (90, 'user_1737325472934', 5, 357);
INSERT INTO public.users VALUES (10, 'user_1737322761924', 5, 2);
INSERT INTO public.users VALUES (81, 'user_1737325463071', 2, 69);
INSERT INTO public.users VALUES (27, 'user_1737323386820', 2, 730);
INSERT INTO public.users VALUES (55, 'user_1737325022421', 2, 194);
INSERT INTO public.users VALUES (44, 'user_1737323955213', 2, 688);
INSERT INTO public.users VALUES (19, 'user_1737323201365', 2, 126);
INSERT INTO public.users VALUES (26, 'user_1737323386821', 5, 525);
INSERT INTO public.users VALUES (18, 'user_1737323201366', 5, 11);
INSERT INTO public.users VALUES (28, 'user_1737323483345', 0, NULL);
INSERT INTO public.users VALUES (29, 'user_1737323483344', 0, NULL);
INSERT INTO public.users VALUES (30, 'user_1737323589159', 0, NULL);
INSERT INTO public.users VALUES (31, 'user_1737323589158', 0, NULL);
INSERT INTO public.users VALUES (64, 'user_1737325154555', 5, 54);
INSERT INTO public.users VALUES (21, 'user_1737323331054', 2, 66);
INSERT INTO public.users VALUES (43, 'user_1737323955214', 5, 216);
INSERT INTO public.users VALUES (20, 'user_1737323331055', 5, 304);
INSERT INTO public.users VALUES (54, 'user_1737325022422', 5, 154);
INSERT INTO public.users VALUES (33, 'user_1737323660834', 2, 19);
INSERT INTO public.users VALUES (32, 'user_1737323660835', 5, 174);
INSERT INTO public.users VALUES (87, 'user_1737325468583', 2, 130);
INSERT INTO public.users VALUES (46, 'user_1737323972786', 2, 364);
INSERT INTO public.users VALUES (80, 'user_1737325463072', 5, 313);
INSERT INTO public.users VALUES (75, 'user_1737325363181', 2, 96);
INSERT INTO public.users VALUES (45, 'user_1737323972787', 5, 309);
INSERT INTO public.users VALUES (35, 'user_1737323730898', 2, 590);
INSERT INTO public.users VALUES (57, 'user_1737325080661', 2, 435);
INSERT INTO public.users VALUES (67, 'user_1737325157313', 2, 640);
INSERT INTO public.users VALUES (34, 'user_1737323730899', 5, 122);
INSERT INTO public.users VALUES (37, 'bob', 15, 3);
INSERT INTO public.users VALUES (38, 'charlie', 8, 7);
INSERT INTO public.users VALUES (56, 'user_1737325080662', 5, 375);
INSERT INTO public.users VALUES (48, 'user_1737324008622', 2, 140);
INSERT INTO public.users VALUES (99, 'user_1737325480695', 2, 3);
INSERT INTO public.users VALUES (66, 'user_1737325157314', 5, 138);
INSERT INTO public.users VALUES (40, 'user_1737323760741', 2, 431);
INSERT INTO public.users VALUES (47, 'user_1737324008623', 5, 161);
INSERT INTO public.users VALUES (39, 'user_1737323760742', 5, 112);
INSERT INTO public.users VALUES (74, 'user_1737325363182', 5, 116);
INSERT INTO public.users VALUES (59, 'user_1737325082810', 2, 171);
INSERT INTO public.users VALUES (86, 'user_1737325468584', 5, 52);
INSERT INTO public.users VALUES (50, 'user_1737324115077', 2, 384);
INSERT INTO public.users VALUES (58, 'user_1737325082811', 5, 393);
INSERT INTO public.users VALUES (49, 'user_1737324115078', 5, 121);
INSERT INTO public.users VALUES (69, 'user_1737325161391', 2, 448);
INSERT INTO public.users VALUES (52, 'user_1737324734615', 2, 108);
INSERT INTO public.users VALUES (111, 'user_1737325491411', 2, 323);
INSERT INTO public.users VALUES (61, 'user_1737325084662', 2, 229);
INSERT INTO public.users VALUES (68, 'user_1737325161392', 5, 98);
INSERT INTO public.users VALUES (51, 'user_1737324734616', 5, 169);
INSERT INTO public.users VALUES (77, 'user_1737325427030', 2, 485);
INSERT INTO public.users VALUES (60, 'user_1737325084663', 5, 469);
INSERT INTO public.users VALUES (83, 'user_1737325464970', 2, 382);
INSERT INTO public.users VALUES (76, 'user_1737325427031', 5, 77);
INSERT INTO public.users VALUES (71, 'user_1737325163379', 2, 463);
INSERT INTO public.users VALUES (63, 'user_1737325086423', 2, 136);
INSERT INTO public.users VALUES (82, 'user_1737325464971', 5, 165);
INSERT INTO public.users VALUES (70, 'user_1737325163380', 5, 233);
INSERT INTO public.users VALUES (62, 'user_1737325086424', 5, 282);
INSERT INTO public.users VALUES (93, 'user_1737325475056', 2, 286);
INSERT INTO public.users VALUES (98, 'user_1737325480696', 5, 20);
INSERT INTO public.users VALUES (89, 'user_1737325471106', 2, 191);
INSERT INTO public.users VALUES (73, 'user_1737325360116', 2, 223);
INSERT INTO public.users VALUES (79, 'user_1737325429320', 2, 114);
INSERT INTO public.users VALUES (97, 'user_1737325478859', 2, 333);
INSERT INTO public.users VALUES (78, 'user_1737325429321', 5, 100);
INSERT INTO public.users VALUES (88, 'user_1737325471107', 5, 195);
INSERT INTO public.users VALUES (85, 'user_1737325466730', 2, 423);
INSERT INTO public.users VALUES (92, 'user_1737325475057', 5, 224);
INSERT INTO public.users VALUES (107, 'user_1737325487954', 2, 108);
INSERT INTO public.users VALUES (84, 'user_1737325466731', 5, 44);
INSERT INTO public.users VALUES (105, 'user_1737325486052', 2, 153);
INSERT INTO public.users VALUES (96, 'user_1737325478860', 5, 98);
INSERT INTO public.users VALUES (91, 'user_1737325472933', 2, 2);
INSERT INTO public.users VALUES (103, 'user_1737325484258', 2, 55);
INSERT INTO public.users VALUES (95, 'user_1737325476923', 2, 352);
INSERT INTO public.users VALUES (113, 'user_1737325493226', 2, 203);
INSERT INTO public.users VALUES (112, 'user_1737325493227', 5, 172);
INSERT INTO public.users VALUES (104, 'user_1737325486053', 5, 349);
INSERT INTO public.users VALUES (101, 'user_1737325482497', 2, 41);
INSERT INTO public.users VALUES (102, 'user_1737325484259', 5, 65);
INSERT INTO public.users VALUES (106, 'user_1737325487955', 5, 371);
INSERT INTO public.users VALUES (100, 'user_1737325482498', 5, 178);
INSERT INTO public.users VALUES (109, 'user_1737325489641', 2, 760);
INSERT INTO public.users VALUES (110, 'user_1737325491412', 5, 71);
INSERT INTO public.users VALUES (108, 'user_1737325489642', 5, 60);
INSERT INTO public.users VALUES (115, 'user_1737325494906', 2, 26);
INSERT INTO public.users VALUES (114, 'user_1737325494907', 5, 296);
INSERT INTO public.users VALUES (117, 'user_1737325497645', 2, 275);
INSERT INTO public.users VALUES (116, 'user_1737325497646', 5, 24);
INSERT INTO public.users VALUES (119, 'user_1737325500892', 2, 34);
INSERT INTO public.users VALUES (118, 'user_1737325500893', 5, 40);
INSERT INTO public.users VALUES (120, 'user_1737325502721', 5, 478);
INSERT INTO public.users VALUES (121, 'user_1737325502720', 2, 826);
INSERT INTO public.users VALUES (122, 'user_1737325504586', 5, 275);
INSERT INTO public.users VALUES (123, 'user_1737325504585', 2, 202);
INSERT INTO public.users VALUES (125, 'user_1737325513130', 2, 259);
INSERT INTO public.users VALUES (124, 'user_1737325513131', 5, 89);
INSERT INTO public.users VALUES (127, 'user_1737325514614', 2, 87);
INSERT INTO public.users VALUES (126, 'user_1737325514615', 5, 24);
INSERT INTO public.users VALUES (208, 'user_1737325984330', 1, 793);
INSERT INTO public.users VALUES (147, 'user_1737325530780', 2, 691);
INSERT INTO public.users VALUES (174, 'user_1737325554339', 5, 179);
INSERT INTO public.users VALUES (129, 'user_1737325516196', 2, 559);
INSERT INTO public.users VALUES (146, 'user_1737325530781', 5, 83);
INSERT INTO public.users VALUES (128, 'user_1737325516197', 5, 81);
INSERT INTO public.users VALUES (195, 'user_1737325922742', 5, 6);
INSERT INTO public.users VALUES (163, 'user_1737325544196', 2, 251);
INSERT INTO public.users VALUES (162, 'user_1737325544197', 5, 210);
INSERT INTO public.users VALUES (131, 'user_1737325517945', 2, 153);
INSERT INTO public.users VALUES (149, 'user_1737325532641', 2, 563);
INSERT INTO public.users VALUES (130, 'user_1737325517946', 5, 347);
INSERT INTO public.users VALUES (209, 'user_1737325986063', 1, 938);
INSERT INTO public.users VALUES (148, 'user_1737325532642', 5, 225);
INSERT INTO public.users VALUES (188, 'user_1737325785740', 2, 535);
INSERT INTO public.users VALUES (177, 'user_1737325555909', 2, 751);
INSERT INTO public.users VALUES (133, 'user_1737325519620', 2, 420);
INSERT INTO public.users VALUES (132, 'user_1737325519621', 5, 115);
INSERT INTO public.users VALUES (165, 'user_1737325545786', 2, 436);
INSERT INTO public.users VALUES (151, 'user_1737325534358', 2, 178);
INSERT INTO public.users VALUES (187, 'user_1737325785741', 5, 97);
INSERT INTO public.users VALUES (176, 'user_1737325555910', 5, 94);
INSERT INTO public.users VALUES (164, 'user_1737325545787', 5, 151);
INSERT INTO public.users VALUES (135, 'user_1737325521259', 2, 121);
INSERT INTO public.users VALUES (150, 'user_1737325534359', 5, 103);
INSERT INTO public.users VALUES (134, 'user_1737325521260', 5, 103);
INSERT INTO public.users VALUES (217, 'user_1737326145220', 5, 104);
INSERT INTO public.users VALUES (210, 'user_1737325986062', 1, 808);
INSERT INTO public.users VALUES (198, 'user_1737325924532', 2, 582);
INSERT INTO public.users VALUES (153, 'user_1737325535975', 2, 942);
INSERT INTO public.users VALUES (137, 'user_1737325522881', 2, 410);
INSERT INTO public.users VALUES (152, 'user_1737325535976', 5, 63);
INSERT INTO public.users VALUES (136, 'user_1737325522882', 5, 244);
INSERT INTO public.users VALUES (211, 'user_1737326130053', 0, NULL);
INSERT INTO public.users VALUES (167, 'user_1737325547559', 2, 105);
INSERT INTO public.users VALUES (212, 'user_1737326130052', 0, NULL);
INSERT INTO public.users VALUES (139, 'user_1737325524507', 2, 118);
INSERT INTO public.users VALUES (179, 'user_1737325557388', 2, 654);
INSERT INTO public.users VALUES (197, 'user_1737325924533', 5, 35);
INSERT INTO public.users VALUES (138, 'user_1737325524508', 5, 156);
INSERT INTO public.users VALUES (155, 'user_1737325537660', 2, 644);
INSERT INTO public.users VALUES (166, 'user_1737325547560', 5, 225);
INSERT INTO public.users VALUES (154, 'user_1737325537661', 5, 111);
INSERT INTO public.users VALUES (190, 'user_1737325788217', 2, 21);
INSERT INTO public.users VALUES (141, 'user_1737325525959', 2, 763);
INSERT INTO public.users VALUES (178, 'user_1737325557389', 5, 103);
INSERT INTO public.users VALUES (140, 'user_1737325525960', 5, 67);
INSERT INTO public.users VALUES (213, 'user_1737326133800', 0, NULL);
INSERT INTO public.users VALUES (214, 'user_1737326133799', 0, NULL);
INSERT INTO public.users VALUES (157, 'user_1737325539328', 2, 101);
INSERT INTO public.users VALUES (169, 'user_1737325549339', 2, 595);
INSERT INTO public.users VALUES (143, 'user_1737325527605', 2, 25);
INSERT INTO public.users VALUES (189, 'user_1737325788218', 5, 171);
INSERT INTO public.users VALUES (156, 'user_1737325539329', 5, 348);
INSERT INTO public.users VALUES (142, 'user_1737325527606', 5, 329);
INSERT INTO public.users VALUES (168, 'user_1737325549340', 5, 124);
INSERT INTO public.users VALUES (145, 'user_1737325529203', 2, 74);
INSERT INTO public.users VALUES (181, 'user_1737325558948', 2, 164);
INSERT INTO public.users VALUES (159, 'user_1737325540877', 2, 218);
INSERT INTO public.users VALUES (144, 'user_1737325529204', 5, 297);
INSERT INTO public.users VALUES (158, 'user_1737325540878', 5, 122);
INSERT INTO public.users VALUES (180, 'user_1737325558949', 5, 191);
INSERT INTO public.users VALUES (237, 'user_1737326662994', 1, 615);
INSERT INTO public.users VALUES (171, 'user_1737325550972', 2, 310);
INSERT INTO public.users VALUES (236, 'user_1737326613430', 2, 473);
INSERT INTO public.users VALUES (170, 'user_1737325550973', 5, 117);
INSERT INTO public.users VALUES (161, 'user_1737325542555', 2, 526);
INSERT INTO public.users VALUES (200, 'user_1737325926264', 2, 78);
INSERT INTO public.users VALUES (160, 'user_1737325542556', 5, 14);
INSERT INTO public.users VALUES (192, 'user_1737325917365', 2, 151);
INSERT INTO public.users VALUES (173, 'user_1737325552658', 2, 243);
INSERT INTO public.users VALUES (199, 'user_1737325926265', 5, 69);
INSERT INTO public.users VALUES (184, 'user_1737325761292', 2, 222);
INSERT INTO public.users VALUES (172, 'user_1737325552659', 5, 320);
INSERT INTO public.users VALUES (191, 'user_1737325917366', 5, 243);
INSERT INTO public.users VALUES (183, 'user_1737325761293', 5, 789);
INSERT INTO public.users VALUES (175, 'user_1737325554338', 2, 202);
INSERT INTO public.users VALUES (201, 'user_1737325972448', 1, 561);
INSERT INTO public.users VALUES (202, 'user_1737325972447', 1, 89);
INSERT INTO public.users VALUES (194, 'user_1737325920521', 2, 728);
INSERT INTO public.users VALUES (186, 'user_1737325769796', 2, 15);
INSERT INTO public.users VALUES (225, 'user_1737326185844', 5, 390);
INSERT INTO public.users VALUES (203, 'user_1737325980547', 1, 565);
INSERT INTO public.users VALUES (185, 'user_1737325769797', 5, 17);
INSERT INTO public.users VALUES (193, 'user_1737325920522', 5, 149);
INSERT INTO public.users VALUES (216, 'user_1737326143072', 2, 154);
INSERT INTO public.users VALUES (204, 'user_1737325980546', 1, 867);
INSERT INTO public.users VALUES (220, 'user_1737326178471', 2, 619);
INSERT INTO public.users VALUES (205, 'user_1737325982562', 1, 211);
INSERT INTO public.users VALUES (196, 'user_1737325922741', 2, 750);
INSERT INTO public.users VALUES (224, 'user_1737326182751', 2, 457);
INSERT INTO public.users VALUES (206, 'user_1737325982561', 1, 66);
INSERT INTO public.users VALUES (219, 'user_1737326178472', 5, 493);
INSERT INTO public.users VALUES (207, 'user_1737325984331', 1, 487);
INSERT INTO public.users VALUES (215, 'user_1737326143073', 5, 2);
INSERT INTO public.users VALUES (233, 'user_1737326603363', 5, 175);
INSERT INTO public.users VALUES (218, 'user_1737326145219', 2, 188);
INSERT INTO public.users VALUES (223, 'user_1737326182752', 5, 72);
INSERT INTO public.users VALUES (230, 'user_1737326192459', 2, 75);
INSERT INTO public.users VALUES (222, 'user_1737326180711', 2, 77);
INSERT INTO public.users VALUES (228, 'user_1737326188790', 2, 506);
INSERT INTO public.users VALUES (232, 'user_1737326195116', 2, 301);
INSERT INTO public.users VALUES (221, 'user_1737326180712', 5, 135);
INSERT INTO public.users VALUES (239, 'user_1737326664967', 1, 199);
INSERT INTO public.users VALUES (226, 'user_1737326185843', 2, 460);
INSERT INTO public.users VALUES (229, 'user_1737326192460', 5, 185);
INSERT INTO public.users VALUES (227, 'user_1737326188791', 5, 6);
INSERT INTO public.users VALUES (238, 'user_1737326662993', 1, 898);
INSERT INTO public.users VALUES (234, 'user_1737326603362', 2, 766);
INSERT INTO public.users VALUES (231, 'user_1737326195117', 5, 196);
INSERT INTO public.users VALUES (235, 'user_1737326613431', 5, 238);
INSERT INTO public.users VALUES (240, 'user_1737326664966', 1, 941);
INSERT INTO public.users VALUES (241, 'user_1737326679629', 1, 469);
INSERT INTO public.users VALUES (242, 'user_1737326679628', 1, 537);
INSERT INTO public.users VALUES (243, 'user_1737326700708', 1, 195);
INSERT INTO public.users VALUES (244, 'user_1737326700707', 1, 858);
INSERT INTO public.users VALUES (245, 'user_1737326713979', 1, 870);
INSERT INTO public.users VALUES (246, 'user_1737326713978', 1, 2);
INSERT INTO public.users VALUES (247, 'user_1737326940929', 1, 889);
INSERT INTO public.users VALUES (248, 'user_1737326940928', 1, 254);
INSERT INTO public.users VALUES (249, 'user_1737327058093', 1, 502);
INSERT INTO public.users VALUES (250, 'user_1737327058092', 1, 466);
INSERT INTO public.users VALUES (251, 'user_1737327106432', 5, 39);
INSERT INTO public.users VALUES (252, 'user_1737327106431', 2, 236);
INSERT INTO public.users VALUES (253, 'user_1737327183038', 5, 10);
INSERT INTO public.users VALUES (254, 'user_1737327183037', 2, 292);
INSERT INTO public.users VALUES (182, 'nick', 5, 11);
INSERT INTO public.users VALUES (297, 'user_1737327643695', 0, NULL);
INSERT INTO public.users VALUES (273, 'user_1737327313598', 5, 135);
INSERT INTO public.users VALUES (256, 'user_1737327206927', 2, 240);
INSERT INTO public.users VALUES (314, 'user_1737328082900', 2, 157);
INSERT INTO public.users VALUES (255, 'user_1737327206928', 5, 69);
INSERT INTO public.users VALUES (300, 'user_1737327645666', 0, NULL);
INSERT INTO public.users VALUES (342, 'user_1737328135010', 2, 98);
INSERT INTO public.users VALUES (299, 'user_1737327645667', 0, NULL);
INSERT INTO public.users VALUES (258, 'user_1737327234207', 2, 39);
INSERT INTO public.users VALUES (276, 'user_1737327315626', 2, 341);
INSERT INTO public.users VALUES (257, 'user_1737327234208', 5, 262);
INSERT INTO public.users VALUES (275, 'user_1737327315627', 5, 379);
INSERT INTO public.users VALUES (302, 'user_1737327647632', 0, NULL);
INSERT INTO public.users VALUES (313, 'user_1737328082901', 5, 168);
INSERT INTO public.users VALUES (260, 'user_1737327242129', 2, 39);
INSERT INTO public.users VALUES (301, 'user_1737327647633', 0, NULL);
INSERT INTO public.users VALUES (259, 'user_1737327242130', 5, 96);
INSERT INTO public.users VALUES (324, 'user_1737328116338', 2, 167);
INSERT INTO public.users VALUES (278, 'user_1737327318283', 2, 559);
INSERT INTO public.users VALUES (304, 'user_1737327667516', 0, NULL);
INSERT INTO public.users VALUES (277, 'user_1737327318284', 5, 193);
INSERT INTO public.users VALUES (262, 'user_1737327258504', 2, 686);
INSERT INTO public.users VALUES (360, 'user_1737328309950', 2, 177);
INSERT INTO public.users VALUES (303, 'user_1737327667517', 0, NULL);
INSERT INTO public.users VALUES (261, 'user_1737327258505', 5, 226);
INSERT INTO public.users VALUES (280, 'user_1737327330480', 2, 749);
INSERT INTO public.users VALUES (306, 'user_1737327679895', 0, NULL);
INSERT INTO public.users VALUES (264, 'user_1737327299458', 2, 843);
INSERT INTO public.users VALUES (323, 'user_1737328116340', 5, 203);
INSERT INTO public.users VALUES (279, 'user_1737327330481', 5, 75);
INSERT INTO public.users VALUES (263, 'user_1737327299459', 5, 159);
INSERT INTO public.users VALUES (282, 'user_1737327390366', 0, NULL);
INSERT INTO public.users VALUES (305, 'user_1737327679896', 0, NULL);
INSERT INTO public.users VALUES (266, 'user_1737327305388', 2, 684);
INSERT INTO public.users VALUES (281, 'user_1737327390367', 0, NULL);
INSERT INTO public.users VALUES (341, 'user_1737328135011', 5, 2);
INSERT INTO public.users VALUES (265, 'user_1737327305389', 5, 66);
INSERT INTO public.users VALUES (284, 'user_1737327480074', 0, NULL);
INSERT INTO public.users VALUES (316, 'user_1737328099357', 2, 380);
INSERT INTO public.users VALUES (332, 'user_1737328124589', 2, 264);
INSERT INTO public.users VALUES (283, 'user_1737327480075', 0, NULL);
INSERT INTO public.users VALUES (268, 'user_1737327307410', 2, 290);
INSERT INTO public.users VALUES (286, 'user_1737327482183', 0, NULL);
INSERT INTO public.users VALUES (267, 'user_1737327307411', 5, 27);
INSERT INTO public.users VALUES (315, 'user_1737328099358', 5, 76);
INSERT INTO public.users VALUES (285, 'user_1737327482184', 0, NULL);
INSERT INTO public.users VALUES (288, 'user_1737327632039', 0, NULL);
INSERT INTO public.users VALUES (270, 'user_1737327309505', 2, 43);
INSERT INTO public.users VALUES (308, 'user_1737327696574', 2, 5);
INSERT INTO public.users VALUES (269, 'user_1737327309506', 5, 80);
INSERT INTO public.users VALUES (287, 'user_1737327632040', 0, NULL);
INSERT INTO public.users VALUES (290, 'user_1737327636020', 0, NULL);
INSERT INTO public.users VALUES (349, 'user_1737328261143', 5, 175);
INSERT INTO public.users VALUES (272, 'user_1737327311519', 2, 47);
INSERT INTO public.users VALUES (289, 'user_1737327636021', 0, NULL);
INSERT INTO public.users VALUES (271, 'user_1737327311520', 5, 167);
INSERT INTO public.users VALUES (307, 'user_1737327696575', 5, 300);
INSERT INTO public.users VALUES (292, 'user_1737327637859', 0, NULL);
INSERT INTO public.users VALUES (326, 'user_1737328118446', 2, 383);
INSERT INTO public.users VALUES (291, 'user_1737327637860', 0, NULL);
INSERT INTO public.users VALUES (274, 'user_1737327313597', 2, 337);
INSERT INTO public.users VALUES (331, 'user_1737328124590', 5, 64);
INSERT INTO public.users VALUES (294, 'user_1737327639935', 0, NULL);
INSERT INTO public.users VALUES (318, 'user_1737328109816', 2, 85);
INSERT INTO public.users VALUES (293, 'user_1737327639936', 0, NULL);
INSERT INTO public.users VALUES (296, 'user_1737327641773', 0, NULL);
INSERT INTO public.users VALUES (338, 'user_1737328130720', 2, 493);
INSERT INTO public.users VALUES (310, 'user_1737327699429', 2, 169);
INSERT INTO public.users VALUES (295, 'user_1737327641774', 0, NULL);
INSERT INTO public.users VALUES (317, 'user_1737328109817', 5, 175);
INSERT INTO public.users VALUES (298, 'user_1737327643694', 0, NULL);
INSERT INTO public.users VALUES (325, 'user_1737328118447', 5, 85);
INSERT INTO public.users VALUES (309, 'user_1737327699430', 5, 299);
INSERT INTO public.users VALUES (354, 'user_1737328302534', 2, 325);
INSERT INTO public.users VALUES (320, 'user_1737328111836', 2, 250);
INSERT INTO public.users VALUES (312, 'user_1737327943261', 2, 195);
INSERT INTO public.users VALUES (337, 'user_1737328130721', 5, 257);
INSERT INTO public.users VALUES (311, 'user_1737327943262', 5, 152);
INSERT INTO public.users VALUES (319, 'user_1737328111837', 5, 15);
INSERT INTO public.users VALUES (334, 'user_1737328126523', 2, 191);
INSERT INTO public.users VALUES (328, 'user_1737328120457', 2, 111);
INSERT INTO public.users VALUES (357, 'user_1737328307610', 5, 43);
INSERT INTO public.users VALUES (355, 'user_1737328304944', 5, 70);
INSERT INTO public.users VALUES (327, 'user_1737328120458', 5, 61);
INSERT INTO public.users VALUES (344, 'user_1737328231295', 2, 151);
INSERT INTO public.users VALUES (322, 'user_1737328114248', 2, 222);
INSERT INTO public.users VALUES (348, 'user_1737328235658', 2, 458);
INSERT INTO public.users VALUES (333, 'user_1737328126524', 5, 133);
INSERT INTO public.users VALUES (321, 'user_1737328114249', 5, 63);
INSERT INTO public.users VALUES (343, 'user_1737328231296', 5, 39);
INSERT INTO public.users VALUES (330, 'user_1737328122485', 2, 192);
INSERT INTO public.users VALUES (340, 'user_1737328132974', 2, 629);
INSERT INTO public.users VALUES (329, 'user_1737328122486', 5, 211);
INSERT INTO public.users VALUES (339, 'user_1737328132975', 5, 123);
INSERT INTO public.users VALUES (336, 'user_1737328128508', 2, 966);
INSERT INTO public.users VALUES (353, 'user_1737328302535', 5, 38);
INSERT INTO public.users VALUES (347, 'user_1737328235659', 5, 183);
INSERT INTO public.users VALUES (335, 'user_1737328128509', 5, 55);
INSERT INTO public.users VALUES (352, 'user_1737328264179', 2, 32);
INSERT INTO public.users VALUES (346, 'user_1737328233466', 2, 368);
INSERT INTO public.users VALUES (351, 'user_1737328264180', 5, 282);
INSERT INTO public.users VALUES (345, 'user_1737328233467', 5, 288);
INSERT INTO public.users VALUES (364, 'user_1737328314114', 2, 483);
INSERT INTO public.users VALUES (350, 'user_1737328261142', 2, 104);
INSERT INTO public.users VALUES (362, 'user_1737328311885', 2, 692);
INSERT INTO public.users VALUES (356, 'user_1737328304943', 2, 712);
INSERT INTO public.users VALUES (359, 'user_1737328309951', 5, 206);
INSERT INTO public.users VALUES (358, 'user_1737328307609', 2, 159);
INSERT INTO public.users VALUES (366, 'user_1737328332776', 2, 353);
INSERT INTO public.users VALUES (365, 'user_1737328332777', 5, 92);
INSERT INTO public.users VALUES (361, 'user_1737328311886', 5, 185);
INSERT INTO public.users VALUES (363, 'user_1737328314115', 5, 64);
INSERT INTO public.users VALUES (368, 'user_1737328336143', 2, 612);
INSERT INTO public.users VALUES (367, 'user_1737328336144', 5, 29);
INSERT INTO public.users VALUES (369, 'user_1737328375052', 5, 212);
INSERT INTO public.users VALUES (370, 'user_1737328375051', 2, 445);
INSERT INTO public.users VALUES (372, 'user_1737328376951', 2, 683);
INSERT INTO public.users VALUES (371, 'user_1737328376952', 5, 117);
INSERT INTO public.users VALUES (373, 'user_1737328378852', 5, 48);
INSERT INTO public.users VALUES (374, 'user_1737328378851', 2, 890);
INSERT INTO public.users VALUES (376, 'user_1737328380626', 2, 191);
INSERT INTO public.users VALUES (375, 'user_1737328380627', 5, 3);
INSERT INTO public.users VALUES (377, 'user_1737328382372', 5, 158);
INSERT INTO public.users VALUES (378, 'user_1737328382371', 2, 291);
INSERT INTO public.users VALUES (379, 'user_1737328384237', 5, 369);
INSERT INTO public.users VALUES (380, 'user_1737328384236', 2, 363);
INSERT INTO public.users VALUES (399, 'user_1737328571293', 5, 81);
INSERT INTO public.users VALUES (429, 'user_1737328762611', 5, 4);
INSERT INTO public.users VALUES (382, 'user_1737328424252', 2, 550);
INSERT INTO public.users VALUES (481, 'user_1737328830052', 5, 127);
INSERT INTO public.users VALUES (449, 'user_1737328797589', 5, 182);
INSERT INTO public.users VALUES (381, 'user_1737328424253', 5, 143);
INSERT INTO public.users VALUES (402, 'user_1737328572919', 2, 435);
INSERT INTO public.users VALUES (442, 'user_1737328775214', 2, 221);
INSERT INTO public.users VALUES (418, 'user_1737328746891', 2, 85);
INSERT INTO public.users VALUES (401, 'user_1737328572920', 5, 29);
INSERT INTO public.users VALUES (384, 'user_1737328426489', 2, 669);
INSERT INTO public.users VALUES (417, 'user_1737328746892', 5, 274);
INSERT INTO public.users VALUES (383, 'user_1737328426490', 5, 173);
INSERT INTO public.users VALUES (441, 'user_1737328775215', 5, 513);
INSERT INTO public.users VALUES (432, 'user_1737328764793', 2, 192);
INSERT INTO public.users VALUES (404, 'user_1737328574527', 2, 382);
INSERT INTO public.users VALUES (386, 'user_1737328442311', 2, 684);
INSERT INTO public.users VALUES (403, 'user_1737328574528', 5, 107);
INSERT INTO public.users VALUES (385, 'user_1737328442312', 5, 204);
INSERT INTO public.users VALUES (464, 'user_1737328811775', 2, 123);
INSERT INTO public.users VALUES (431, 'user_1737328764794', 5, 115);
INSERT INTO public.users VALUES (420, 'user_1737328749044', 2, 915);
INSERT INTO public.users VALUES (406, 'user_1737328576202', 2, 545);
INSERT INTO public.users VALUES (458, 'user_1737328805751', 2, 288);
INSERT INTO public.users VALUES (388, 'user_1737328444600', 2, 574);
INSERT INTO public.users VALUES (405, 'user_1737328576203', 5, 260);
INSERT INTO public.users VALUES (387, 'user_1737328444601', 5, 229);
INSERT INTO public.users VALUES (419, 'user_1737328749045', 5, 107);
INSERT INTO public.users VALUES (474, 'user_1737328821427', 2, 397);
INSERT INTO public.users VALUES (390, 'user_1737328562063', 2, 178);
INSERT INTO public.users VALUES (408, 'user_1737328577905', 2, 412);
INSERT INTO public.users VALUES (434, 'user_1737328766914', 2, 101);
INSERT INTO public.users VALUES (389, 'user_1737328562064', 5, 261);
INSERT INTO public.users VALUES (407, 'user_1737328577906', 5, 287);
INSERT INTO public.users VALUES (444, 'user_1737328791258', 2, 62);
INSERT INTO public.users VALUES (479, 'user_1737328827836', 5, 60);
INSERT INTO public.users VALUES (422, 'user_1737328751192', 2, 681);
INSERT INTO public.users VALUES (392, 'user_1737328564089', 2, 166);
INSERT INTO public.users VALUES (452, 'user_1737328799492', 2, 5);
INSERT INTO public.users VALUES (391, 'user_1737328564090', 5, 414);
INSERT INTO public.users VALUES (457, 'user_1737328805752', 5, 48);
INSERT INTO public.users VALUES (433, 'user_1737328766915', 5, 4);
INSERT INTO public.users VALUES (421, 'user_1737328751193', 5, 36);
INSERT INTO public.users VALUES (410, 'user_1737328579740', 2, 150);
INSERT INTO public.users VALUES (394, 'user_1737328565989', 2, 70);
INSERT INTO public.users VALUES (443, 'user_1737328791259', 5, 344);
INSERT INTO public.users VALUES (409, 'user_1737328579741', 5, 82);
INSERT INTO public.users VALUES (393, 'user_1737328565990', 5, 181);
INSERT INTO public.users VALUES (463, 'user_1737328811776', 5, 320);
INSERT INTO public.users VALUES (396, 'user_1737328567808', 2, 305);
INSERT INTO public.users VALUES (424, 'user_1737328753417', 2, 503);
INSERT INTO public.users VALUES (395, 'user_1737328567809', 5, 244);
INSERT INTO public.users VALUES (451, 'user_1737328799493', 5, 48);
INSERT INTO public.users VALUES (412, 'user_1737328661342', 2, 557);
INSERT INTO public.users VALUES (423, 'user_1737328753418', 5, 9);
INSERT INTO public.users VALUES (411, 'user_1737328661343', 5, 34);
INSERT INTO public.users VALUES (398, 'user_1737328569545', 2, 519);
INSERT INTO public.users VALUES (397, 'user_1737328569546', 5, 118);
INSERT INTO public.users VALUES (436, 'user_1737328769153', 2, 564);
INSERT INTO public.users VALUES (400, 'user_1737328571292', 2, 471);
INSERT INTO public.users VALUES (470, 'user_1737328817582', 2, 189);
INSERT INTO public.users VALUES (426, 'user_1737328758475', 2, 229);
INSERT INTO public.users VALUES (478, 'user_1737328825744', 2, 392);
INSERT INTO public.users VALUES (414, 'user_1737328664227', 2, 405);
INSERT INTO public.users VALUES (435, 'user_1737328769154', 5, 272);
INSERT INTO public.users VALUES (413, 'user_1737328664228', 5, 98);
INSERT INTO public.users VALUES (425, 'user_1737328758476', 5, 70);
INSERT INTO public.users VALUES (446, 'user_1737328793503', 2, 469);
INSERT INTO public.users VALUES (416, 'user_1737328744203', 2, 115);
INSERT INTO public.users VALUES (445, 'user_1737328793504', 5, 12);
INSERT INTO public.users VALUES (415, 'user_1737328744204', 5, 12);
INSERT INTO public.users VALUES (428, 'user_1737328760578', 2, 44);
INSERT INTO public.users VALUES (438, 'user_1737328771320', 2, 72);
INSERT INTO public.users VALUES (427, 'user_1737328760579', 5, 333);
INSERT INTO public.users VALUES (454, 'user_1737328801576', 2, 437);
INSERT INTO public.users VALUES (437, 'user_1737328771321', 5, 61);
INSERT INTO public.users VALUES (469, 'user_1737328817583', 5, 69);
INSERT INTO public.users VALUES (460, 'user_1737328807788', 2, 306);
INSERT INTO public.users VALUES (430, 'user_1737328762610', 2, 640);
INSERT INTO public.users VALUES (466, 'user_1737328813790', 2, 250);
INSERT INTO public.users VALUES (459, 'user_1737328807789', 5, 246);
INSERT INTO public.users VALUES (448, 'user_1737328795528', 2, 686);
INSERT INTO public.users VALUES (440, 'user_1737328773120', 2, 394);
INSERT INTO public.users VALUES (453, 'user_1737328801577', 5, 69);
INSERT INTO public.users VALUES (439, 'user_1737328773121', 5, 314);
INSERT INTO public.users VALUES (447, 'user_1737328795529', 5, 350);
INSERT INTO public.users VALUES (473, 'user_1737328821428', 5, 403);
INSERT INTO public.users VALUES (497, 'user_1737328865721', 5, 35);
INSERT INTO public.users VALUES (465, 'user_1737328813791', 5, 135);
INSERT INTO public.users VALUES (450, 'user_1737328797588', 2, 259);
INSERT INTO public.users VALUES (487, 'user_1737328835672', 5, 148);
INSERT INTO public.users VALUES (456, 'user_1737328803751', 2, 615);
INSERT INTO public.users VALUES (462, 'user_1737328809733', 2, 229);
INSERT INTO public.users VALUES (455, 'user_1737328803752', 5, 307);
INSERT INTO public.users VALUES (477, 'user_1737328825745', 5, 335);
INSERT INTO public.users VALUES (461, 'user_1737328809734', 5, 29);
INSERT INTO public.users VALUES (468, 'user_1737328815685', 2, 848);
INSERT INTO public.users VALUES (472, 'user_1737328819472', 2, 144);
INSERT INTO public.users VALUES (467, 'user_1737328815686', 5, 30);
INSERT INTO public.users VALUES (471, 'user_1737328819473', 5, 198);
INSERT INTO public.users VALUES (476, 'user_1737328823563', 2, 298);
INSERT INTO public.users VALUES (475, 'user_1737328823564', 5, 349);
INSERT INTO public.users VALUES (482, 'user_1737328830051', 2, 106);
INSERT INTO public.users VALUES (484, 'user_1737328831968', 2, 206);
INSERT INTO public.users VALUES (480, 'user_1737328827835', 2, 296);
INSERT INTO public.users VALUES (490, 'user_1737328837845', 2, 5);
INSERT INTO public.users VALUES (486, 'user_1737328833811', 2, 388);
INSERT INTO public.users VALUES (483, 'user_1737328831969', 5, 15);
INSERT INTO public.users VALUES (492, 'user_1737328839749', 2, 304);
INSERT INTO public.users VALUES (494, 'user_1737328861688', 2, 235);
INSERT INTO public.users VALUES (488, 'user_1737328835671', 2, 209);
INSERT INTO public.users VALUES (485, 'user_1737328833812', 5, 205);
INSERT INTO public.users VALUES (491, 'user_1737328839750', 5, 409);
INSERT INTO public.users VALUES (489, 'user_1737328837846', 5, 396);
INSERT INTO public.users VALUES (493, 'user_1737328861689', 5, 189);
INSERT INTO public.users VALUES (495, 'user_1737328863759', 5, 57);
INSERT INTO public.users VALUES (496, 'user_1737328863758', 2, 460);
INSERT INTO public.users VALUES (501, 'user_1737328874805', 5, 150);
INSERT INTO public.users VALUES (498, 'user_1737328865720', 2, 626);
INSERT INTO public.users VALUES (499, 'user_1737328872638', 5, 265);
INSERT INTO public.users VALUES (500, 'user_1737328872637', 2, 810);
INSERT INTO public.users VALUES (503, 'user_1737328886566', 5, 109);
INSERT INTO public.users VALUES (502, 'user_1737328874804', 2, 237);
INSERT INTO public.users VALUES (504, 'user_1737328886565', 2, 680);
INSERT INTO public.users VALUES (506, 'user_1737328888671', 2, 600);
INSERT INTO public.users VALUES (505, 'user_1737328888672', 5, 90);
INSERT INTO public.users VALUES (508, 'user_1737328905614', 2, 628);
INSERT INTO public.users VALUES (507, 'user_1737328905615', 5, 109);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 508, true);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- Name: users users_username_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key UNIQUE (username);


--
-- PostgreSQL database dump complete
--

