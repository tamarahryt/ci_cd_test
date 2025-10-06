connection: "badal_internal_projects"

# include: "/explores/*"

include: "/views/*"

explore: hospital_general_info {
	label: "Hospital General Info"
	view_name: hospital_general_info
	description: "Explore for the hospital_general_info view (bigquery-public-data.cms_medicare.hospital_general_info)."
  
	join: hospice_providers_2014 {
		type: left_outer
		sql_on: ${hospital_general_info.provider_id} = ${hospice_providers_2014.provider_id} ;;
		relationship: many_to_one
		description: "Join hospice providers 2014 data by provider_id"
	}
}
