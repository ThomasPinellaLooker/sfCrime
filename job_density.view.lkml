view: job_density {
  sql_table_name: sfcrime_scratch.job_density ;;

  dimension: area_smi {
    type: string
    sql: ${TABLE}.area_smi ;;
  }

  dimension: jobs_count {
    type: string
    sql: ${TABLE}.jobs_count ;;
  }

  dimension: jobs_psmi {
    type: string
    sql: ${TABLE}.jobs_psmi ;;
  }

  dimension: population_2010 {
    type: number
    sql: ${TABLE}.population_2010 ;;
  }

  dimension: tract2010 {
    type: number
    sql: ${TABLE}.TRACT2010 ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
