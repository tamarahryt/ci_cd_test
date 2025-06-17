view: account {
  sql_table_name: `dbt_thrytsyk.account` ;;

  dimension: attribute_physical_name {
    type: string
    label: "Pysical Name"
    sql: ${TABLE}.attribute_physical_name ;;
  }

  dimension: data_file_table_name {
    type: string
    sql: ${TABLE}.data_file_table_name ;;
  }
  dimension: data_source_mnemonic_code {
    type: string
    sql: ${TABLE}.data_source_mnemonic_code ;;
  }
  dimension: data_value {
    type: string
    sql: ${TABLE}.data_value ;;
  }
  dimension: data_value_not_null {
    type: string
    sql: ${TABLE}.data_value_not_null ;;
  }

  measure: count {
    type: number
  }

}
