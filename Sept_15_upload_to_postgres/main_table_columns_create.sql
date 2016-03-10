CREATE TABLE "fit_installations" (
	"FIT ID" VARCHAR NOT NULL,
	"Post Code" VARCHAR NULL DEFAULT NULL,
	"Technology Type" VARCHAR NULL DEFAULT NULL,
	"Installed Capacity (kW)" NUMERIC(10,4) NULL DEFAULT NULL,
	"Declared Net Capacity (kW)" NUMERIC(10,4) NULL DEFAULT NULL,
	"Application Date" DATE NULL DEFAULT NULL,
	"Commissioned Date" DATE NULL DEFAULT NULL,
	"Export Status Type" VARCHAR NULL DEFAULT NULL,
	"TariffCode" VARCHAR NULL DEFAULT NULL,
	"Description" VARCHAR NULL DEFAULT NULL,
	"InstallationType" VARCHAR NULL DEFAULT NULL,
	"Country Name" VARCHAR NULL DEFAULT NULL,
	"Local Authority" VARCHAR NULL DEFAULT NULL,
	"Government Office Region" VARCHAR NULL DEFAULT NULL,
	"AccreditationNo" VARCHAR NULL DEFAULT NULL,
	"Supply MPAN No (first 2 digits)" VARCHAR NULL DEFAULT NULL,
	"Community/School category (Applicable from 01/12/2012)" VARCHAR NULL DEFAULT NULL,
	"LLSOA Code" VARCHAR NULL DEFAULT NULL
)
;
COMMENT ON COLUMN "fit_installations"."FIT ID" IS E'';
COMMENT ON COLUMN "fit_installations"."Post Code" IS E'';
COMMENT ON COLUMN "fit_installations"."Technology Type" IS E'';
COMMENT ON COLUMN "fit_installations"."Installed Capacity (kW)" IS E'';
COMMENT ON COLUMN "fit_installations"."Declared Net Capacity (kW)" IS E'';
COMMENT ON COLUMN "fit_installations"."Application Date" IS E'';
COMMENT ON COLUMN "fit_installations"."Commissioned Date" IS E'';
COMMENT ON COLUMN "fit_installations"."Export Status Type" IS E'';
COMMENT ON COLUMN "fit_installations"."TariffCode" IS E'';
COMMENT ON COLUMN "fit_installations"."Description" IS E'';
COMMENT ON COLUMN "fit_installations"."InstallationType" IS E'';
COMMENT ON COLUMN "fit_installations"."Country Name" IS E'';
COMMENT ON COLUMN "fit_installations"."Local Authority" IS E'';
COMMENT ON COLUMN "fit_installations"."Government Office Region" IS E'';
COMMENT ON COLUMN "fit_installations"."AccreditationNo" IS E'';
COMMENT ON COLUMN "fit_installations"."Supply MPAN No (first 2 digits)" IS E'';
COMMENT ON COLUMN "fit_installations"."Community/School category (Applicable from 01/12/2012)" IS E'';
COMMENT ON COLUMN "fit_installations"."LLSOA Code" IS E'';
