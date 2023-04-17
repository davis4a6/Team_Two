-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.
-- Create tables

CREATE TABLE "EMPLOYEES" (
    "ID" int   NOT NULL,
    "AGE" int,
    "GENDER" varchar,
    "COUNTRY_WORKING_IN" varchar,
    "WFH" varchar,
    CONSTRAINT "pk_EMPLOYEES" PRIMARY KEY (
        "ID"
     )
);

CREATE TABLE "MENTAL_HEALTH" (
    "ID" int   NOT NULL,
    "MENTAL_HEALTH_COVERAGE" varchar,
    "TECH_COMPANY" int,
    "MENTAL_HEALTH_OPTIONS_UNDER_COVERAGE" varchar,
    "EMPLOYER_OFFER_MENTAL_HEALTH_RESOURCES" varchar,
    "MEDICAL_COVERAGE_INCLUDING_MENTAL_HEALTH_TREATMENT" int,
    "PREV_EMPLOYERS_PROVIDE_MENTAL_HEALTH_BENEFITS" varchar,
    "AWARENESS_OF_MENTAL_HEALTH_COVERAGE_BY_PREV_EMPLOYERS" varchar,
    "PREV_EMPLOYER_OFFER_MENTAL_HEALTH_RESOURCES" varchar,
    "MENTAL_HEALTH_IDENTITY_HURT_YOUR_CAREER" varchar,
    "CURRENT_MENTAL_HEALTH_DISORDER" varchar,
    CONSTRAINT "pk_MENTAL_HEALTH" PRIMARY KEY (
        "ID"
     )
);

ALTER TABLE "MENTAL_HEALTH" ADD CONSTRAINT "fk_MENTAL_HEALTH_ID" FOREIGN KEY("ID")
REFERENCES "EMPLOYEES" ("ID");
