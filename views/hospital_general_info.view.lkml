view: hospital_general_info {
  label: "Hospital General Info"
  description: "Mirror of bigquery-public-data.cms_medicare.hospital_general_info — dimensions for each column and common measures."

  sql_table_name: `bigquery-public-data.cms_medicare.hospital_general_info` ;;

  # Dimensions (one per column in the DDL)
  dimension: provider_id {
    type: string
    sql: ${TABLE}.provider_id ;;
    primary_key: yes
    description: "Provider identifier"
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
    description: "Whether emergency services are available"
  }

  dimension: meets_criteria_for_promoting_interoperability_of_ehrs {
    type: yesno
    sql: ${TABLE}.meets_criteria_for_promoting_interoperability_of_ehrs ;;
    description: "Meets criteria for promoting interoperability of EHRs"
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
    description: "Count of measures included in the Mortality measure group"
  }

  dimension: facility_mortaility_measures_count {
    type: string
    sql: ${TABLE}.facility_mortaility_measures_count ;;
    description: "Number of Mortality measures used in the hospital’s overall star rating"
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
    description: "Footnote about Mortality measures"
  }

  dimension: safety_measures_count {
    type: string
    sql: ${TABLE}.safety_measures_count ;;
    description: "Count of measures included in the Safety of Care measure group"
  }

  dimension: facility_care_safety_measures_count {
    type: string
    sql: ${TABLE}.facility_care_safety_measures_count ;;
    description: "Number of Safety of care measures used in the hospital’s overall star rating"
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
    description: "Footnote about Safety of care measures"
  }

  dimension: readmission_measures_count {
    type: string
    sql: ${TABLE}.readmission_measures_count ;;
    description: "Count of measures included in the Readmission measure group"
  }

  dimension: facility_readmission_measures_count {
    type: string
    sql: ${TABLE}.facility_readmission_measures_count ;;
    description: "Number of Readmission measures used in the hospital’s overall star rating"
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
    description: "Footnote about Readmission measures"
  }

  dimension: patient_experience_measures_count {
    type: string
    sql: ${TABLE}.patient_experience_measures_count ;;
    description: "Count of measures included in the Patient experience measure group"
  }

  dimension: facility_patient_experience_measures_count {
    type: string
    sql: ${TABLE}.facility_patient_experience_measures_count ;;
    description: "Number of Patient experience measures used in the hospital’s overall star rating"
  }

  dimension: patient_experience_measures_footnote {
    type: string
    sql: ${TABLE}.patient_experience_measures_footnote ;;
    description: "Footnote about Patient experience measures"
  }

  dimension: timely_and_effective_care_measures_count {
    type: string
    sql: ${TABLE}.timely_and_effective_care_measures_count ;;
    description: "Count of measures included in the Timely and effective care measure group"
  }

  dimension: facility_timely_and_effective_care_measures_count {
    type: string
    sql: ${TABLE}.facility_timely_and_effective_care_measures_count ;;
    description: "Number of Timely and effective care measures used in the hospital’s overall star rating"
  }

  dimension: timely_and_effective_care_measures_footnote {
    type: string
    sql: ${TABLE}.timely_and_effective_care_measures_footnote ;;
    description: "Footnote about Timely and effective care measures"
  }

  # Useful measures
  measure: count {
    type: count
    description: "Number of rows"
  }

  measure: distinct_providers {
    type: count_distinct
    sql: ${provider_id} ;;
    description: "Distinct provider_id count"
  }

  measure: emergency_services_yes_count {
    type: count
    filters: [emergency_services: "yes"]
    label: "Emergency services (yes)"
  }

  measure: meets_interoperability_yes_count {
    type: count
    filters: [meets_criteria_for_promoting_interoperability_of_ehrs: "yes"]
    label: "Meets interoperability criteria (yes)"
  }

  # Numeric sum measures for fields that represent counts but are stored as strings in the source.
  measure: sum_mortality_group_measure_count {
    type: number
    sql: SUM(SAFE_CAST(${TABLE}.mortality_group_measure_count AS INT64)) ;;
    label: "Sum of Mortality group measure count"
  }

  measure: sum_facility_mortaility_measures_count {
    type: number
    sql: SUM(SAFE_CAST(${TABLE}.facility_mortaility_measures_count AS INT64)) ;;
    label: "Sum of facility mortality measures count"
  }

  measure: sum_mortality_measures_better_count {
    type: number
    sql: SUM(SAFE_CAST(${TABLE}.mortality_measures_better_count AS INT64)) ;;
  }

  measure: sum_mortality_measures_no_different_count {
    type: number
    sql: SUM(SAFE_CAST(${TABLE}.mortality_measures_no_different_count AS INT64)) ;;
  }

  measure: sum_mortality_measures_worse_count {
    type: number
    sql: SUM(SAFE_CAST(${TABLE}.mortality_measures_worse_count AS INT64)) ;;
  }

  measure: sum_safety_measures_count {
    type: number
    sql: SUM(SAFE_CAST(${TABLE}.safety_measures_count AS INT64)) ;;
  }

  measure: sum_facility_care_safety_measures_count {
    type: number
    sql: SUM(SAFE_CAST(${TABLE}.facility_care_safety_measures_count AS INT64)) ;;
  }

  measure: sum_safety_measures_better_count {
    type: number
    sql: SUM(SAFE_CAST(${TABLE}.safety_measures_better_count AS INT64)) ;;
  }

  measure: sum_safety_measures_no_different_count {
    type: number
    sql: SUM(SAFE_CAST(${TABLE}.safety_measures_no_different_count AS INT64)) ;;
  }

  measure: sum_safety_measures_worse_count {
    type: number
    sql: SUM(SAFE_CAST(${TABLE}.safety_measures_worse_count AS INT64)) ;;
  }

  measure: sum_readmission_measures_count {
    type: number
    sql: SUM(SAFE_CAST(${TABLE}.readmission_measures_count AS INT64)) ;;
  }

  measure: sum_facility_readmission_measures_count {
    type: number
    sql: SUM(SAFE_CAST(${TABLE}.facility_readmission_measures_count AS INT64)) ;;
  }

  measure: sum_readmission_measures_better_count {
    type: number
    sql: SUM(SAFE_CAST(${TABLE}.readmission_measures_better_count AS INT64)) ;;
  }

  measure: sum_readmission_measures_no_different_count {
    type: number
    sql: SUM(SAFE_CAST(${TABLE}.readmission_measures_no_different_count AS INT64)) ;;
  }

  measure: sum_readmission_measures_worse_count {
    type: number
    sql: SUM(SAFE_CAST(${TABLE}.readmission_measures_worse_count AS INT64)) ;;
  }

  measure: sum_patient_experience_measures_count {
    type: number
    sql: SUM(SAFE_CAST(${TABLE}.patient_experience_measures_count AS INT64)) ;;
  }

  measure: sum_facility_patient_experience_measures_count {
    type: number
    sql: SUM(SAFE_CAST(${TABLE}.facility_patient_experience_measures_count AS INT64)) ;;
  }

  measure: sum_timely_and_effective_care_measures_count {
    type: number
    sql: SUM(SAFE_CAST(${TABLE}.timely_and_effective_care_measures_count AS INT64)) ;;
  }

  measure: sum_facility_timely_and_effective_care_measures_count {
    type: number
    sql: SUM(SAFE_CAST(${TABLE}.facility_timely_and_effective_care_measures_count AS INT64)) ;;
  }

}
