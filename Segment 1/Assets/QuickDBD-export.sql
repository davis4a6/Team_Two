-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "Employees" (
    "ID" int   NOT NULL,
    "Gender" string   NOT NULL,
    "Age" int   NOT NULL,
    "Country" string   NOT NULL,
    "WFH" string   NOT NULL,
    CONSTRAINT "pk_Employees" PRIMARY KEY (
        "ID","WFH"
     )
);

CREATE TABLE "Health" (
    "Medical_Coverage" string   NOT NULL,
    "Productivity" string   NOT NULL,
    "Consequence" string   NOT NULL,
    "Disorder" string   NOT NULL,
    "WFH" string   NOT NULL,
    CONSTRAINT "pk_Health" PRIMARY KEY (
        "WFH"
     )
);

ALTER TABLE "Employees" ADD CONSTRAINT "fk_Employees_WFH" FOREIGN KEY("WFH")
REFERENCES "Health" ("WFH");

