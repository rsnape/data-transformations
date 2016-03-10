CREATE TABLE IF NOT EXISTS "llsoa_elec"
 ( 
"la_name" VARCHAR(64) NOT NULL, 
"la_code" VARCHAR(10) NOT NULL, 
"mlsoa_code" VARCHAR(10) NOT NULL, 
"llsoa_code" VARCHAR(64) NOT NULL, 
"ordinary_cons_kwh" INT NOT NULL, 
"ec_7_cons_kwh" INT NOT NULL, 
"total_cons_kwh" INT NOT NULL, 
"num_ordinary_meters" INT NOT NULL, 
"num_econ_7_meters" INT NOT NULL, 
"num_total_meters" INT NOT NULL, 
"ave_ord_cons_kwh_per_meter" FLOAT NOT NULL, 
"average_econ_7_cons_kwh_per_meter" FLOAT NOT NULL, 
"average_domestic_cons_kwh_per_meter" FLOAT NOT NULL
) 
ENGINE=MyISAM DEFAULT CHARSET=utf8; 
