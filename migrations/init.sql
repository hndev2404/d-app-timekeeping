CREATE TABLE "users" (
  "id" integer PRIMARY KEY,
  "name" varchar,
  "email" varchar,
  "password" varchar
);

CREATE TABLE "attendance" (
  "id" integer PRIMARY KEY,
  "user_id" integer,
  "location" varchar,
  "address" varchar,
  "checkin" datetime,
  "checkout" datetime
);

ALTER TABLE "attendance" ADD FOREIGN KEY ("user_id") REFERENCES "users" ("id");
