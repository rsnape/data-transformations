/*Create the table and import data before altering column names!!! */

ALTER TABLE "fit_installations"
    RENAME "FIT ID" TO "fit_id"; 
ALTER TABLE "fit_installations"
    RENAME "Post Code" TO "post_code_district"; 
    /*RENAME "Technology Type" TO "post_code_area"; */
ALTER TABLE "fit_installations"
    RENAME "Technology Type" TO "technology_type"; 
ALTER TABLE "fit_installations"
    RENAME "Installed Capacity (kW)" TO "installed_capacity_kw"; 
ALTER TABLE "fit_installations"
    RENAME "Declared Net Capacity (kW)" TO "declared_net_capacity_kw"; 
ALTER TABLE "fit_installations"
    RENAME "Application Date" TO "application_date"; 
ALTER TABLE "fit_installations"
    RENAME "Commissioned Date" TO "commissioned_date"; 
ALTER TABLE "fit_installations"
    RENAME "Export Status Type" TO "export_status_type"; 
ALTER TABLE "fit_installations"
    RENAME "TariffCode" TO "tariff_code"; 
ALTER TABLE "fit_installations"
    RENAME "Description" TO "description"; 
ALTER TABLE "fit_installations"
    RENAME "InstallationType" TO "installation_type"; 
ALTER TABLE "fit_installations"
    RENAME "Country Name" TO "country_name"; 
ALTER TABLE "fit_installations"
    RENAME "Local Authority" TO "local_authority"; 
ALTER TABLE "fit_installations"
    RENAME "Government Office Region" TO "government_office_region"; 
ALTER TABLE "fit_installations"
    RENAME "AccreditationNo" TO "accreditation_no"; 
ALTER TABLE "fit_installations"
    RENAME "Supply MPAN No (first 2 digits)" TO "supply_mpan_no_first_2_digits"; 
ALTER TABLE "fit_installations"
    RENAME "Community/School category (Applicable from 01/12/2012)" TO "community_school_category_applicable_from_01_12_2012"; 
ALTER TABLE "fit_installations"
    RENAME "LLSOA Code" TO "llsoa_code";
 
ALTER TABLE "fit_installations"
( 
    ALTER COLUMN "supply_mpan_no_first_2_digits" TYPE SMALLINT
); 