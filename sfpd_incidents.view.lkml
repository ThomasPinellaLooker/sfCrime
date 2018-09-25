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
    sql: ${date} ;;
  }

  dimension: date {
    type: string
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

  dimension: location {
    type: string
    sql: ${TABLE}.location ;;
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

  measure: count {
    type: count
    drill_fields: []
  }
}
