view: sfpd_incidents {
  sql_table_name: `bigquery-public-data.san_francisco.sfpd_incidents` ;;

  dimension: address {
    type: string
    sql: ${TABLE}.address ;;
  }

  dimension: category {
    type: string
    sql: ${TABLE}.category ;;
  }

  dimension_group: timestamp {
    type: time
    datatype: timestamp
    sql: ${TABLE}.timestamp ;;
  }

  dimension: descript {
    type: string
    sql: ${TABLE}.descript ;;
  }

  dimension: unique_key {
    type: number
    sql: ${TABLE}.unique_key ;;
  }

  dimension: pddestrict {
    type: string
    sql: ${TABLE}.pddistrict ;;
  }

  dimension: location {
    type: location
    sql_latitude: ${lat} ;;
    sql_longitude: ${long} ;;
  }

  dimension: pd_id {
    type: number
    sql: ${TABLE}.pdid ;;
  }

  dimension: resolution {
    type: string
    sql: ${TABLE}.resolution ;;
  }

  dimension: lat {
    type: number
    sql: ${TABLE}.latitude ;;
  }

  dimension: long {
    type: number
    sql: ${TABLE}.longitude ;;
  }

  dimension: rand {
    type: number
    sql: RAND() ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
