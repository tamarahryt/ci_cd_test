view: orders {
  sql_table_name: `bigquery-public-data.thelook_ecommerce.orders` ;;

  # Basic dimensions
  dimension: order_id {
    type: number
    primary_key: yes
    sql: ${TABLE}.order_id ;;
    description: "Order identifier"
  }

  dimension: user_id {
    type: number
    sql: ${TABLE}.user_id ;;
    description: "User identifier"
  }

  dimension: status {
    type: string
    sql: ${TABLE}.status ;;
    description: "Order status"
  }

  dimension: gender {
    type: string
    sql: ${TABLE}.gender ;;
    description: "Gender associated with the order (from user profile)"
  }

  dimension: num_of_item {
    type: number
    sql: ${TABLE}.num_of_item ;;
    description: "Number of items in the order"
  }

  # Timestamp dimension groups for flexible time-based filtering/aggregation
  dimension_group: created_at {
    type: time
    sql: ${TABLE}.created_at ;;
    timeframes: [raw, time, date, week, month, quarter, year]
    description: "When the order was created"
  }

  dimension_group: returned_at {
    type: time
    sql: ${TABLE}.returned_at ;;
    timeframes: [raw, time, date, week, month, quarter, year]
    description: "When the order was returned (if applicable)"
  }

  dimension_group: shipped_at {
    type: time
    sql: ${TABLE}.shipped_at ;;
    timeframes: [raw, time, date, week, month, quarter, year]
    description: "When the order was shipped"
  }

  dimension_group: delivered_at {
    type: time
    sql: ${TABLE}.delivered_at ;;
    timeframes: [raw, time, date, week, month, quarter, year]
    description: "When the order was delivered"
  }

  # Common measures
  measure: count {
    type: count
    description: "Total number of order records"
  }

  measure: unique_orders {
    type: count_distinct
    sql: ${TABLE}.order_id ;;
    description: "Unique orders (distinct order_id)"
  }

  measure: unique_users {
    type: count_distinct
    sql: ${TABLE}.user_id ;;
    description: "Unique users who placed orders"
  }

  measure: sum_items {
    type: sum
    sql: ${TABLE}.num_of_item ;;
    description: "Total number of items ordered"
  }

  measure: avg_items {
    type: average
    sql: ${TABLE}.num_of_item ;;
    description: "Average number of items per order"
  }

  measure: min_items {
    type: min
    sql: ${TABLE}.num_of_item ;;
    description: "Minimum items in an order"
  }

  measure: max_items {
    type: max
    sql: ${TABLE}.num_of_item ;;
    description: "Maximum items in an order"
  }

  # Time-based aggregates
  measure: first_order_date {
    type: min
    sql: ${TABLE}.created_at ;;
    description: "Earliest order created_at"
  }

  measure: last_order_date {
    type: max
    sql: ${TABLE}.created_at ;;
    description: "Latest order created_at"
  }

  measure: earliest_shipped {
    type: min
    sql: ${TABLE}.shipped_at ;;
    description: "Earliest shipped_at"
  }

  measure: latest_shipped {
    type: max
    sql: ${TABLE}.shipped_at ;;
    description: "Latest shipped_at"
  }

  measure: earliest_delivered {
    type: min
    sql: ${TABLE}.delivered_at ;;
    description: "Earliest delivered_at"
  }

  measure: latest_delivered {
    type: max
    sql: ${TABLE}.delivered_at ;;
    description: "Latest delivered_at"
  }

  measure: earliest_returned {
    type: min
    sql: ${TABLE}.returned_at ;;
    description: "Earliest returned_at"
  }

  measure: latest_returned {
    type: max
    sql: ${TABLE}.returned_at ;;
    description: "Latest returned_at"
  }

}
