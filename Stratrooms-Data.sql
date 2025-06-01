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

CREATE TABLE public."Cursos" (
    "idCurso" integer NOT NULL,
    "idMateria" integer,
    "idProfesor" integer,
    "idSede" integer,
    "nombreCurso" character varying(100) NOT NULL,
    "descripcionCurso" text,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


ALTER TABLE public."Cursos" OWNER TO postgres;

--
-- TOC entry 223 (class 1259 OID 17133)
-- Name: Cursos_idCurso_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Cursos_idCurso_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."Cursos_idCurso_seq" OWNER TO postgres;

--
-- TOC entry 4977 (class 0 OID 0)
-- Dependencies: 223
-- Name: Cursos_idCurso_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Cursos_idCurso_seq" OWNED BY public."Cursos"."idCurso";


--
-- TOC entry 230 (class 1259 OID 17934)
-- Name: Entregas; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Entregas" (
    "idEntrega" integer NOT NULL,
    "idTarea" integer,
    "idAlumno" integer,
    "fechaTareaEntregada" timestamp with time zone,
    "archivoEntrega" character varying(255),
    "calificacionEntrega" numeric(5,2),
    "comentarioProfesorEntrega" text,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


ALTER TABLE public."Entregas" OWNER TO postgres;

--
-- TOC entry 229 (class 1259 OID 17933)
-- Name: Entregas_idEntrega_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Entregas_idEntrega_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."Entregas_idEntrega_seq" OWNER TO postgres;

--
-- TOC entry 4978 (class 0 OID 0)
-- Dependencies: 229
-- Name: Entregas_idEntrega_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Entregas_idEntrega_seq" OWNED BY public."Entregas"."idEntrega";


--
-- TOC entry 226 (class 1259 OID 17256)
-- Name: Inscripcions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Inscripcions" (
    "idInscripcion" integer NOT NULL,
    "idCurso" integer,
    "idAlumno" integer,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


ALTER TABLE public."Inscripcions" OWNER TO postgres;

--
-- TOC entry 225 (class 1259 OID 17255)
-- Name: Inscripcions_idInscripcion_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Inscripcions_idInscripcion_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."Inscripcions_idInscripcion_seq" OWNER TO postgres;

--
-- TOC entry 4979 (class 0 OID 0)
-- Dependencies: 225
-- Name: Inscripcions_idInscripcion_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Inscripcions_idInscripcion_seq" OWNED BY public."Inscripcions"."idInscripcion";


--
-- TOC entry 222 (class 1259 OID 16832)
-- Name: Materia; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Materia" (
    "idMateria" integer NOT NULL,
    "nombreMateria" character varying(100) NOT NULL,
    "descripcionMateria" text,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


ALTER TABLE public."Materia" OWNER TO postgres;

--
-- TOC entry 221 (class 1259 OID 16831)
-- Name: Materia_idMateria_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Materia_idMateria_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."Materia_idMateria_seq" OWNER TO postgres;

--
-- TOC entry 4980 (class 0 OID 0)
-- Dependencies: 221
-- Name: Materia_idMateria_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Materia_idMateria_seq" OWNED BY public."Materia"."idMateria";


--
-- TOC entry 218 (class 1259 OID 16796)
-- Name: Sedes; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Sedes" (
    "idSede" integer NOT NULL,
    "nombreSede" character varying(100) NOT NULL,
    "direccionSede" character varying(200) NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "telefonoSede" character varying(20) NOT NULL,
    "emailSede" character varying(100) NOT NULL
);


ALTER TABLE public."Sedes" OWNER TO postgres;

--
-- TOC entry 217 (class 1259 OID 16795)
-- Name: Sedes_idSede_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Sedes_idSede_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."Sedes_idSede_seq" OWNER TO postgres;

--
-- TOC entry 4981 (class 0 OID 0)
-- Dependencies: 217
-- Name: Sedes_idSede_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Sedes_idSede_seq" OWNED BY public."Sedes"."idSede";


--
-- TOC entry 231 (class 1259 OID 19116)
-- Name: SequelizeMeta; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."SequelizeMeta" (
    name character varying(255) NOT NULL
);


ALTER TABLE public."SequelizeMeta" OWNER TO postgres;

--
-- TOC entry 228 (class 1259 OID 17508)
-- Name: Tareas; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Tareas" (
    "idTarea" integer NOT NULL,
    "idCurso" integer,
    "tituloTarea" character varying(100) NOT NULL,
    "descripcionTarea" text NOT NULL,
    "fechaSubidaTarea" timestamp with time zone,
    "fechaEntregaTarea" timestamp with time zone NOT NULL,
    "estadoTarea" character varying(10) DEFAULT 'PENDIENTE'::character varying,
    "archivoTarea" character varying(255),
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


ALTER TABLE public."Tareas" OWNER TO postgres;

--
-- TOC entry 227 (class 1259 OID 17507)
-- Name: Tareas_idTarea_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Tareas_idTarea_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."Tareas_idTarea_seq" OWNER TO postgres;

--
-- TOC entry 4982 (class 0 OID 0)
-- Dependencies: 227
-- Name: Tareas_idTarea_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Tareas_idTarea_seq" OWNED BY public."Tareas"."idTarea";


--
-- TOC entry 220 (class 1259 OID 16805)
-- Name: Usuarios; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Usuarios" (
    "idUsuario" integer NOT NULL,
    "tipoUsuario" character varying(20) NOT NULL,
    "idSede" integer,
    "nombreUsuario" character varying(50) NOT NULL,
    "apllPatUsuario" character varying(50) NOT NULL,
    "apllMatUsuario" character varying(50),
    password character varying(255) NOT NULL,
    "imgUrlUsuario" character varying(255),
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    email character varying(100) NOT NULL
);


ALTER TABLE public."Usuarios" OWNER TO postgres;

--
-- TOC entry 219 (class 1259 OID 16804)
-- Name: Usuarios_idUsuario_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Usuarios_idUsuario_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."Usuarios_idUsuario_seq" OWNER TO postgres;

--
-- TOC entry 4983 (class 0 OID 0)
-- Dependencies: 219
-- Name: Usuarios_idUsuario_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Usuarios_idUsuario_seq" OWNED BY public."Usuarios"."idUsuario";


--
-- TOC entry 4779 (class 2604 OID 17137)
-- Name: Cursos idCurso; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Cursos" ALTER COLUMN "idCurso" SET DEFAULT nextval('public."Cursos_idCurso_seq"'::regclass);


--
-- TOC entry 4783 (class 2604 OID 17937)
-- Name: Entregas idEntrega; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Entregas" ALTER COLUMN "idEntrega" SET DEFAULT nextval('public."Entregas_idEntrega_seq"'::regclass);


--
-- TOC entry 4780 (class 2604 OID 17259)
-- Name: Inscripcions idInscripcion; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Inscripcions" ALTER COLUMN "idInscripcion" SET DEFAULT nextval('public."Inscripcions_idInscripcion_seq"'::regclass);


--
-- TOC entry 4778 (class 2604 OID 16835)
-- Name: Materia idMateria; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Materia" ALTER COLUMN "idMateria" SET DEFAULT nextval('public."Materia_idMateria_seq"'::regclass);


--
-- TOC entry 4776 (class 2604 OID 16799)
-- Name: Sedes idSede; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Sedes" ALTER COLUMN "idSede" SET DEFAULT nextval('public."Sedes_idSede_seq"'::regclass);


--
-- TOC entry 4781 (class 2604 OID 17511)
-- Name: Tareas idTarea; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Tareas" ALTER COLUMN "idTarea" SET DEFAULT nextval('public."Tareas_idTarea_seq"'::regclass);


--
-- TOC entry 4777 (class 2604 OID 16808)
-- Name: Usuarios idUsuario; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Usuarios" ALTER COLUMN "idUsuario" SET DEFAULT nextval('public."Usuarios_idUsuario_seq"'::regclass);


--
-- TOC entry 4963 (class 0 OID 17134)
-- Dependencies: 224
-- Data for Name: Cursos; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public."Cursos" VALUES (11, 4, 52, 3, 'Leteratura I', 'Introducción a la literatura contemporánea. ', '2025-05-19 13:18:58.759-06', '2025-05-19 17:27:41.206-06');
INSERT INTO public."Cursos" VALUES (10, 2, 11, 1, 'Matematicas II', 'Continuación del curso de matematicas avanzadas.', '2025-05-19 13:14:41.513-06', '2025-05-19 17:28:44.1-06');
INSERT INTO public."Cursos" VALUES (1, 2, 51, 30, 'Matematicas I', 'Introduccion a las matematicas avanzadas.', '2025-04-20 17:25:55.233-06', '2025-05-20 16:24:29.332-06');
INSERT INTO public."Cursos" VALUES (2, 10, 18, 33, 'Fisica II', 'Continuación del curso de fisica cuantica.', '2025-04-20 17:27:13.18-06', '2025-05-20 16:24:35.153-06');


--
-- TOC entry 4969 (class 0 OID 17934)
-- Dependencies: 230
-- Data for Name: Entregas; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 4965 (class 0 OID 17256)
-- Dependencies: 226
-- Data for Name: Inscripcions; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public."Inscripcions" VALUES (2, 1, 12, '2025-04-20 19:20:40.562-06', '2025-04-20 19:20:40.562-06');
INSERT INTO public."Inscripcions" VALUES (6, 2, 12, '2025-04-20 19:28:35.647-06', '2025-04-20 19:28:35.647-06');
INSERT INTO public."Inscripcions" VALUES (7, 10, 12, '2025-05-19 14:53:56.739-06', '2025-05-19 14:53:56.739-06');
INSERT INTO public."Inscripcions" VALUES (9, 10, 53, '2025-05-19 14:54:06.619-06', '2025-05-19 14:54:06.619-06');
INSERT INTO public."Inscripcions" VALUES (10, 2, 22, '2025-05-19 17:39:09.19-06', '2025-05-19 17:39:09.19-06');
INSERT INTO public."Inscripcions" VALUES (11, 11, 22, '2025-05-19 17:41:55.936-06', '2025-05-19 17:41:55.936-06');
INSERT INTO public."Inscripcions" VALUES (12, 11, 12, '2025-05-19 17:41:58.804-06', '2025-05-19 17:41:58.804-06');
INSERT INTO public."Inscripcions" VALUES (14, 1, 22, '2025-05-19 17:42:22.487-06', '2025-05-19 17:42:22.487-06');
INSERT INTO public."Inscripcions" VALUES (16, 1, 53, '2025-05-20 17:47:19.493-06', '2025-05-20 17:47:19.493-06');


--
-- TOC entry 4961 (class 0 OID 16832)
-- Dependencies: 222
-- Data for Name: Materia; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public."Materia" VALUES (2, 'Matemáticas Avanzadas', 'Curso avanzado de cálculo y álgebra lineal', '2025-04-20 11:48:27.472-06', '2025-05-16 18:57:28.531-06');
INSERT INTO public."Materia" VALUES (4, 'Literatura Contemporánea', 'Análisis de obras literarias del siglo XX y XXI.', '2025-04-20 11:52:21.62-06', '2025-05-16 18:58:14.568-06');
INSERT INTO public."Materia" VALUES (10, 'Física Cuántica', 'Introducción a la mecánica cuántica', '2025-05-16 18:58:41.402-06', '2025-05-16 18:58:41.402-06');


--
-- TOC entry 4957 (class 0 OID 16796)
-- Dependencies: 218
-- Data for Name: Sedes; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public."Sedes" VALUES (3, 'Sede Central México Norte', 'Av. Reforma 234, Col. Juárez, CDMX', '2025-04-20 08:55:35.861-06', '2025-05-16 18:53:45.025-06', '+52 5592039401', 'sede.norte@instituto.edu.mx');
INSERT INTO public."Sedes" VALUES (1, 'Campus Guadalajara', 'Av. Américas 1589, Providencia, Guadalajara', '2025-04-20 08:53:41.072-06', '2025-05-16 18:55:26.825-06', '+52 3387654321', 'gdl@instituto.edu.mx');
INSERT INTO public."Sedes" VALUES (33, 'Sede Monterrey', 'Blvd. García 567, San Pedro Garza García', '2025-05-16 18:56:15.441-06', '2025-05-16 18:56:15.441-06', '+52 8123456789', 'mty@instituto.edu.mx');
INSERT INTO public."Sedes" VALUES (30, 'Sede Poniente', 'Av Rio de los remedios 401.', '2025-05-13 19:17:43.905-06', '2025-05-16 18:56:35.122-06', '+53 34544345', 'easdaW@fdsc.com');


--
-- TOC entry 4970 (class 0 OID 19116)
-- Dependencies: 231
-- Data for Name: SequelizeMeta; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public."SequelizeMeta" VALUES ('20250411224133-replace-usuarioTag-email.cjs');
INSERT INTO public."SequelizeMeta" VALUES ('20250412004147-rename-contraseña-to-password.cjs');
INSERT INTO public."SequelizeMeta" VALUES ('20250420143915-add-telefono-email-remove-logo.cjs');


--
-- TOC entry 4967 (class 0 OID 17508)
-- Dependencies: 228
-- Data for Name: Tareas; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 4959 (class 0 OID 16805)
-- Dependencies: 220
-- Data for Name: Usuarios; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public."Usuarios" VALUES (44, 'ADMINISTRADOR', NULL, 'Alison Michel', 'Castillo', NULL, '$2b$10$cdrtx/.1UgdPABf1MwRu2OFuasrKCVkX/.VN6yU/17tqW6auWtUma', 'https://images.pexels.com/photos/1805866/pexels-photo-1805866.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1', '2025-05-16 15:52:22.088-06', '2025-05-16 16:19:23.271-06', 'alisonmich@gmail.com');
INSERT INTO public."Usuarios" VALUES (10, 'ADMINISTRADOR', 1, 'Luis Antonio', 'Moreno Trejo', NULL, '$2b$10$UA3eCzJcPVP52i/S72QcNOF0mMW08htq1llh7aHtW.iaAihv8mUDm', 'https://images.pexels.com/photos/3016462/pexels-photo-3016462.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2', '2025-04-12 08:58:06.595-06', '2025-05-16 16:44:37.14-06', 'luisamt311@gmail.com');
INSERT INTO public."Usuarios" VALUES (18, 'PROFESOR', 3, 'Carlos', 'Roman', NULL, '$2b$10$KY8qXWkjtvRAnve5AeXlCOvb4Xu4PMag6PDMgj8Af.JSnDdK/CMgy', 'https://images.pexels.com/photos/4342401/pexels-photo-4342401.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2', '2025-04-20 16:11:53.807-06', '2025-05-16 19:01:10.053-06', 'croma294.ht@gmail.com');
INSERT INTO public."Usuarios" VALUES (51, 'PROFESOR', 33, 'Mayte', 'Gonzalez', NULL, '$2b$10$cjGgXGiCg4c4mFppUbKuheVPMPrI7U2WZVTz.cEWT45G6dlp7RxSi', 'https://images.pexels.com/photos/6913213/pexels-photo-6913213.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2', '2025-05-16 19:05:01.85-06', '2025-05-16 19:05:01.85-06', 'maytegonz29.71@gmail.com');
INSERT INTO public."Usuarios" VALUES (52, 'PROFESOR', 3, 'Maria Fernanada', 'Torrez Vega', NULL, '$2b$10$2Fp46k9xAF3XW6RDLfxytuUgZwqM7U0A.H.r.5hWWY2SbQeKPT4ve', 'https://images.pexels.com/photos/3772712/pexels-photo-3772712.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2', '2025-05-16 19:07:07.391-06', '2025-05-16 19:07:07.391-06', 'mafer.torrez@hotmail.com');
INSERT INTO public."Usuarios" VALUES (22, 'ALUMNO', 30, 'Francisca', 'Cisneros', NULL, '$2b$10$n..t7DyC23m35EaObPnF1uPK2WunzDSoQI0uDAyYfilSdOm0SM1O6', 'https://images.pexels.com/photos/7503525/pexels-photo-7503525.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2', '2025-04-20 16:16:11.26-06', '2025-05-16 19:23:31.559-06', 'froncisneros420@gmail.com');
INSERT INTO public."Usuarios" VALUES (53, 'ALUMNO', 1, 'Jorge ', 'Rodriguez', NULL, '$2b$10$K0g9w02pAk0Kny2i8bprqOlWURCCTkWPUWtKp6uW73xaTOByK15Wu', 'https://images.pexels.com/photos/11863113/pexels-photo-11863113.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2', '2025-05-16 19:25:37.937-06', '2025-05-16 19:25:37.937-06', 'rodrig23jh@hotmail.com');
INSERT INTO public."Usuarios" VALUES (12, 'ALUMNO', 3, 'Alejandro', 'Ponce', NULL, '$2b$10$LQzY6ZGP8AV1irhNqs/6veQtyp4moQ3JGX13qGT.fcGM4sJtF.1Im', 'https://images.pexels.com/photos/3766186/pexels-photo-3766186.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2', '2025-04-14 12:58:37.894-06', '2025-05-16 19:27:42.058-06', 'Ale23ponc@gmail.com');
INSERT INTO public."Usuarios" VALUES (11, 'PROFESOR', 30, 'Alejandro', 'Guzman Alcantara', NULL, '$2b$10$YCsQ2JFJXq.54IiPt1UkAepk6J8hVKEMAFcU.32Neo8sE1s7qr21u', 'https://images.pexels.com/photos/6830370/pexels-photo-6830370.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2', '2025-04-14 12:56:48.383-06', '2025-05-19 13:53:20.101-06', 'aleguz2099@hotmail.com');
INSERT INTO public."Usuarios" VALUES (45, 'ADMINISTRADOR', NULL, 'Karen', 'Trejo', NULL, '$2b$10$MXgfS/eXgkmFY8c3ev1Y8.3TVaCmKEXoJZaTmTh4xybl6rYbrEfVu', 'https://images.pexels.com/photos/1756170/pexels-photo-1756170.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1', '2025-05-16 16:19:02.078-06', '2025-05-20 16:52:52.475-06', 'karen1510@gmail.com');
INSERT INTO public."Usuarios" VALUES (55, 'ADMINISTRADOR', NULL, 'Yahir Ivan', 'Galicia', NULL, '$2b$10$.sD/EXnog3nlkLTL6fdwjOH.79qHQ/orxmbSwZSdNeNh6wMCAzeM2', NULL, '2025-05-20 18:40:34.55-06', '2025-05-20 18:40:34.55-06', 'solarygalicia29@outlook.com');


--
-- TOC entry 4984 (class 0 OID 0)
-- Dependencies: 223
-- Name: Cursos_idCurso_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Cursos_idCurso_seq"', 12, true);


--
-- TOC entry 4985 (class 0 OID 0)
-- Dependencies: 229
-- Name: Entregas_idEntrega_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Entregas_idEntrega_seq"', 1, false);


--
-- TOC entry 4986 (class 0 OID 0)
-- Dependencies: 225
-- Name: Inscripcions_idInscripcion_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Inscripcions_idInscripcion_seq"', 16, true);


--
-- TOC entry 4987 (class 0 OID 0)
-- Dependencies: 221
-- Name: Materia_idMateria_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Materia_idMateria_seq"', 10, true);


--
-- TOC entry 4988 (class 0 OID 0)
-- Dependencies: 217
-- Name: Sedes_idSede_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Sedes_idSede_seq"', 33, true);


--
-- TOC entry 4989 (class 0 OID 0)
-- Dependencies: 227
-- Name: Tareas_idTarea_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Tareas_idTarea_seq"', 1, false);


--
-- TOC entry 4990 (class 0 OID 0)
-- Dependencies: 219
-- Name: Usuarios_idUsuario_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Usuarios_idUsuario_seq"', 55, true);


-- Completed on 2025-05-20 18:54:18

--
-- PostgreSQL database dump complete
--

