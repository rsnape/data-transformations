CREATE TABLE "pcode_districts_2012" (
	"Pcode_district" VARCHAR(4) NOT NULL,
	"label" VARCHAR(16),
	MWShapeID INT not null,
	PRIMARY KEY ("Pcode_district")
)
COLLATE='latin1_swedish_ci'
ENGINE=MyISAM;