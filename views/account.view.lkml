view: account {
  sql_table_name: `dbt_thrytsyk.account` ;;

  dimension: attribute_physical_name {
    type: string
    label: "Pysical Name"
    sql: ${TABLE}.attribute_physical_name ;;
  }
  dimension_group: cur {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.cur_date ;;
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
  dimension: datatype_format {
    type: string
    sql: ${TABLE}.datatype_format ;;
  }
  dimension: domain_process_name {
    type: string
    sql: ${TABLE}.domain_process_name ;;
  }
  dimension: schema_name_file_path {
    type: string
    sql: ${TABLE}.schema_name_file_path ;;
  }
  dimension_group: source_batch_process {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.source_batch_process_date ;;
  }
  measure: count {
    type: count
    drill_fields: [domain_process_name, attribute_physical_name, data_file_table_name]
  }
}
