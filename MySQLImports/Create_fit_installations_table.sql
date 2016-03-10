CREATE TABLE IF NOT EXISTS `fit_installations`
 ( 
`fit_id` VARCHAR(15) NOT NULL, 
`post_code_district` VARCHAR(4) NOT NULL, 
`post_code_area` VARCHAR(2) NOT NULL, 
`technology_type` VARCHAR(31) NOT NULL, 
`installed_capacity_kw` FLOAT NOT NULL, 
`declared_net_capacity_kw` FLOAT NOT NULL, 
`application_date` DATE NOT NULL, 
`commissioned_date` DATE NOT NULL, 
`export_status_type` VARCHAR(31) NOT NULL, 
`tariff_code` VARCHAR(31) NOT NULL, 
`description` VARCHAR(127) NOT NULL, 
`installation_type` VARCHAR(31) NOT NULL, 
`country_name` VARCHAR(8) NOT NULL, 
`local_authority` VARCHAR(31) NOT NULL, 
`government_office_region` VARCHAR(31) NOT NULL, 
`accreditation_no` VARCHAR(15) NOT NULL, 
`supply_mpan_no_first_2_digits` INT(2) unsigned NOT NULL, 
`community_school_category_applicable_from_01_12_2012` VARCHAR(31) DEFAULT NULL, 
`llsoa_code` VARCHAR(9) NOT NULL
) 
ENGINE=MyISAM DEFAULT CHARSET=utf8; 