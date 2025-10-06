explore: orders {
  label: "Orders"
  description: "Explore for orders. Joins order_items to allow item-level analysis alongside orders."

  # Join order_items to enable querying item-level details from the orders explore
  join: order_items {
    type: left_outer
    sql_on: ${orders.order_id} = ${order_items.order_id} ;;
    relationship: one_to_many

  }

}
