drop table if exists `installs_by_pcode_district`;

CREATE TABLE `installs_by_pcode_district` (
	`Pcode_district` VARCHAR(4) NOT NULL,
	`num_installs_010410` INT(11) NOT NULL DEFAULT '0',
	`num_installs_010111` INT(11) NOT NULL DEFAULT '0',
	`num_installs_010112` INT(11) NOT NULL DEFAULT '0',
	`num_installs_010113` INT(11) NOT NULL DEFAULT '0',
	`num_installs_010713` INT(11) NOT NULL DEFAULT '0',
	`dec_capacity_010410` FLOAT NOT NULL DEFAULT '0',
	`dec_capacity_010111` FLOAT NOT NULL DEFAULT '0',
	`dec_capacity_010112` FLOAT NOT NULL DEFAULT '0',
	`dec_capacity_010113` FLOAT NOT NULL DEFAULT '0',
	`dec_capacity_010713` FLOAT NOT NULL DEFAULT '0',
	PRIMARY KEY (`Pcode_district`)
)
COLLATE='latin1_swedish_ci'
ENGINE=MyISAM;

insert into installs_by_pcode_district (Pcode_district,num_installs_010410,dec_capacity_010410) (select fit_installations_30_Jun_2013.post_code_district as Pcode_district, count(fit_id), sum(fit_installations_30_Jun_2013.declared_net_capacity_kw) from fit_installations_30_Jun_2013 where fit_installations_30_Jun_2013.technology_type = "Photovoltaic" and fit_installations_30_Jun_2013.commissioned_date < date("2010-04-01") group by fit_installations_30_Jun_2013.post_code_district) on duplicate key update num_installs_010410 = values(num_installs_010410), dec_capacity_010410 = values(dec_capacity_010410);
insert into installs_by_pcode_district (Pcode_district,num_installs_010111,dec_capacity_010111) (select fit_installations_30_Jun_2013.post_code_district as Pcode_district, count(fit_id), sum(fit_installations_30_Jun_2013.declared_net_capacity_kw) from fit_installations_30_Jun_2013 where fit_installations_30_Jun_2013.technology_type = "Photovoltaic" and fit_installations_30_Jun_2013.commissioned_date < date("2011-01-01") group by fit_installations_30_Jun_2013.post_code_district) on duplicate key update num_installs_010111 = values(num_installs_010111), dec_capacity_010111 = values(dec_capacity_010111);
insert into installs_by_pcode_district (Pcode_district,num_installs_010112,dec_capacity_010112) (select fit_installations_30_Jun_2013.post_code_district as Pcode_district, count(fit_id), sum(fit_installations_30_Jun_2013.declared_net_capacity_kw) from fit_installations_30_Jun_2013 where fit_installations_30_Jun_2013.technology_type = "Photovoltaic" and fit_installations_30_Jun_2013.commissioned_date < date("2012-01-01") group by fit_installations_30_Jun_2013.post_code_district) on duplicate key update num_installs_010112 = values(num_installs_010112), dec_capacity_010112 = values(dec_capacity_010112);
insert into installs_by_pcode_district (Pcode_district,num_installs_010113,dec_capacity_010113) (select fit_installations_30_Jun_2013.post_code_district as Pcode_district, count(fit_id), sum(fit_installations_30_Jun_2013.declared_net_capacity_kw) from fit_installations_30_Jun_2013 where fit_installations_30_Jun_2013.technology_type = "Photovoltaic" and fit_installations_30_Jun_2013.commissioned_date < date("2013-01-01") group by fit_installations_30_Jun_2013.post_code_district) on duplicate key update num_installs_010113 = values(num_installs_010113), dec_capacity_010113 = values(dec_capacity_010113);
insert into installs_by_pcode_district (Pcode_district,num_installs_010713,dec_capacity_010713) (select fit_installations_30_Jun_2013.post_code_district as Pcode_district, count(fit_id), sum(fit_installations_30_Jun_2013.declared_net_capacity_kw) from fit_installations_30_Jun_2013 where fit_installations_30_Jun_2013.technology_type = "Photovoltaic" and fit_installations_30_Jun_2013.commissioned_date < date("2013-07-01") group by fit_installations_30_Jun_2013.post_code_district) on duplicate key update num_installs_010713 = values(num_installs_010713), dec_capacity_010713 = values(dec_capacity_010713);

#sort out the one installation in the database assigned to non-geographic CR9 postcode (actually in CR0 area)
replace into installs_by_pcode_district (select 'CR0', sum(num_installs_010410), sum(num_installs_010111), sum(num_installs_010112), sum(num_installs_010113), sum(num_installs_010713), sum(dec_capacity_010410), sum(dec_capacity_010111), sum(dec_capacity_010112), sum(dec_capacity_010113), sum(dec_capacity_010713) from installs_by_pcode_district where installs_by_pcode_district.Pcode_district in ('CR0','CR9'));
delete from installs_by_pcode_district where installs_by_pcode_district.Pcode_district = 'CR9'