CREATE TABLE IF NOT EXISTS  "llsoa_gas"
 ( 
"la_name" VARCHAR(64) NOT NULL, 
"la_code" VARCHAR(10) NOT NULL, 
"mlsoa_code" VARCHAR(16) NOT NULL, 
"llsoa_code" VARCHAR(64) NOT NULL, 
"total_cons_kwh" INT NOT NULL, 
"num_total_meters" INT NOT NULL,
"average_domestic_cons_kwh_per_meter" FLOAT NOT NULL
) 
ENGINE=MyISAM DEFAULT CHARSET=utf8; 