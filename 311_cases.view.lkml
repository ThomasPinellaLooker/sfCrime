view: three_11_cases {
  sql_table_name: `bigquery-public-data.san_francisco.311_service_requests` ;;

  dimension_group: created_date {
    type: time
    sql: ${TABLE}.created_date ;;
  }

  dimension_group: closed_date {
    type: time
    sql: ${TABLE}.closed_date ;;
  }

  dimension_group: last_updated {
    type: time
    sql: ${TABLE}.resolution_action_updated_date ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}.status ;;
  }

  dimension: status_notes {
    type: string
    sql: ${TABLE}.status_notes ;;
  }

  dimension: agency_name {
    type: string
    sql: ${TABLE}.agency_name ;;
  }

  dimension: category {
    type: string
    sql: ${TABLE}.category ;;
  }

  dimension: complaint_type {
    type: string
    sql: ${TABLE}.complaint_type ;;
  }

  dimension: descriptor {
    type: string
    sql: ${TABLE}.descriptor ;;
  }

  dimension: address {
    type: string
    sql: ${TABLE}.incident_address ;;
  }

  dimension: supervisor_district {
    type: number
    sql:${TABLE}.supervisor_district ;;
  }

  dimension: neighborhood {
    type: string
    sql:${TABLE}.neighborhoiod ;;
  }

  dimension: source {
    type: string
    sql:${TABLE}.source ;;
  }

  dimension: lat {
    type: number
    sql: ${TABLE}.latitude ;;
  }

  dimension: long {
    type: number
    sql: ${TABLE}.longitude ;;
  }

  dimension: police_district {
    type: string
    sql:${TABLE}.police_district ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
