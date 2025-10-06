include: "/views/orders.view.lkml"
include: "/views/order_items.view.lkml"


explore: orders {
  label: "Orders"
  # No 'from:' needed since explore name matches view name

  join: order_items {
    type: left_outer
    sql_on: ${orders.order_id} = ${order_items.order_id} ;;
    relationship: one_to_many
  }
}
