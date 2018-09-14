connection: "sf_crime"

# include all the views
include: "*.view"

datagroup: sfcrime_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: sfcrime_default_datagroup

explore: 311_cases {}

explore: connection_reg_r3 {}

explore: employment_rate {}

explore: homeless_population {}

explore: housing_affordability_gap {}

explore: income {}

explore: job_density {}

explore: lr9_hjoaeiyt9_pxdhxn3_s4_me_employment_rate {}

explore: sfpd_incidents {}
