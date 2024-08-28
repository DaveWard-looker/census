view: sa_boundaries {
  sql_table_name: `lcc-pso-testing.census.sa_boundaries` ;;

  dimension: county_code {
    hidden: yes
    type: number
    sql: ${TABLE}.COUNTY_CODE ;;
  }
  dimension: county_english {
    label: "County"
    type: string
    sql: ${TABLE}.COUNTY_ENGLISH ;;
  }
  dimension: county_gaeilge {
    hidden: yes
    type: string
    sql: ${TABLE}.COUNTY_GAEILGE ;;
  }
  dimension: cso_lea {
    type: string
    sql: ${TABLE}.CSO_LEA ;;
  }
  dimension: ed_english {
    label: "Electoral District"
    type: string
    sql: ${TABLE}.ED_ENGLISH ;;
  }
  dimension: ed_gaeilge {
    hidden: yes
    type: string
    sql: ${TABLE}.ED_GAEILGE ;;
  }
  dimension: ed_guid {
    hidden: yes
    type: string
    sql: ${TABLE}.ED_GUID ;;
  }
  dimension: ed_id_str {
    type: string
    sql: ${TABLE}.ED_ID_STR ;;
  }
  dimension: ed_official {
    type: yesno
    sql: ${TABLE}.ED_OFFICIAL ;;
  }
  dimension: ed_part_count {
    type: number
    sql: ${TABLE}.ED_PART_COUNT ;;
  }
  dimension: objectid {
    type: number
    value_format_name: id
    sql: ${TABLE}.OBJECTID ;;
  }
  dimension: sa_change_code {
    type: number
    sql: ${TABLE}.SA_CHANGE_CODE ;;
  }
  dimension: sa_geogid_2022 {
    hidden: yes
    type: string
    sql: ${TABLE}.SA_GEOGID_2022 ;;
  }
  dimension: sa_guid_2016 {
    hidden: yes
    type: string
    sql: ${TABLE}.SA_GUID_2016 ;;
  }
  dimension: sa_guid_2022 {
    hidden: yes
    primary_key: yes
    type: string
    sql: ${TABLE}.SA_GUID_2022 ;;
  }
  dimension: sa_nuts1 {
    hidden: yes
    type: string
    sql: ${TABLE}.SA_NUTS1 ;;
  }
  dimension: sa_nuts1_name {
    hidden: yes
    type: string
    sql: ${TABLE}.SA_NUTS1_NAME ;;
  }
  dimension: sa_nuts2 {
    hidden: yes
    type: string
    sql: ${TABLE}.SA_NUTS2 ;;
  }
  dimension: sa_nuts2_name {
    hidden: yes
    type: string
    sql: ${TABLE}.SA_NUTS2_NAME ;;
  }
  dimension: sa_nuts3 {
    hidden: yes
    type: string
    sql: ${TABLE}.SA_NUTS3 ;;
  }
  dimension: sa_nuts3_name {
    type: string
    sql: ${TABLE}.SA_NUTS3_NAME ;;
  }
  dimension: sa_pub2011 {
    hidden: yes
    type: string
    sql: ${TABLE}.SA_PUB2011 ;;
  }
  dimension: sa_pub2016 {
    hidden: yes
    type: string
    sql: ${TABLE}.SA_PUB2016 ;;
  }
  dimension: sa_pub2022 {
    hidden: yes
    type: string
    sql: ${TABLE}.SA_PUB2022 ;;
  }
  dimension: sa_urban_area_flag {
    label: "Urban Area Flag"
    type: number
    sql: ${TABLE}.SA_URBAN_AREA_FLAG ;;
  }
  dimension: sa_urban_area_name {
    label: "Urban Area Name"
    type: string
    sql: ${TABLE}.SA_URBAN_AREA_NAME ;;
  }
  dimension: shape__area {
    hidden: yes
    type: number
    sql: ${TABLE}.Shape__Area ;;
  }
  dimension: shape__length {
    hidden: yes
    type: number
    sql: ${TABLE}.Shape__Length ;;
  }

}
