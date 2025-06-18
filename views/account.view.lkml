

view: account {
  sql_table_name: `dbt_thrytsyk.account` ;;

  dimension: attribute_physical_name {
    type: string
    label: "Pysical Name"
    sql: ${TABLE}.attribute_physical_name ;;
  }

  measure: count {
    type: number
    label: "one measure"
  }

}
