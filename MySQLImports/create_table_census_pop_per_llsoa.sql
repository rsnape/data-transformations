CREATE TABLE IF NOT EXISTS `census_population_llsoa_2011`
 ( 
`region_code` VARCHAR(9), 
`region_name` VARCHAR(63), 
`local_authority_code` VARCHAR(9) NOT NULL, 
`local_authority_name` VARCHAR(63) NOT NULL, 
`msoa_code` VARCHAR(9) NOT NULL, 
`msoa_name` VARCHAR(63) NOT NULL, 
`lsoa_code` VARCHAR(9) NOT NULL, 
`lsoa_name` VARCHAR(63) NOT NULL, 
`all_usual_residents` INT unsigned NOT NULL, 
`household_residents` INT unsigned NOT NULL, 
`communal_establishment_residents` INT unsigned NOT NULL, 
`area_hectares` INT unsigned NOT NULL, 
`density_persons_per_hectare` FLOAT(6,1) NOT NULL, 
`column_15` VARCHAR(255) DEFAULT NULL, 
`households_with_usual_residents` INT unsigned NOT NULL, 
`average_persons_per_household` FLOAT NOT NULL, 
`households_per_hectare` FLOAT(11,4) NOT NULL
) 
ENGINE=MyISAM DEFAULT CHARSET=utf8; 

alter table `census_population_llsoa_2011` add primary key `lsoa_code`;