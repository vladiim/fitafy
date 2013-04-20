CREATE TABLE "invite_records" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "from_id" integer NOT NULL, "to_id" integer NOT NULL, "message" text DEFAULT 'I just signed up to a new service that gets fitness professionals new clients. I thought you''d like to check it out!', "accepted" boolean DEFAULT 'f', "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL);
CREATE TABLE "schema_migrations" ("version" varchar(255) NOT NULL);
CREATE TABLE "user_records" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "email" varchar(255) NOT NULL, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL, "subscribed" boolean DEFAULT 't', "perishable_token" varchar(255));
CREATE INDEX "index_invite_records_on_from_id" ON "invite_records" ("from_id");
CREATE INDEX "index_invite_records_on_to_id" ON "invite_records" ("to_id");
CREATE UNIQUE INDEX "unique_schema_migrations" ON "schema_migrations" ("version");
INSERT INTO schema_migrations (version) VALUES ('20130322103353');

INSERT INTO schema_migrations (version) VALUES ('20130331073937');

INSERT INTO schema_migrations (version) VALUES ('20130420023242');