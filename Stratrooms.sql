--
-- PostgreSQL database dump
--

-- Dumped from database version 17.4
-- Dumped by pg_dump version 17.4

-- Started on 2025-05-05 21:37:05

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
-- TOC entry 224 (class 1259 OID 17134)
-- Name: Cursos; Type: TABLE; Schema: public; Owner: postgres
--

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
-- TOC entry 4961 (class 0 OID 0)
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
-- TOC entry 4962 (class 0 OID 0)
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
-- TOC entry 4963 (class 0 OID 0)
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
-- TOC entry 4964 (class 0 OID 0)
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
-- TOC entry 4965 (class 0 OID 0)
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
-- TOC entry 4966 (class 0 OID 0)
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
-- TOC entry 4967 (class 0 OID 0)
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
-- TOC entry 4793 (class 2606 OID 17141)
-- Name: Cursos Cursos_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Cursos"
    ADD CONSTRAINT "Cursos_pkey" PRIMARY KEY ("idCurso");


--
-- TOC entry 4799 (class 2606 OID 17946)
-- Name: Entregas Entregas_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Entregas"
    ADD CONSTRAINT "Entregas_pkey" PRIMARY KEY ("idEntrega");


--
-- TOC entry 4795 (class 2606 OID 17261)
-- Name: Inscripcions Inscripcions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Inscripcions"
    ADD CONSTRAINT "Inscripcions_pkey" PRIMARY KEY ("idInscripcion");


--
-- TOC entry 4791 (class 2606 OID 16839)
-- Name: Materia Materia_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Materia"
    ADD CONSTRAINT "Materia_pkey" PRIMARY KEY ("idMateria");


--
-- TOC entry 4785 (class 2606 OID 16803)
-- Name: Sedes Sedes_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Sedes"
    ADD CONSTRAINT "Sedes_pkey" PRIMARY KEY ("idSede");


--
-- TOC entry 4801 (class 2606 OID 19120)
-- Name: SequelizeMeta SequelizeMeta_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."SequelizeMeta"
    ADD CONSTRAINT "SequelizeMeta_pkey" PRIMARY KEY (name);


--
-- TOC entry 4797 (class 2606 OID 17516)
-- Name: Tareas Tareas_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Tareas"
    ADD CONSTRAINT "Tareas_pkey" PRIMARY KEY ("idTarea");


--
-- TOC entry 4787 (class 2606 OID 19122)
-- Name: Usuarios Usuarios_email_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_email_key" UNIQUE (email);


--
-- TOC entry 4789 (class 2606 OID 16812)
-- Name: Usuarios Usuarios_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_pkey" PRIMARY KEY ("idUsuario");


--
-- TOC entry 4803 (class 2606 OID 19074)
-- Name: Cursos Cursos_idMateria_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Cursos"
    ADD CONSTRAINT "Cursos_idMateria_fkey" FOREIGN KEY ("idMateria") REFERENCES public."Materia"("idMateria") ON UPDATE CASCADE;


--
-- TOC entry 4804 (class 2606 OID 19079)
-- Name: Cursos Cursos_idProfesor_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Cursos"
    ADD CONSTRAINT "Cursos_idProfesor_fkey" FOREIGN KEY ("idProfesor") REFERENCES public."Usuarios"("idUsuario") ON UPDATE CASCADE;


--
-- TOC entry 4805 (class 2606 OID 19084)
-- Name: Cursos Cursos_idSede_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Cursos"
    ADD CONSTRAINT "Cursos_idSede_fkey" FOREIGN KEY ("idSede") REFERENCES public."Sedes"("idSede") ON UPDATE CASCADE;


--
-- TOC entry 4809 (class 2606 OID 19101)
-- Name: Entregas Entregas_idAlumno_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Entregas"
    ADD CONSTRAINT "Entregas_idAlumno_fkey" FOREIGN KEY ("idAlumno") REFERENCES public."Usuarios"("idUsuario") ON UPDATE CASCADE;


--
-- TOC entry 4810 (class 2606 OID 19096)
-- Name: Entregas Entregas_idTarea_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Entregas"
    ADD CONSTRAINT "Entregas_idTarea_fkey" FOREIGN KEY ("idTarea") REFERENCES public."Tareas"("idTarea") ON UPDATE CASCADE;


--
-- TOC entry 4806 (class 2606 OID 19111)
-- Name: Inscripcions Inscripcions_idAlumno_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Inscripcions"
    ADD CONSTRAINT "Inscripcions_idAlumno_fkey" FOREIGN KEY ("idAlumno") REFERENCES public."Usuarios"("idUsuario") ON UPDATE CASCADE;


--
-- TOC entry 4807 (class 2606 OID 19106)
-- Name: Inscripcions Inscripcions_idCurso_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Inscripcions"
    ADD CONSTRAINT "Inscripcions_idCurso_fkey" FOREIGN KEY ("idCurso") REFERENCES public."Cursos"("idCurso") ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 4808 (class 2606 OID 19089)
-- Name: Tareas Tareas_idCurso_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Tareas"
    ADD CONSTRAINT "Tareas_idCurso_fkey" FOREIGN KEY ("idCurso") REFERENCES public."Cursos"("idCurso") ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 4802 (class 2606 OID 18999)
-- Name: Usuarios Usuarios_idSede_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_idSede_fkey" FOREIGN KEY ("idSede") REFERENCES public."Sedes"("idSede") ON UPDATE CASCADE ON DELETE CASCADE;


-- Completed on 2025-05-05 21:37:06

--
-- PostgreSQL database dump complete
--

