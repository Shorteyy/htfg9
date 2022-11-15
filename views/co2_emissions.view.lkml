view: co2_emissions {
  sql_table_name: `sustainability.co2_emissions`
    ;;

  dimension: country_id {
    type: number
    sql: ${TABLE}.country_id ;;
  }

  dimension: metricton_per_citizen {
    type: number
    sql: ${TABLE}.metricton_per_citizen ;;
  }

  dimension: year {
    type: number
    sql: ${TABLE}.year ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }

  measure: america {
    type: sum
    filters: [countries.name: "United States"]
    sql: ${metricton_per_citizen};;

  }

  measure: france{
    type: sum
    filters: [countries.name: "France"]
    sql: ${metricton_per_citizen} ;;

  }

  measure: russia {
    type: sum
    filters: [countries.name: "Russia"]
    sql: ${metricton_per_citizen} ;;

  }

  measure: finland{
    type: sum
    filters: [countries.name: "Finland"]
    sql: ${metricton_per_citizen} ;;

  }

  measure: canada {
    type: sum
    filters: [countries.name: "Canada"]
    sql: ${metricton_per_citizen} ;;

  }
}
