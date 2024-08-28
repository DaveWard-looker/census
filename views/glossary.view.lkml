view: glossary {
  sql_table_name: `lcc-pso-testing.census.glossary` ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    hidden: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: categories {
    type: string
    sql: ${TABLE}.categories ;;
  }
  dimension: census_description {
    type: string
    sql: ${TABLE}.census_description ;;
  }
  dimension: metric {
    type: string
    sql: ${TABLE}.metric ;;
  }
  dimension: themes {
    type: string
    sql: ${TABLE}.themes ;;
  }


}
