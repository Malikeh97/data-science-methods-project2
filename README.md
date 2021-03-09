## COVID-19 Dashboard for the General Ontario Public

Team Members:
 * Elisa Du
 * Malikeh Ehghaghi
 * Yuanhao Lou
 * Jack Ellis

![Dashboard Page 1 Part 1](demo/demo1.gif)

## Overview
Many visualization tools have been built since the start of the COVID-19 pandemic. This particular dashboard aims to provide the Ontario public with an understanding of the current case progression and testing status within Ontario, as well as the vaccination status of Ontario compared to other Canadian provinces and territories. The Ontario public can use this dashboard to determine how effectively public health measures are in reducing virus spread, as well as to ascertain the safety level of their local communities. The first page of the dashboard provides information on case-related statistics (e.g. total case and death counts, average daily testing volumes, percent positivity rate, and outbreak frequencies) for different PHUs within Ontario. The second page of the dashboard contains visualizations that compare the vaccine distribution and administration of Ontario to other provinces and territories. From this the public can ascertain how soon they can be vaccinated. The dashboard was created with flexdashboard in R.

## Dashboard Summary
The goal of this dashboard is to provide the Ontario general public with up-to-date information on COVID-19 testing, case status, and vaccination.

## Data Sources
Data Sources and Information for the Dashboard:
 Ontario GeoHub:
 * https://geohub.lio.gov.on.ca/datasets/ministry-of-health-public-health-unit-boundary/geoservice?geometry=-168.377%2C38.920%2C-1.122%2C58.787

 Ontario Data Catalogue:
 * https://data.ontario.ca/dataset/status-of-covid-19-cases-in-ontario-by-public-health-unit-phu
 * https://data.ontario.ca/dataset/a2dfa674-a173-45b3-9964-1e3d2130b40f/resource/07bc0e21-26b5-4152-b609-c1958cb7b227/download/testing_metrics_by_phu.csv
 * https://data.ontario.ca/dataset/1115d5fe-dd84-4c69-b5ed-05bf0c0a0ff9/resource/d1bfe1ad-6575-4352-8302-09ca81f7ddfc/download/cases_by_status_and_phu.csv
 * https://data.ontario.ca/dataset/ontario-covid-19-outbreaks-data/resource/36048cc1-3c47-48ff-a49f-8c7840e32cc2

 Statistics Canada:
 * https://www12.statcan.gc.ca/census-recensement/2016/dp-pd/prof/details/download-telecharger/comp/GetFile.cfm?Lang=E&FILETYPE=CSV&GEONO=058

 Canada Public Health Services:
 * https://www.canada.ca/en/public-health/services/diseases/2019-novel-coronavirus-infection/prevention-risks/covid-19-vaccine-treatment/vaccine-rollout.html

 Canada Covid-19 Github Repository:
 * https://raw.githubusercontent.com/ccodwg/Covid19Canada/master/timeseries_prov/vaccine_administration_timeseries_prov.csv

 Government of Canada:
 * https://www.canada.ca/en/public-health/services/diseases/2019-novel-coronavirus-infection/prevention-risks/covid-19-vaccine-treatment/vaccine-rollout.html

 CTV News:
 * https://www.ctvnews.ca/health/coronavirus/coronavirus-vaccine-tracker-how-many-people-in-canada-have-received-shots-1.5247509?fbclid=IwAR3HMQewAhl4fmp8SisM6Pdq-xQN-hG9sa0Q9C1ugzqlNa8UZNGblDHGBcA

 Carto:
 * https://thomson.carto.com/tables/canada_provinces/public/map

## Instructions to Run Dashboard
Step 1. Clone the repo. If needed, instructions can be found [here](LINK??).
Step 2. Install the packages and R version needed in `requirements.txt`.
One can also use the `pckrat?` package for dependency management.
Step 3. To view dashboard, open `STA-2453_P2.Rmd` in RStudio and knit (should take no more than 5 min).

## Final product
Final dashboard can also be viewed in the file `STA-2453_P2.html`.

## File Directory
- `canada_provinces.geojson`
- `cases_by_status_and_phu.csv`
- `province_populations.csv`
- `socioeconomic_phu.csv`
- `vaccine_administration_total_prov.csv`
- `vaccine_administration_timeseries_prov_2.csv`
- `vaccine_distribution.csv`
- `vaccine_distribution2.csv`
- `vaccine_province.csv`

## Notes
- Web scraping of vaccine data to generate the map on page two of the dashboard is done using Firefox webdriver. Please ensure Firefox browser is installed. Unfortunately the scraping would not work for any other web browers.
- Please view the dashboard in *full screen* for optimal display.
