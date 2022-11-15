view: energy_sources {
  sql_table_name: `sustainability.energy_sources`
    ;;

  dimension: country_id {
    type: number
    sql: ${TABLE}.country_id ;;
  }

  dimension: fossil_fuels {
    type: number
    sql: ${TABLE}.fossil_fuels ;;
  }

  dimension: nuclear {
    type: number
    sql: ${TABLE}.nuclear ;;
  }

  dimension: renewable {
    type: number
    sql: ${TABLE}.renewable ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }

  measure: renewable_sources {
    type:  sum
    sql: ${renewable} ;;
  }

  measure: fossil_sources{
    type:  sum
    sql:  ${fossil_fuels} ;;
  }
}
