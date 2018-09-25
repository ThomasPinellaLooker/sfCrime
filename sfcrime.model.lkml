connection: "lookerdata_publicdata_standard_sql"

# include all the views
include: "*.view"
include: "/thomas_geo_block/*.view"


datagroup: sfcrime_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: sfcrime_default_datagroup

explore: three_11_cases {}
explore: moon_phases {}
explore: sfpd_incidents {}

explore: geo {
  from: bq_logrecno_bg_map

  join: tract_zcta_map {
    from: bq_tract_zcta_map
    sql_on: ${geo.geoid11} = ${tract_zcta_map.geoid11};;
    relationship: many_to_one
  }

  join: zcta_distances {
    from: bq_zcta_distances
    sql_on: ${tract_zcta_map.ZCTA5} = ${zcta_distances.zip2} ;;
    relationship: one_to_one
    required_joins: [tract_zcta_map]
  }
}
