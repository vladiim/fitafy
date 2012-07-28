--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: -
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: exercises; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE exercises (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    description text NOT NULL,
    tips text,
    categories character varying(255),
    equipment character varying(255),
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


--
-- Name: exercises_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE exercises_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: exercises_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE exercises_id_seq OWNED BY exercises.id;


--
-- Name: schema_migrations; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE schema_migrations (
    version character varying(255) NOT NULL
);


--
-- Name: users; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE users (
    id integer NOT NULL,
    username character varying(255) NOT NULL,
    email character varying(255) NOT NULL,
    crypted_password character varying(255) NOT NULL,
    password_salt character varying(255),
    persistence_token character varying(255),
    login_count integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


--
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE users_id_seq OWNED BY users.id;


--
-- Name: workout_exercises; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE workout_exercises (
    id integer NOT NULL,
    workout_id integer NOT NULL,
    exercise_id integer NOT NULL,
    sets integer NOT NULL,
    notes text,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


--
-- Name: workout_exercises_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE workout_exercises_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: workout_exercises_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE workout_exercises_id_seq OWNED BY workout_exercises.id;


--
-- Name: workouts; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE workouts (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    notes text NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    client_level character varying(255) NOT NULL,
    difficulty character varying(255) NOT NULL
);


--
-- Name: workouts_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE workouts_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: workouts_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE workouts_id_seq OWNED BY workouts.id;


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY exercises ALTER COLUMN id SET DEFAULT nextval('exercises_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY users ALTER COLUMN id SET DEFAULT nextval('users_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY workout_exercises ALTER COLUMN id SET DEFAULT nextval('workout_exercises_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY workouts ALTER COLUMN id SET DEFAULT nextval('workouts_id_seq'::regclass);


--
-- Name: exercises_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY exercises
    ADD CONSTRAINT exercises_pkey PRIMARY KEY (id);


--
-- Name: users_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- Name: workout_exercises_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY workout_exercises
    ADD CONSTRAINT workout_exercises_pkey PRIMARY KEY (id);


--
-- Name: workouts_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY workouts
    ADD CONSTRAINT workouts_pkey PRIMARY KEY (id);


--
-- Name: index_exercises_on_categories; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX index_exercises_on_categories ON exercises USING btree (categories);


--
-- Name: index_exercises_on_name; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX index_exercises_on_name ON exercises USING btree (name);


--
-- Name: index_users_on_email; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX index_users_on_email ON users USING btree (email);


--
-- Name: index_users_on_username; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX index_users_on_username ON users USING btree (username);


--
-- Name: index_workout_exercises_on_exercise_id; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX index_workout_exercises_on_exercise_id ON workout_exercises USING btree (exercise_id);


--
-- Name: index_workout_exercises_on_workout_id; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX index_workout_exercises_on_workout_id ON workout_exercises USING btree (workout_id);


--
-- Name: index_workouts_on_name; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX index_workouts_on_name ON workouts USING btree (name);


--
-- Name: unique_schema_migrations; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX unique_schema_migrations ON schema_migrations USING btree (version);


--
-- PostgreSQL database dump complete
--

INSERT INTO schema_migrations (version) VALUES ('20120530212556');

INSERT INTO schema_migrations (version) VALUES ('20120601115748');

INSERT INTO schema_migrations (version) VALUES ('20120615110504');

INSERT INTO schema_migrations (version) VALUES ('20120721085638');

INSERT INTO schema_migrations (version) VALUES ('20120726111346');