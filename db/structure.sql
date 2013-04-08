CREATE TABLE "schema_migrations" ("version" varchar(255) NOT NULL);
CREATE TABLE "user_records" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "email" varchar(255) NOT NULL, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL, "subscribed" boolean DEFAULT 't', "perishable_token" varchar(255));
CREATE UNIQUE INDEX "unique_schema_migrations" ON "schema_migrations" ("version");
INSERT INTO schema_migrations (version) VALUES ('20130322103353');

INSERT INTO schema_migrations (version) VALUES ('20130331073937');