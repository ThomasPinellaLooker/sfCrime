view: lr9_hjoaeiyt9_pxdhxn3_s4_me_employment_rate {
  sql_table_name: sfcrime_scratch.LR$9HJOAEIYT9PXDHXN3S4ME_employment_rate ;;

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
    sql: ${TABLE}.tract2000 ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
