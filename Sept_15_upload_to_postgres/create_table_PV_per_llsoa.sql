drop table PV_per_LLSOA;
create table "PV_per_LLSOA" select llsoa_code,installation_type,sum(installed_capacity_kw),count(fit_id) from fit_installations where technology_type="Photovoltaic" group by llsoa_code,installation_type;
alter table "PV_per_LLSOA" add index("llsoa_code")