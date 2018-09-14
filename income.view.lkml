view: income {
  sql_table_name: sfcrime_scratch.income ;;

  dimension: medinc_d {
    type: number
    sql: ${TABLE}.medinc_d ;;
  }

  dimension: medinc_moe {
    type: string
    sql: ${TABLE}.medinc_moe ;;
  }

  dimension: pc_inc_d {
    type: number
    sql: ${TABLE}.pc_inc_d ;;
  }

  dimension: pc_inc_moe {
    type: string
    sql: ${TABLE}.pc_inc_moe ;;
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
