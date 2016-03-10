CREATE TABLE IF NOT EXISTS "opencse_demographics"
 ( 
"gor_name" VARCHAR(31) NOT NULL, 
"cty_code" VARCHAR(2) DEFAULT NULL, 
"cty_name" VARCHAR(31) DEFAULT NULL, 
"la_code" VARCHAR(4) NOT NULL, 
"la_name" VARCHAR(31) NOT NULL, 
"wardcode" VARCHAR(7) NOT NULL, 
"ward_name" VARCHAR(63) NOT NULL, 
"msoa_code" VARCHAR(9) NOT NULL, 
"msoa_name" VARCHAR(47) NOT NULL, 
"lsoacode" VARCHAR(9) NOT NULL, 
"lsoa_name" VARCHAR(47) NOT NULL, 
"imd" FLOAT NOT NULL, 
"imd_rank" INT unsigned NOT NULL, 
"income_score" FLOAT NOT NULL, 
"rank_of_income_score" INT unsigned NOT NULL, 
"deciles_imd_income_rank" INT unsigned NOT NULL, 
"imd_population" INT unsigned NOT NULL, 
"fpi_full_2003" FLOAT NOT NULL, 
"fpi_basic_2003" FLOAT NOT NULL, 
"no_of_solid_wall" INT unsigned NOT NULL, 
"no_of_off_gas" INT unsigned NOT NULL, 
"total_households" INT unsigned NOT NULL, 
"total_residents" INT unsigned NOT NULL, 
"pc_solid" VARCHAR(7) NOT NULL, 
"pc_fpi_full_2003" VARCHAR(7) NOT NULL, 
"pc_offgas" VARCHAR(7) NOT NULL, 
"all_households" INT unsigned NOT NULL, 
"owned" INT unsigned NOT NULL, 
"social_rented" INT unsigned NOT NULL, 
"private_rented" INT unsigned NOT NULL, 
"living_rent_free" INT unsigned NOT NULL, 
"pc_owned" VARCHAR(7) NOT NULL, 
"pc_social_rented" VARCHAR(7) NOT NULL, 
"pc_private_rented" VARCHAR(7) NOT NULL, 
"pc_living_rent_free" VARCHAR(7) NOT NULL, 
"all_people" INT unsigned NOT NULL, 
"morphology_name_no_commas" VARCHAR(47) NOT NULL, 
"morphology_code" TINYINT unsigned NOT NULL, 
"morphology_name" VARCHAR(47) NOT NULL, 
"context_code" TINYINT unsigned NOT NULL, 
"context_name" VARCHAR(15) NOT NULL, 
"combined_code" TINYINT unsigned NOT NULL, 
"combined_name" VARCHAR(63) NOT NULL
) 
ENGINE=MyISAM DEFAULT CHARSET=utf8;