update fit_installations_30_Jun_2013
set fit_installations_30_Jun_2013.post_code_area = left(fit_installations_30_Jun_2013.post_code_district,2) where (mid(fit_installations_30_Jun_2013.post_code_district,2,1) not in ("0","1","2","3","4","5","6","7","8","9"));

update fit_installations_30_Jun_2013
set fit_installations_30_Jun_2013.post_code_area = left(fit_installations_30_Jun_2013.post_code_district,1) where (mid(fit_installations_30_Jun_2013.post_code_district,2,1) in ("0","1","2","3","4","5","6","7","8","9"));