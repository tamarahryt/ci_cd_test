explore: hospital_general_info {
  label: "Hospital General Info"
  description: "Explore for the hospital_general_info view (bigquery-public-data.cms_medicare.hospital_general_info)."
  # Join hospice data by provider_id so hospice fields are available on the hospital explore
  join: hospice_providers_2014 {
    type: left_outer
    sql_on: ${hospital_general_info.provider_id} = ${hospice_providers_2014.provider_id} ;;
    relationship: many_to_one
    label: "Hospice Providers 2014"
  }
}
