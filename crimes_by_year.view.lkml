view: crimes_by_year {
  derived_table: {
    sql: -- raw sql results do not include filled-in values for 'sfpd_incidents.timestamp_year'


      SELECT
        EXTRACT(YEAR FROM sfpd_incidents.timestamp ) AS sfpd_incidents_timestamp_year,
        COUNT(*) AS sfpd_incidents_count
      FROM `bigquery-public-data.san_francisco.sfpd_incidents`  AS sfpd_incidents

      WHERE ((sfpd_incidents.category ) != 'NON-CRIMINAL') AND ((TIMESTAMP_TRUNC(CAST(sfpd_incidents.timestamp  AS TIMESTAMP), DAY)) < CAST(CONCAT(CAST(CAST(2018 AS INT64) AS STRING), CAST('-' AS STRING), CAST(LPAD(CAST(CAST(1 AS INT64) AS STRING), 2, '0') AS STRING), CAST('-' AS STRING), CAST(LPAD(CAST(CAST(1 AS INT64) AS STRING), 2, '0') AS STRING), CAST(' 00:00:00' AS STRING)) AS TIMESTAMP))
      GROUP BY 1
      ORDER BY 2 DESC
      LIMIT 1000
       ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: sfpd_incidents_timestamp_year {
    type: number
    sql: ${TABLE}.sfpd_incidents_timestamp_year ;;
  }

  dimension: sfpd_incidents_count {
    type: number
    sql: ${TABLE}.sfpd_incidents_count ;;
  }

  set: detail {
    fields: [sfpd_incidents_timestamp_year, sfpd_incidents_count]
  }
}
