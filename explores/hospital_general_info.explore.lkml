explore: hospital_general_info {
  label: "Hospital General Info"
  description: "Explore for the hospital_general_info view (bigquery-public-data.cms_medicare.hospital_general_info)."
  # The base view is `hospital_general_info` (defined in views/hospital_general_info.view.lkml)
  join: hospice_providers_2014 {
    type: left_outer
    sql_on: ${hospital_general_info.provider_id} = ${hospice_providers_2014.provider_id} ;;
    label: "Hospice Providers 2014"
    relationship: many_to_one
  }
}
