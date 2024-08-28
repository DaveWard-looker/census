connection: "lcc-pso"

label: "Irish Census"

include: "/views/*.view.lkml"                # include all views in the views/ folder in this project
# include: "/**/*.view.lkml"                 # include all views in this project
# include: "my_dashboard.dashboard.lookml"   # include a LookML dashboard called my_dashboard

# # Select the views that should be a part of this model,
# # and define the joins that connect them together.
#
# explore: order_items {
#   join: orders {
#     relationship: many_to_one
#     sql_on: ${orders.id} = ${order_items.order_id} ;;
#   }
#
#   join: users {
#     relationship: many_to_one
#     sql_on: ${users.id} = ${orders.user_id} ;;
#   }
# }


explore: irish_census {
  join: glossary {
    type: inner
    relationship: many_to_one
    sql_on: ${irish_census.column_id} = ${glossary.id} ;;
  }
  join: sa_boundaries {
    type: inner
    relationship: many_to_one
    sql_on: ${irish_census.guid} = ${sa_boundaries.sa_guid_2022} ;;
  }
}


map_layer: irish_sa {
  file: "/sa_geogid_topo.json"
  format: topojson
  property_label_key: "SA_GEOGID_"
  property_key: "SA_GEOGID_"
}
