view: sfpd_incidents {
  sql_table_name: sfcrime_scratch.sfpd_incidents ;;

  dimension: address {
    type: string
    sql: ${TABLE}.Address ;;
  }

  dimension: category {
    type: string
    sql: ${TABLE}.Category ;;
  }

  dimension: date {
    type: string
    sql: ${TABLE}.Date ;;
  }

  dimension: day_of_week {
    type: string
    sql: ${TABLE}.DayOfWeek ;;
  }

  dimension: descript {
    type: string
    sql: ${TABLE}.Descript ;;
  }

  dimension: incidnt_num {
    type: number
    sql: ${TABLE}.IncidntNum ;;
  }

  dimension: location {
    type: string
    sql: ${TABLE}.Location ;;
  }

  dimension: pd_district {
    type: string
    sql: ${TABLE}.PdDistrict ;;
  }

  dimension: pd_id {
    type: number
    sql: ${TABLE}.PdId ;;
  }

  dimension: resolution {
    type: string
    sql: ${TABLE}.Resolution ;;
  }

  dimension: time {
    type: string
    sql: ${TABLE}.Time ;;
  }

  dimension: x {
    type: string
    sql: ${TABLE}.X ;;
  }

  dimension: y {
    type: string
    sql: ${TABLE}.Y ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
