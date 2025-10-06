view: hospital_general_info {
  sql_table_name: `bigquery-public-data.cms_medicare.hospital_general_info` ;;

  # Dimensions (one per column in the DDL)
  dimension: provider_id {
    type: string
    sql: ${TABLE}.provider_id ;;
    primary_key: yes
  }

  dimension: hospital_name {
    type: string
    sql: ${TABLE}.hospital_name ;;
  }

  dimension: address {
    type: string
    sql: ${TABLE}.address ;;
  }

  dimension: city {
    type: string
    sql: ${TABLE}.city ;;
  }

  dimension: state {
    type: string
    sql: ${TABLE}.state ;;
  }

  dimension: zip_code {
    type: string
    sql: ${TABLE}.zip_code ;;
  }

  dimension: county_name {
    type: string
    sql: ${TABLE}.county_name ;;
  }

  dimension: phone_number {
    type: string
    sql: ${TABLE}.phone_number ;;
  }

  dimension: hospital_type {
    type: string
    sql: ${TABLE}.hospital_type ;;
  }

  dimension: hospital_ownership {
    type: string
    sql: ${TABLE}.hospital_ownership ;;
  }

  dimension: emergency_services {
    type: yesno
    sql: ${TABLE}.emergency_services ;;
  }

  dimension: meets_criteria_for_promoting_interoperability_of_ehrs {
    type: yesno
    sql: ${TABLE}.meets_criteria_for_promoting_interoperability_of_ehrs ;;
  }

  dimension: hospital_overall_rating {
    type: string
    sql: ${TABLE}.hospital_overall_rating ;;
  }

  dimension: hospital_overall_rating_footnote {
    type: string
    sql: ${TABLE}.hospital_overall_rating_footnote ;;
  }

  dimension: mortality_group_measure_count {
    type: string
    sql: ${TABLE}.mortality_group_measure_count ;;
  }

  dimension: facility_mortaility_measures_count {
    type: string
    sql: ${TABLE}.facility_mortaility_measures_count ;;
  }

  dimension: mortality_measures_better_count {
    type: string
    sql: ${TABLE}.mortality_measures_better_count ;;
  }

  dimension: mortality_measures_no_different_count {
    type: string
    sql: ${TABLE}.mortality_measures_no_different_count ;;
  }

  dimension: mortality_measures_worse_count {
    type: string
    sql: ${TABLE}.mortality_measures_worse_count ;;
  }

  dimension: mortaility_group_footnote {
    type: string
    sql: ${TABLE}.mortaility_group_footnote ;;
  }

  dimension: safety_measures_count {
    type: string
    sql: ${TABLE}.safety_measures_count ;;
  }

  dimension: facility_care_safety_measures_count {
    type: string
    sql: ${TABLE}.facility_care_safety_measures_count ;;
  }

  dimension: safety_measures_better_count {
    type: string
    sql: ${TABLE}.safety_measures_better_count ;;
  }

  dimension: safety_measures_no_different_count {
    type: string
    sql: ${TABLE}.safety_measures_no_different_count ;;
  }

  dimension: safety_measures_worse_count {
    type: string
    sql: ${TABLE}.safety_measures_worse_count ;;
  }

  dimension: safety_group_footnote {
    type: string
    sql: ${TABLE}.safety_group_footnote ;;
  }

  dimension: readmission_measures_count {
    type: string
    sql: ${TABLE}.readmission_measures_count ;;
  }

  dimension: facility_readmission_measures_count {
    type: string
    sql: ${TABLE}.facility_readmission_measures_count ;;
  }

  dimension: readmission_measures_better_count {
    type: string
    sql: ${TABLE}.readmission_measures_better_count ;;
  }

  dimension: readmission_measures_no_different_count {
    type: string
    sql: ${TABLE}.readmission_measures_no_different_count ;;
  }

  dimension: readmission_measures_worse_count {
    type: string
    sql: ${TABLE}.readmission_measures_worse_count ;;
  }

  dimension: readmission_measures_footnote {
    type: string
    sql: ${TABLE}.readmission_measures_footnote ;;
  }

  dimension: patient_experience_measures_count {
    type: string
    sql: ${TABLE}.patient_experience_measures_count ;;
  }

  dimension: facility_patient_experience_measures_count {
    type: string
    sql: ${TABLE}.facility_patient_experience_measures_count ;;
  }

  dimension: patient_experience_measures_footnote {
    type: string
    sql: ${TABLE}.patient_experience_measures_footnote ;;
  }

  dimension: timely_and_effective_care_measures_count {
    type: string
    sql: ${TABLE}.timely_and_effective_care_measures_count ;;
  }

  dimension: facility_timely_and_effective_care_measures_count {
    type: string
    sql: ${TABLE}.facility_timely_and_effective_care_measures_count ;;
  }

  dimension: timely_and_effective_care_measures_footnote {
    type: string
    sql: ${TABLE}.timely_and_effective_care_measures_footnote ;;
  }

  # Basic measures
  measure: row_count {
    type: count
    description: "Total rows"
  }

  measure: unique_providers {
    type: count_distinct
    sql: ${TABLE}.provider_id ;;
    description: "Distinct provider_id count"
  }

  # Sum measures for fields that represent counts in the source (use SAFE_CAST to handle non-numeric values)
  measure: mortality_group_measure_count_sum {
    type: sum
    sql: SAFE_CAST(${TABLE}.mortality_group_measure_count AS INT64) ;;
    value_format_name: "decimal_0"
  }

  measure: facility_mortaility_measures_count_sum {
    type: sum
    sql: SAFE_CAST(${TABLE}.facility_mortaility_measures_count AS INT64) ;;
    value_format_name: "decimal_0"
  }

  measure: mortality_measures_better_count_sum {
    type: sum
    sql: SAFE_CAST(${TABLE}.mortality_measures_better_count AS INT64) ;;
    value_format_name: "decimal_0"
  }

  measure: mortality_measures_no_different_count_sum {
    type: sum
    sql: SAFE_CAST(${TABLE}.mortality_measures_no_different_count AS INT64) ;;
    value_format_name: "decimal_0"
  }

  measure: mortality_measures_worse_count_sum {
    type: sum
    sql: SAFE_CAST(${TABLE}.mortality_measures_worse_count AS INT64) ;;
    value_format_name: "decimal_0"
  }

  measure: safety_measures_count_sum {
    type: sum
    sql: SAFE_CAST(${TABLE}.safety_measures_count AS INT64) ;;
    value_format_name: "decimal_0"
  }

  measure: facility_care_safety_measures_count_sum {
    type: sum
    sql: SAFE_CAST(${TABLE}.facility_care_safety_measures_count AS INT64) ;;
    value_format_name: "decimal_0"
  }

  measure: safety_measures_better_count_sum {
    type: sum
    sql: SAFE_CAST(${TABLE}.safety_measures_better_count AS INT64) ;;
    value_format_name: "decimal_0"
  }

  measure: safety_measures_no_different_count_sum {
    type: sum
    sql: SAFE_CAST(${TABLE}.safety_measures_no_different_count AS INT64) ;;
    value_format_name: "decimal_0"
  }

  measure: safety_measures_worse_count_sum {
    type: sum
    sql: SAFE_CAST(${TABLE}.safety_measures_worse_count AS INT64) ;;
    value_format_name: "decimal_0"
  }

  measure: readmission_measures_count_sum {
    type: sum
    sql: SAFE_CAST(${TABLE}.readmission_measures_count AS INT64) ;;
    value_format_name: "decimal_0"
  }

  measure: facility_readmission_measures_count_sum {
    type: sum
    sql: SAFE_CAST(${TABLE}.facility_readmission_measures_count AS INT64) ;;
    value_format_name: "decimal_0"
  }

  measure: readmission_measures_better_count_sum {
    type: sum
    sql: SAFE_CAST(${TABLE}.readmission_measures_better_count AS INT64) ;;
    value_format_name: "decimal_0"
  }

  measure: readmission_measures_no_different_count_sum {
    type: sum
    sql: SAFE_CAST(${TABLE}.readmission_measures_no_different_count AS INT64) ;;
    value_format_name: "decimal_0"
  }

  measure: readmission_measures_worse_count_sum {
    type: sum
    sql: SAFE_CAST(${TABLE}.readmission_measures_worse_count AS INT64) ;;
    value_format_name: "decimal_0"
  }

  measure: patient_experience_measures_count_sum {
    type: sum
    sql: SAFE_CAST(${TABLE}.patient_experience_measures_count AS INT64) ;;
    value_format_name: "decimal_0"
  }

  measure: facility_patient_experience_measures_count_sum {
    type: sum
    sql: SAFE_CAST(${TABLE}.facility_patient_experience_measures_count AS INT64) ;;
    value_format_name: "decimal_0"
  }

  measure: timely_and_effective_care_measures_count_sum {
    type: sum
    sql: SAFE_CAST(${TABLE}.timely_and_effective_care_measures_count AS INT64) ;;
    value_format_name: "decimal_0"
  }

  measure: facility_timely_and_effective_care_measures_count_sum {
    type: sum
    sql: SAFE_CAST(${TABLE}.facility_timely_and_effective_care_measures_count AS INT64) ;;
    value_format_name: "decimal_0"
  }

  # Percentage of hospitals with emergency services
  measure: pct_emergency_services {
    type: average
    sql: CASE WHEN ${TABLE}.emergency_services THEN 1 ELSE 0 END ;;
    value_format_name: "percent_2"
    description: "Fraction of rows where emergency_services is true"
  }

}
