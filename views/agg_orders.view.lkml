view: agg_orders {
  sql_table_name: `prj-s-dlp-dq-sandbox-0b3c.dbt_thrytsyk.agg_orders` ;;

  dimension_group: curr {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.curr_date ;;
  }
  dimension: customer {
    type: string
    sql: ${TABLE}.customer ;;
  }
  dimension: order_amn {
    type: number
    sql: ${TABLE}.order_amn ;;
  }
  dimension: order_cnt {
    type: number
    sql: ${TABLE}.order_cnt ;;
  }
  measure: count {
    type: count
  }
}
