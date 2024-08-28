view: irish_census {
  sql_table_name: `lcc-pso-testing.census.irish_census` ;;

  dimension: column_id {
    hidden: yes
    type: number
    sql: ${TABLE}.column_id ;;
  }
  dimension: geodesc {
    type: string
    sql: ${TABLE}.geodesc ;;
  }
  dimension: geogid {
    map_layer_name: irish_sa
    type: string
    sql: CONCAT('A',${TABLE}.geogid) ;;
  }
  dimension: guid {
    type: string
    sql: ${TABLE}.guid ;;
  }
  dimension: metric {
    hidden: yes
    type: string
    sql: ${TABLE}.metric ;;
  }
  dimension: row_id {
    hidden: yes
    primary_key: yes
    type: number
    sql: ${TABLE}.row_id ;;
  }
  dimension: value {
    hidden: yes
    type: number
    sql: ${TABLE}.value ;;
  }

  measure: average_value {
    type: average
    sql: ${value} ;;
  }
  measure: total_value {
    type: sum
    sql: ${value} ;;
  }
}
