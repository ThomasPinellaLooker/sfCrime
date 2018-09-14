view: housing_affordability_gap {
  sql_table_name: sfcrime_scratch.housing_affordability_gap ;;

  dimension: down_payment {
    type: string
    sql: ${TABLE}.down_payment ;;
  }

  dimension: income_d {
    type: number
    sql: ${TABLE}.income_d ;;
  }

  dimension: income_gap {
    type: number
    sql: ${TABLE}.income_gap ;;
  }

  dimension: loan_amount {
    type: string
    sql: ${TABLE}.loan_amount ;;
  }

  dimension: median_sale {
    type: number
    sql: ${TABLE}.median_sale ;;
  }

  dimension: medinc_d {
    type: number
    sql: ${TABLE}.medinc_d ;;
  }

  dimension: medinc_moe {
    type: number
    sql: ${TABLE}.medinc_moe ;;
  }

  dimension: monthly {
    type: number
    sql: ${TABLE}.monthly ;;
  }

  dimension: neighborhood {
    type: string
    sql: ${TABLE}.neighborhood ;;
  }

  dimension: population_2010 {
    type: string
    sql: ${TABLE}.population_2010 ;;
  }

  dimension: sample_size {
    type: number
    sql: ${TABLE}.sample_size ;;
  }

  dimension: shape_area {
    type: string
    sql: ${TABLE}.shape_area ;;
  }

  dimension: shape_length {
    type: string
    sql: ${TABLE}.shape_length ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
