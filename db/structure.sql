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


--
-- Name: hstore; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS hstore WITH SCHEMA public;


--
-- Name: EXTENSION hstore; Type: COMMENT; Schema: -; Owner: -
--

COMMENT ON EXTENSION hstore IS 'data type for storing sets of (key, value) pairs';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: equipment; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE equipment (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


--
-- Name: equipment_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE equipment_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: equipment_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE equipment_id_seq OWNED BY equipment.id;


--
-- Name: exercises; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE exercises (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    tips text,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    slug character varying(255),
    equipment_id integer,
    muscle character varying(255),
    category character varying(255) DEFAULT 'No category'::character varying,
    description text DEFAULT 'No description'::text
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
-- Name: facebook_users; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE facebook_users (
    id integer NOT NULL,
    provider character varying(255),
    uid character varying(255),
    oauth_token character varying(255),
    oauth_expires_at timestamp without time zone,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    cred_info text
);


--
-- Name: facebook_users_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE facebook_users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: facebook_users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE facebook_users_id_seq OWNED BY facebook_users.id;


--
-- Name: favorite_workouts; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE favorite_workouts (
    id integer NOT NULL,
    user_id integer NOT NULL,
    workout_id integer NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


--
-- Name: favorite_workouts_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE favorite_workouts_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: favorite_workouts_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE favorite_workouts_id_seq OWNED BY favorite_workouts.id;


--
-- Name: organisations; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE organisations (
    id integer NOT NULL,
    name character varying(255),
    street character varying(255),
    suburb character varying(255),
    city character varying(255),
    state character varying(255),
    country character varying(255),
    postcode integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


--
-- Name: organisations_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE organisations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: organisations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE organisations_id_seq OWNED BY organisations.id;


--
-- Name: profile_organisations; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE profile_organisations (
    id integer NOT NULL,
    profile_id integer,
    organisation_id integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


--
-- Name: profile_organisations_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE profile_organisations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: profile_organisations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE profile_organisations_id_seq OWNED BY profile_organisations.id;


--
-- Name: profiles; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE profiles (
    id integer NOT NULL,
    user_id integer,
    first_name character varying(255),
    last_name character varying(255),
    experience integer,
    avatar character varying(255),
    hourly_rate integer,
    url character varying(255),
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


--
-- Name: profiles_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE profiles_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: profiles_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE profiles_id_seq OWNED BY profiles.id;


--
-- Name: schema_migrations; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE schema_migrations (
    version character varying(255) NOT NULL
);


--
-- Name: tags; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE tags (
    id integer NOT NULL,
    name character varying(255)
);


--
-- Name: tags_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE tags_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: tags_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE tags_id_seq OWNED BY tags.id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE users (
    id integer NOT NULL,
    username character varying(255) NOT NULL,
    email character varying(255) NOT NULL,
    password_salt character varying(255),
    persistence_token character varying(255),
    login_count integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    slug character varying(255),
    role character varying(255),
    crypted_password character varying(255),
    facebook_user_id integer,
    avatar character varying(255),
    perishable_token character varying(255) DEFAULT ''::character varying,
    active boolean,
    features hstore
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
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    instructions text DEFAULT 'No instructions added yet'::text,
    sets integer DEFAULT 1,
    order_number integer DEFAULT 1,
    set_details hstore
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
-- Name: workout_popularities; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE workout_popularities (
    id integer NOT NULL,
    workout_id integer,
    pdfs_downloaded integer DEFAULT 0,
    views integer DEFAULT 0,
    unique_member_views integer DEFAULT 0,
    copies integer DEFAULT 0,
    favorites integer DEFAULT 0,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


--
-- Name: workout_popularities_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE workout_popularities_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: workout_popularities_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE workout_popularities_id_seq OWNED BY workout_popularities.id;


--
-- Name: workouts; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE workouts (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    user_id integer NOT NULL,
    slug character varying(255),
    difficulty character varying(255) DEFAULT 'None...'::character varying,
    client_level character varying(255) DEFAULT 'None...'::character varying,
    notes text DEFAULT 'No notes for this workout yo...'::text
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

ALTER TABLE ONLY equipment ALTER COLUMN id SET DEFAULT nextval('equipment_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY exercises ALTER COLUMN id SET DEFAULT nextval('exercises_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY facebook_users ALTER COLUMN id SET DEFAULT nextval('facebook_users_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY favorite_workouts ALTER COLUMN id SET DEFAULT nextval('favorite_workouts_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY organisations ALTER COLUMN id SET DEFAULT nextval('organisations_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY profile_organisations ALTER COLUMN id SET DEFAULT nextval('profile_organisations_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY profiles ALTER COLUMN id SET DEFAULT nextval('profiles_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY tags ALTER COLUMN id SET DEFAULT nextval('tags_id_seq'::regclass);


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

ALTER TABLE ONLY workout_popularities ALTER COLUMN id SET DEFAULT nextval('workout_popularities_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY workouts ALTER COLUMN id SET DEFAULT nextval('workouts_id_seq'::regclass);


--
-- Name: equipment_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY equipment
    ADD CONSTRAINT equipment_pkey PRIMARY KEY (id);


--
-- Name: exercises_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY exercises
    ADD CONSTRAINT exercises_pkey PRIMARY KEY (id);


--
-- Name: facebook_users_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY facebook_users
    ADD CONSTRAINT facebook_users_pkey PRIMARY KEY (id);


--
-- Name: favorite_workouts_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY favorite_workouts
    ADD CONSTRAINT favorite_workouts_pkey PRIMARY KEY (id);


--
-- Name: organisations_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY organisations
    ADD CONSTRAINT organisations_pkey PRIMARY KEY (id);


--
-- Name: profile_organisations_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY profile_organisations
    ADD CONSTRAINT profile_organisations_pkey PRIMARY KEY (id);


--
-- Name: profiles_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY profiles
    ADD CONSTRAINT profiles_pkey PRIMARY KEY (id);


--
-- Name: tags_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY tags
    ADD CONSTRAINT tags_pkey PRIMARY KEY (id);


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
-- Name: workout_popularities_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY workout_popularities
    ADD CONSTRAINT workout_popularities_pkey PRIMARY KEY (id);


--
-- Name: workouts_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY workouts
    ADD CONSTRAINT workouts_pkey PRIMARY KEY (id);


--
-- Name: index_exercises_on_name; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX index_exercises_on_name ON exercises USING btree (name);


--
-- Name: index_exercises_on_slug; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX index_exercises_on_slug ON exercises USING btree (slug);


--
-- Name: index_favorite_workouts_on_user_id; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX index_favorite_workouts_on_user_id ON favorite_workouts USING btree (user_id);


--
-- Name: index_favorite_workouts_on_workout_id; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX index_favorite_workouts_on_workout_id ON favorite_workouts USING btree (workout_id);


--
-- Name: index_profile_organisations_on_organisation_id; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX index_profile_organisations_on_organisation_id ON profile_organisations USING btree (organisation_id);


--
-- Name: index_profile_organisations_on_profile_id; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX index_profile_organisations_on_profile_id ON profile_organisations USING btree (profile_id);


--
-- Name: index_profiles_on_user_id; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX index_profiles_on_user_id ON profiles USING btree (user_id);


--
-- Name: index_users_on_email; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX index_users_on_email ON users USING btree (email);


--
-- Name: index_users_on_slug; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX index_users_on_slug ON users USING btree (slug);


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
-- Name: index_workouts_on_slug; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX index_workouts_on_slug ON workouts USING btree (slug);


--
-- Name: index_workouts_on_user_id; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX index_workouts_on_user_id ON workouts USING btree (user_id);


--
-- Name: unique_schema_migrations; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX unique_schema_migrations ON schema_migrations USING btree (version);


--
-- Name: users_features; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX users_features ON users USING gin (features);


--
-- Name: workout_exercises_set_details; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX workout_exercises_set_details ON workout_exercises USING gin (set_details);


--
-- PostgreSQL database dump complete
--

INSERT INTO schema_migrations (version) VALUES ('20120530212556');

INSERT INTO schema_migrations (version) VALUES ('20120601115748');

INSERT INTO schema_migrations (version) VALUES ('20120615110504');

INSERT INTO schema_migrations (version) VALUES ('20120721085638');

INSERT INTO schema_migrations (version) VALUES ('20120726111346');

INSERT INTO schema_migrations (version) VALUES ('20120728232807');

INSERT INTO schema_migrations (version) VALUES ('20120728234352');

INSERT INTO schema_migrations (version) VALUES ('20120729013357');

INSERT INTO schema_migrations (version) VALUES ('20120729051917');

INSERT INTO schema_migrations (version) VALUES ('20120730103432');

INSERT INTO schema_migrations (version) VALUES ('20120815113642');

INSERT INTO schema_migrations (version) VALUES ('20120822090359');

INSERT INTO schema_migrations (version) VALUES ('20120901035319');

INSERT INTO schema_migrations (version) VALUES ('20120901060140');

INSERT INTO schema_migrations (version) VALUES ('20120909071940');

INSERT INTO schema_migrations (version) VALUES ('20120912093310');

INSERT INTO schema_migrations (version) VALUES ('20120913102354');

INSERT INTO schema_migrations (version) VALUES ('20120913104644');

INSERT INTO schema_migrations (version) VALUES ('20120918173725');

INSERT INTO schema_migrations (version) VALUES ('20120923060134');

INSERT INTO schema_migrations (version) VALUES ('20120923093145');

INSERT INTO schema_migrations (version) VALUES ('20121006013902');

INSERT INTO schema_migrations (version) VALUES ('20121006014910');

INSERT INTO schema_migrations (version) VALUES ('20121007074716');

INSERT INTO schema_migrations (version) VALUES ('20121019215006');

INSERT INTO schema_migrations (version) VALUES ('20121020222809');

INSERT INTO schema_migrations (version) VALUES ('20121104035110');

INSERT INTO schema_migrations (version) VALUES ('20121104094907');

INSERT INTO schema_migrations (version) VALUES ('20121105093726');

INSERT INTO schema_migrations (version) VALUES ('20121118011120');

INSERT INTO schema_migrations (version) VALUES ('20121118014701');

INSERT INTO schema_migrations (version) VALUES ('20121118050007');

INSERT INTO schema_migrations (version) VALUES ('20121118064642');

INSERT INTO schema_migrations (version) VALUES ('20121121085347');

INSERT INTO schema_migrations (version) VALUES ('20121213104121');

INSERT INTO schema_migrations (version) VALUES ('20130108062514');

INSERT INTO schema_migrations (version) VALUES ('20130108221306');

INSERT INTO schema_migrations (version) VALUES ('20130113070544');

INSERT INTO schema_migrations (version) VALUES ('20130113071223');

INSERT INTO schema_migrations (version) VALUES ('20130113071519');

INSERT INTO schema_migrations (version) VALUES ('20130115080555');

INSERT INTO schema_migrations (version) VALUES ('20130116075952');

INSERT INTO schema_migrations (version) VALUES ('20130122085514');

INSERT INTO schema_migrations (version) VALUES ('20130122085544');

INSERT INTO schema_migrations (version) VALUES ('20130203101006');

INSERT INTO schema_migrations (version) VALUES ('20130203101941');

INSERT INTO schema_migrations (version) VALUES ('20130203102945');

INSERT INTO schema_migrations (version) VALUES ('20130204104623');

INSERT INTO schema_migrations (version) VALUES ('20130217020503');

INSERT INTO schema_migrations (version) VALUES ('20130217020531');

INSERT INTO schema_migrations (version) VALUES ('20130217032022');

INSERT INTO schema_migrations (version) VALUES ('20130217102901');

INSERT INTO schema_migrations (version) VALUES ('20130218084738');

INSERT INTO schema_migrations (version) VALUES ('20130218090206');

INSERT INTO schema_migrations (version) VALUES ('20130218092359');