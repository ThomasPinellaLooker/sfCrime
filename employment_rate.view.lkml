view: employment_rate {
  sql_table_name: sfcrime_scratch.employment_rate ;;

  dimension: employed_moe {
    type: string
    sql: ${TABLE}.employed_moe ;;
  }

  dimension: employed_percentage {
    type: string
    sql: ${TABLE}.employed_percentage ;;
  }

  dimension: tract2000 {
    type: number
    sql: ${TABLE}.TRACT2000 ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
