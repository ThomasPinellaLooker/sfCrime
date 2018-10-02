view: moon_phases {
  sql_table_name: `bigquery-public-data.moon_phases.moon_phases` ;;

  dimension: phase {
    type: string
    sql: ${TABLE}.phase ;;
  }

  dimension: phase_emoji {
    type: string
    sql: ${TABLE}.phase_emoji ;;
  }

  dimension_group: peak_time {
    type: time
    sql: ${TABLE}.peak_datetime ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
