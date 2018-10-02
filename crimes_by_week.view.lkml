view: crimes_by_week {
  derived_table: {
    sql: -- raw sql results do not include filled-in values for 'sfpd_incidents.timestamp_week'


      SELECT
        FORMAT_TIMESTAMP('%F', TIMESTAMP_TRUNC(TIMESTAMP_ADD(TIMESTAMP_TRUNC(CAST(sfpd_incidents.timestamp  AS TIMESTAMP), DAY), INTERVAL (0 - CAST((CASE WHEN (EXTRACT(DAYOFWEEK FROM sfpd_incidents.timestamp ) - 1) - 1 + 7 < 0 THEN -1 * (ABS((EXTRACT(DAYOFWEEK FROM sfpd_incidents.timestamp ) - 1) - 1 + 7) - (ABS(7) * CAST(FLOOR(ABS(((EXTRACT(DAYOFWEEK FROM sfpd_incidents.timestamp ) - 1) - 1 + 7) / (7))) AS INT64))) ELSE ABS((EXTRACT(DAYOFWEEK FROM sfpd_incidents.timestamp ) - 1) - 1 + 7) - (ABS(7) * CAST(FLOOR(ABS(((EXTRACT(DAYOFWEEK FROM sfpd_incidents.timestamp ) - 1) - 1 + 7) / (7))) AS INT64)) END) AS INT64)) DAY), DAY)) AS sfpd_incidents_timestamp_week,
        COUNT(*) AS sfpd_incidents_count
      FROM `bigquery-public-data.san_francisco.sfpd_incidents`  AS sfpd_incidents

      WHERE ((sfpd_incidents.category ) != 'NON-CRIMINAL') AND ((TIMESTAMP_TRUNC(CAST(sfpd_incidents.timestamp  AS TIMESTAMP), DAY)) < CAST(CONCAT(CAST(CAST(2018 AS INT64) AS STRING), CAST('-' AS STRING), CAST(LPAD(CAST(CAST(1 AS INT64) AS STRING), 2, '0') AS STRING), CAST('-' AS STRING), CAST(LPAD(CAST(CAST(1 AS INT64) AS STRING), 2, '0') AS STRING), CAST(' 00:00:00' AS STRING)) AS TIMESTAMP))
      GROUP BY 1
      ORDER BY 2
      LIMIT 800
       ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: sfpd_incidents_timestamp_week {
    type: string
    sql: ${TABLE}.sfpd_incidents_timestamp_week ;;
  }

  dimension: sfpd_incidents_count {
    type: number
    sql: ${TABLE}.sfpd_incidents_count ;;
  }

  dimension: sfpd_incidents_count_tiers {
    type: tier
    tiers: [
      1800,
      1850,
      1900,
      1950,
      2000,
      2050,
      2100,
      2150,
      2200,
      2250,
      2300,
      2350,
      2400,
      2450,
      2500,
      2550,
      2600,
      2650,
      2700,
      2750,
      2800,
      2850,
      2900,
      2950
    ]
    style: integer
    sql: ${sfpd_incidents_count} ;;
  }

  set: detail {
    fields: [sfpd_incidents_timestamp_week, sfpd_incidents_count]
  }
}
