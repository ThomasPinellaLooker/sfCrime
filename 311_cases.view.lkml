view: 311_cases {
  sql_table_name: sfcrime_scratch.`311_cases` ;;

  dimension: address {
    type: string
    sql: ${TABLE}.Address ;;
  }

  dimension: case_id {
    type: number
    sql: ${TABLE}.CaseID ;;
  }

  dimension: category {
    type: string
    sql: ${TABLE}.Category ;;
  }

  dimension: closed {
    type: string
    sql: ${TABLE}.Closed ;;
  }

  dimension: media_url {
    type: string
    sql: ${TABLE}.`Media URL` ;;
  }

  dimension: neighborhood {
    type: string
    sql: ${TABLE}.Neighborhood ;;
  }

  dimension: opened {
    type: string
    sql: ${TABLE}.Opened ;;
  }

  dimension: point {
    type: string
    sql: ${TABLE}.Point ;;
  }

  dimension: request_details {
    type: string
    sql: ${TABLE}.`Request Details` ;;
  }

  dimension: request_type {
    type: string
    sql: ${TABLE}.`Request Type` ;;
  }

  dimension: responsible_agency {
    type: string
    sql: ${TABLE}.`Responsible Agency` ;;
  }

  dimension: source {
    type: string
    sql: ${TABLE}.Source ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}.Status ;;
  }

  dimension: supervisor_district {
    type: number
    sql: ${TABLE}.`Supervisor District` ;;
  }

  dimension: updated {
    type: string
    sql: ${TABLE}.Updated ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
