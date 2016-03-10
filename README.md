# data-transformations
Code for transforming data sources for use in research

This repository will initially house the SQL to set up a database that is compatible with the code in [my spatial-visualiser](https://github.com/rsnape/spatial-visualiser)
repository.  To use the code, you need to obtain the latest Feed-in tarriff installation report - available from [here](https://www.ofgem.gov.uk/environmental-programmes/feed-tariff-fit-scheme/feed-tariff-reports-and-statistics/installation-reports) at the time of writing.  You then create the tables using the SQL provided and import the installation report CSV into your database - I usually use [HeidiSQL](http://www.heidisql.com/) as my client of choice for this task - I have no affiliation with the tool, but I find it a really good piece of free software and am happy to support it.  Use whatever you are comfortable with.  An example of the 2013 installation database is included in the 2013 directory of this repository.

Over time, I intend to add any scripts I need to use to maipulate publicly available data before using it in research
examples of this data might be spatially disaggregated energy consumption data, local carbon intensity of electricity
if that ever becomes available and probably other things that I can't think of right ... now :)
