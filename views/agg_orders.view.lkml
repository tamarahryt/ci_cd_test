view: agg_orders {
  sql_table_name: `prj-s-dlp-dq-sandbox-0b3c.dbt_thrytsyk.agg_orders` ;;

  dimension: customer {
    type: string
    sql: ${TABLE}.customer ;;
  }
  dimension: order_amn {
    type: number
    sql: ${TABLE}.order_amn ;;
  }

  measure: count {
    type: count
  }
}
