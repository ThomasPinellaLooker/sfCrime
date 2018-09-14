view: homeless_population {
  sql_table_name: sfcrime_scratch.homeless_population ;;

  dimension: count {
    type: number
    sql: ${TABLE}.count ;;
  }

  dimension: district_id {
    type: number
    sql: ${TABLE}.district_id ;;
  }

  dimension: percentage {
    type: string
    sql: ${TABLE}.percentage ;;
  }

  dimension: pt {
    type: string
    sql: ${TABLE}.pt ;;
  }

#   measure: count {
#     type: count
#     drill_fields: []
#   }
}
