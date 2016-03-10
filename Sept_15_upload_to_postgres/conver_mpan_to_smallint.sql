CREATE OR REPLACE FUNCTION pc_chartoint(chartoconvert character varying)
  RETURNS smallint AS
$BODY$
SELECT 
    CASE WHEN trim($1) SIMILAR TO '[0-9]+' THEN CAST(trim($1) AS smallint) 
         ELSE NULL 
	 END
$BODY$
  LANGUAGE SQL;

ALTER TABLE "fit_installations"
	ALTER COLUMN  "supply_mpan_no_first_2_digits" TYPE SMALLINT using pc_chartoint("supply_mpan_no_first_2_digits");