drop table if exists installs_by_llsoa;

CREATE TABLE `installs_by_llsoa` (
	`llsoa_code` VARCHAR(16) NOT NULL,
	`num_installs_010410` INT(11) NOT NULL,
	`num_installs_010111` INT(11) NOT NULL,
	`num_installs_010112` INT(11) NOT NULL,
	`num_installs_010113` INT(11) NOT NULL,
	`num_installs_010713` INT(11) NOT NULL,
	`dec_capacity_010410` FLOAT NOT NULL,
	`dec_capacity_010111` FLOAT NOT NULL,
	`dec_capacity_010112` FLOAT NOT NULL,
	`dec_capacity_010113` FLOAT NOT NULL,
	`dec_capacity_010713` FLOAT NOT NULL,
	PRIMARY KEY (`llsoa_code`)
)
COLLATE='latin1_swedish_ci'
ENGINE=MyISAM;

insert into installs_by_llsoa  (llsoa_code,num_installs_010410,dec_capacity_010410) (select fit_installations_30_Jun_2013.llsoa_code as llsoa_code, count(fit_id), sum(fit_installations_30_Jun_2013.declared_net_capacity_kw) from fit_installations_30_Jun_2013 where fit_installations_30_Jun_2013.technology_type="Photovoltaic" and fit_installations_30_Jun_2013.commissioned_date < date("2010-04-01") group by fit_installations_30_Jun_2013.llsoa_code) on duplicate key update num_installs_010410 = values(num_installs_010410), dec_capacity_010410 = values(dec_capacity_010410);
insert into installs_by_llsoa  (llsoa_code,num_installs_010111,dec_capacity_010111) (select fit_installations_30_Jun_2013.llsoa_code as llsoa_code, count(fit_id), sum(fit_installations_30_Jun_2013.declared_net_capacity_kw) from fit_installations_30_Jun_2013 where fit_installations_30_Jun_2013.technology_type="Photovoltaic" and fit_installations_30_Jun_2013.commissioned_date < date("2011-01-01") group by fit_installations_30_Jun_2013.llsoa_code) on duplicate key update num_installs_010111 = values(num_installs_010111), dec_capacity_010111 = values(dec_capacity_010111);
insert into installs_by_llsoa  (llsoa_code,num_installs_010112,dec_capacity_010112) (select fit_installations_30_Jun_2013.llsoa_code as llsoa_code, count(fit_id), sum(fit_installations_30_Jun_2013.declared_net_capacity_kw) from fit_installations_30_Jun_2013 where fit_installations_30_Jun_2013.technology_type="Photovoltaic" and fit_installations_30_Jun_2013.commissioned_date < date("2012-01-01") group by fit_installations_30_Jun_2013.llsoa_code) on duplicate key update num_installs_010112 = values(num_installs_010112), dec_capacity_010112 = values(dec_capacity_010112);
insert into installs_by_llsoa  (llsoa_code,num_installs_010113,dec_capacity_010113) (select fit_installations_30_Jun_2013.llsoa_code as llsoa_code, count(fit_id), sum(fit_installations_30_Jun_2013.declared_net_capacity_kw) from fit_installations_30_Jun_2013 where fit_installations_30_Jun_2013.technology_type="Photovoltaic" and fit_installations_30_Jun_2013.commissioned_date < date("2013-01-01") group by fit_installations_30_Jun_2013.llsoa_code) on duplicate key update num_installs_010113 = values(num_installs_010113), dec_capacity_010113 = values(dec_capacity_010113);
insert into installs_by_llsoa  (llsoa_code,num_installs_010713,dec_capacity_010713) (select fit_installations_30_Jun_2013.llsoa_code as llsoa_code, count(fit_id), sum(fit_installations_30_Jun_2013.declared_net_capacity_kw) from fit_installations_30_Jun_2013 where fit_installations_30_Jun_2013.technology_type="Photovoltaic" and fit_installations_30_Jun_2013.commissioned_date < date("2013-07-01") group by fit_installations_30_Jun_2013.llsoa_code) on duplicate key update num_installs_010713 = values(num_installs_010713), dec_capacity_010713 = values(dec_capacity_010713);