view: order_items {
  sql_table_name: `bigquery-public-data.thelook_ecommerce.order_items` ;;

  # Primary key
  dimension: id {
    type: number
    primary_key: yes
    sql: ${TABLE}.id ;;
    description: "Order item identifier"
  }

  # Foreign keys / identifiers
  dimension: order_id {
    type: number
    sql: ${TABLE}.order_id ;;
    description: "Associated order id"
  }

  dimension: user_id {
    type: number
    sql: ${TABLE}.user_id ;;
    description: "User who placed the order"
  }

  dimension: product_id {
    type: number
    sql: ${TABLE}.product_id ;;
    description: "Product identifier"
  }

  dimension: inventory_item_id {
    type: number
    sql: ${TABLE}.inventory_item_id ;;
    description: "Inventory item identifier"
  }

  dimension: status {
    type: string
    sql: ${TABLE}.status ;;
    description: "Status of the order item"
  }

  dimension: sale_price {
    type: number
    sql: ${TABLE}.sale_price ;;
    description: "Sale price for the order item"
  }

  # Timestamp dimension groups
  dimension_group: created_at {
    type: time
    sql: ${TABLE}.created_at ;;
    timeframes: [raw, time, date, week, month, quarter, year]
    description: "When the order item was created"
  }

  dimension_group: shipped_at {
    type: time
    sql: ${TABLE}.shipped_at ;;
    timeframes: [raw, time, date, week, month, quarter, year]
    description: "When the order item was shipped"
  }

  dimension_group: delivered_at {
    type: time
    sql: ${TABLE}.delivered_at ;;
    timeframes: [raw, time, date, week, month, quarter, year]
    description: "When the order item was delivered"
  }

  dimension_group: returned_at {
    type: time
    sql: ${TABLE}.returned_at ;;
    timeframes: [raw, time, date, week, month, quarter, year]
    description: "When the order item was returned"
  }

  # Measures
  measure: count {
    type: count
    description: "Total number of order item records"
  }

  measure: distinct_order_items {
    type: count_distinct
    sql: ${TABLE}.id ;;
    description: "Distinct order items (by id)"
  }

  measure: unique_orders {
    type: count_distinct
    sql: ${TABLE}.order_id ;;
    description: "Distinct orders containing items"
  }

  measure: unique_products {
    type: count_distinct
    sql: ${TABLE}.product_id ;;
    description: "Distinct products sold"
  }

  measure: unique_users {
    type: count_distinct
    sql: ${TABLE}.user_id ;;
    description: "Distinct users who bought items"
  }

  measure: sum_sale_price {
    type: sum
    sql: ${TABLE}.sale_price ;;
    description: "Total revenue from sold items"
  }

  measure: avg_sale_price {
    type: average
    sql: ${TABLE}.sale_price ;;
    description: "Average sale price per order item"
  }

  measure: min_sale_price {
    type: min
    sql: ${TABLE}.sale_price ;;
    description: "Minimum sale price"
  }

  measure: max_sale_price {
    type: max
    sql: ${TABLE}.sale_price ;;
    description: "Maximum sale price"
  }

  # Time-based min/max measures
  measure: first_item_date {
    type: min
    sql: ${TABLE}.created_at ;;
    description: "Earliest created_at for order items"
  }

  measure: last_item_date {
    type: max
    sql: ${TABLE}.created_at ;;
    description: "Latest created_at for order items"
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
