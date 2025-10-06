view: hospice_providers_2014 {
  sql_table_name: `bigquery-public-data.cms_medicare.hospice_providers_2014` ;;

  # Dimensions
  dimension: provider_id {
    type: string
    sql: ${TABLE}.provider_id ;;
    primary_key: yes
    description: "The 6-digit identification number for the hospice provider on the claim."
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
    description: "The hospice provider name, as reported in the POS file."
  }

  dimension: street_address {
    type: string
    sql: ${TABLE}.street_address ;;
    description: "The hospice provider address, as reported in the POS file."
  }

  dimension: city {
    type: string
    sql: ${TABLE}.city ;;
    description: "The city where the hospice provider is located, as reported in the POS file."
  }

  dimension: state {
    type: string
    sql: ${TABLE}.state ;;
    description: "The state where the hospice is located, as reported in the POS file. The fifty U.S. states, the District of Columbia and Puerto Rico are reported by the state postal abbreviation."
  }

  dimension: zip_code {
    type: number
    sql: ${TABLE}.zip_code ;;
    description: "The hospice provider zip code, as reported in the POS file."
  }

  dimension: hrr {
    type: string
    sql: ${TABLE}.hrr ;;
    description: "The Hospital Referral Region the hospice provider is located, based on provider ZIP code."
  }

  dimension: hospice_beneficiaries {
    type: number
    sql: ${TABLE}.hospice_beneficiaries ;;
    description: "Number of distinct Medicare beneficiaries receiving at least one day of hospice care in the calendar year."
  }

  dimension: total_days {
    type: number
    sql: ${TABLE}.total_days ;;
    description: "Total count of hospice care days provided in the calendar year. Includes first and last day of care."
  }

  dimension: total_medicare_payment_amount {
    type: number
    sql: ${TABLE}.total_medicare_payment_amount ;;
    description: "Total amount that Medicare paid for hospice care."
  }

  dimension: total_medicare_standard_payment_amount {
    type: number
    sql: ${TABLE}.total_medicare_standard_payment_amount ;;
    description: "Total amount that Medicare paid for hospice care adjusted for geographic differences in payment rates."
  }

  dimension: total_charge_amount {
    type: number
    sql: ${TABLE}.total_charge_amount ;;
    description: "Total charges that hospice providers submitted for hospice care."
  }

  dimension: percent_routine_home_care_days {
    type: number
    sql: ${TABLE}.percent_routine_home_care_days ;;
    description: "Percent of total number of hospice days that were routine home care (RHC) days."
  }

  dimension: physician_services {
    type: number
    sql: ${TABLE}.physician_services ;;
    description: "Total number of hospice care physician services provided."
  }

  dimension: home_health_visit_hours_per_day {
    type: number
    sql: ${TABLE}.home_health_visit_hours_per_day ;;
    value_format_name: "decimal_2"
    description: "Average number of hours per day of home health hospice care provided."
  }

  dimension: skilled_nursing_visit_hours_per_day {
    type: number
    sql: ${TABLE}.skilled_nursing_visit_hours_per_day ;;
    value_format_name: "decimal_2"
    description: "Average number of hours per day of skilled nursing hospice care provided."
  }

  dimension: social_service_visit_hours_per_day {
    type: number
    sql: ${TABLE}.social_service_visit_hours_per_day ;;
    value_format_name: "decimal_2"
    description: "Average number of hours per day of social services hospice care provided."
  }

  dimension: total_live_discharges {
    type: number
    sql: ${TABLE}.total_live_discharges ;;
    description: "Number of distinct Medicare beneficiaries with live discharges from hospice care."
  }

  dimension: hospice_beneficiaries_with_seven_or_fewer_hospice_care_days {
    type: number
    sql: ${TABLE}.hospice_beneficiaries_with_seven_or_fewer_hospice_care_days ;;
    description: "Number of distinct Medicare beneficiaries with 7 or fewer hospice care days in CY2014."
  }

  dimension: hospice_beneficiaries_with_more_than_sixty_hospice_care_days {
    type: number
    sql: ${TABLE}.hospice_beneficiaries_with_more_than_sixty_hospice_care_days ;;
    description: "Number of distinct Medicare beneficiaries with more than 60 hospice care days in CY2014."
  }

  dimension: hospice_beneficiaries_with_more_than_one_hundred_eighty_hospice_care_days {
    type: number
    sql: ${TABLE}.hospice_beneficiaries_with_more_than_one_hundred_eighty_hospice_care_days ;;
    description: "Number of distinct Medicare beneficiaries with more than 180 hospice care days in CY2014."
  }

  dimension: home_health_visit_hours_per_day_during_week_prior_to_death {
    type: number
    sql: ${TABLE}.home_health_visit_hours_per_day_during_week_prior_to_death ;;
    value_format_name: "decimal_2"
    description: "Average hours per day of home health hospice care during the seven days prior to death."
  }

  dimension: skilled_nursing_visit_hours_per_day_during_week_prior_to_death {
    type: number
    sql: ${TABLE}.skilled_nursing_visit_hours_per_day_during_week_prior_to_death ;;
    value_format_name: "decimal_2"
    description: "Average hours per day of skilled nursing hospice care during the seven days prior to death."
  }

  dimension: social_service_visit_hours_per_day_during_week_prior_to_death {
    type: number
    sql: ${TABLE}.social_service_visit_hours_per_day_during_week_prior_to_death ;;
    value_format_name: "decimal_2"
    description: "Average hours per day of social services hospice care during the seven days prior to death."
  }

  dimension: average_age {
    type: number
    sql: ${TABLE}.average_age ;;
    value_format_name: "decimal_2"
    description: "Average age of Medicare beneficiaries using hospice care in CY2014."
  }

  dimension: male_hospice_beneficiaries { type: number sql: ${TABLE}.male_hospice_beneficiaries ;; description: "Number of distinct male Medicare beneficiaries receiving at least one day of hospice care in the calendar year." }

  dimension: female_hospice_beneficiaries { type: number sql: ${TABLE}.female_hospice_beneficiaries ;; description: "Number of distinct female Medicare beneficiaries receiving at least one day of hospice care in the calendar year." }

  dimension: white_hospice_beneficiaries { type: number sql: ${TABLE}.white_hospice_beneficiaries ;; description: "Number of distinct white Medicare beneficiaries receiving at least one day of hospice care in the calendar year." }

  dimension: black_hospice_beneficiaries { type: number sql: ${TABLE}.black_hospice_beneficiaries ;; description: "Number of distinct black Medicare beneficiaries receiving at least one day of hospice care in the calendar year." }

  dimension: asian_hospice_beneficiaries { type: number sql: ${TABLE}.asian_hospice_beneficiaries ;; description: "Number of distinct Asian Medicare beneficiaries receiving at least one day of hospice care in the calendar year." }

  dimension: hispanic_hospice_beneficiaries { type: number sql: ${TABLE}.hispanic_hospice_beneficiaries ;; description: "Number of distinct Hispanic Medicare beneficiaries receiving at least one day of hospice care in the calendar year." }

  dimension: other_unknown_race_hospice_beneficiaries { type: number sql: ${TABLE}.other_unknown_race_hospice_beneficiaries ;; description: "Number of distinct Medicare beneficiaries of other/unknown race receiving at least one day of hospice care in the calendar year." }

  dimension: medicare_advantage_hospice_beneficiaries { type: number sql: ${TABLE}.medicare_advantage_hospice_beneficiaries ;; description: "Number of distinct Medicare beneficiaries enrolled in Medicare Advantage for at least one month and receiving at least one day of hospice care in the calendar year." }

  dimension: medicaid_eligible_hospice_beneficiaries { type: number sql: ${TABLE}.medicaid_eligible_hospice_beneficiaries ;; description: "Number of distinct Medicare beneficiaries eligible for Medicaid for at least one month and receiving at least one day of hospice care in the calendar year." }

  dimension: hospice_beneficiaries_with_a_primary_diagnosis_of_cancer { type: number sql: ${TABLE}.hospice_beneficiaries_with_a_primary_diagnosis_of_cancer ;; description: "Number of distinct Medicare beneficiaries receiving hospice care for a primary diagnosis of cancer." }

  dimension: hospice_beneficiaries_with_a_primary_diagnosis_of_dementia { type: number sql: ${TABLE}.hospice_beneficiaries_with_a_primary_diagnosis_of_dementia ;; description: "Number of distinct Medicare beneficiaries receiving hospice care for a primary diagnosis of dementia." }

  dimension: hospice_beneficiaries_with_a_primary_diagnosis_of_stroke { type: number sql: ${TABLE}.hospice_beneficiaries_with_a_primary_diagnosis_of_stroke ;; description: "Number of distinct Medicare beneficiaries receiving hospice care for a primary diagnosis of stroke." }

  dimension: hospice_beneficiaries_with_a_primary_diagnosis_of_circulatory_heart_disease { type: number sql: ${TABLE}.hospice_beneficiaries_with_a_primary_diagnosis_of_circulatory_heart_disease ;; description: "Number of distinct Medicare beneficiaries receiving hospice care for a primary diagnosis of circulatory/heart disease." }

  dimension: hospice_beneficiaries_with_a_primary_diagnosis_of_respiratory_disease { type: number sql: ${TABLE}.hospice_beneficiaries_with_a_primary_diagnosis_of_respiratory_disease ;; description: "Number of distinct Medicare beneficiaries receiving hospice care for a primary diagnosis of respiratory disease." }

  dimension: hospice_beneficiaries_with_other_primary_diagnoses { type: number sql: ${TABLE}.hospice_beneficiaries_with_other_primary_diagnoses ;; description: "Number of distinct Medicare beneficiaries receiving hospice care for a primary diagnosis other than cancer, dementia, circulatory/heart, stroke, or respiratory." }

  dimension: site_of_service_home_hospice_beneficiaries { type: number sql: ${TABLE}.site_of_service_home_hospice_beneficiaries ;; description: "Number of distinct Medicare beneficiaries receiving the majority of their hospice care days at home." }

  dimension: site_of_service_assisted_living_facility_hospice_beneficiaries { type: number sql: ${TABLE}.site_of_service_assisted_living_facility_hospice_beneficiaries ;; description: "Number of distinct Medicare beneficiaries receiving the majority of their hospice care days in an assisted living facility." }

  dimension: site_of_service_long_term_care_or_non_skilled_nursing_facility_hospice_beneficiaries { type: number sql: ${TABLE}.site_of_service_long_term_care_or_non_skilled_nursing_facility_hospice_beneficiaries ;; description: "Number of distinct Medicare beneficiaries receiving the majority of their hospice care days in a long term care or non-skilled nursing facility." }

  dimension: site_of_service_skilled_nursing_facility_hospice_beneficiaries { type: number sql: ${TABLE}.site_of_service_skilled_nursing_facility_hospice_beneficiaries ;; description: "Number of distinct Medicare beneficiaries receiving the majority of their hospice care days in a skilled nursing facility." }

  dimension: site_of_service_inpatient_hospital_hospice_beneficiaries { type: number sql: ${TABLE}.site_of_service_inpatient_hospital_hospice_beneficiaries ;; description: "Number of distinct Medicare beneficiaries receiving the majority of their hospice care days in an inpatient hospital." }

  dimension: site_of_service_inpatient_hospice_hospice_beneficiaries { type: number sql: ${TABLE}.site_of_service_inpatient_hospice_hospice_beneficiaries ;; description: "Number of distinct Medicare beneficiaries receiving the majority of their hospice care days in an inpatient hospice facility." }

  dimension: site_of_service_other_facility_hospice_beneficiaries { type: number sql: ${TABLE}.site_of_service_other_facility_hospice_beneficiaries ;; description: "Number of distinct Medicare beneficiaries receiving the majority of their hospice care days in other facilities." }

  # Measures
  measure: row_count { type: count description: "Total rows" }

  measure: unique_providers { type: count_distinct sql: ${TABLE}.provider_id ;; description: "Distinct provider_id count" }

  # Sums for integer columns (use SAFE_CAST in case of unexpected types)
  measure: sum_hospice_beneficiaries { type: sum sql: SAFE_CAST(${TABLE}.hospice_beneficiaries AS INT64) ;; value_format_name: "decimal_0" }
  measure: sum_total_days { type: sum sql: SAFE_CAST(${TABLE}.total_days AS INT64) ;; value_format_name: "decimal_0" }
  measure: sum_total_medicare_payment_amount { type: sum sql: SAFE_CAST(${TABLE}.total_medicare_payment_amount AS INT64) ;; value_format_name: "usd" }
  measure: sum_total_medicare_standard_payment_amount { type: sum sql: SAFE_CAST(${TABLE}.total_medicare_standard_payment_amount AS INT64) ;; value_format_name: "usd" }
  measure: sum_total_charge_amount { type: sum sql: SAFE_CAST(${TABLE}.total_charge_amount AS INT64) ;; value_format_name: "usd" }
  measure: sum_physician_services { type: sum sql: SAFE_CAST(${TABLE}.physician_services AS INT64) ;; value_format_name: "decimal_0" }
  measure: sum_total_live_discharges { type: sum sql: SAFE_CAST(${TABLE}.total_live_discharges AS INT64) ;; value_format_name: "decimal_0" }

  # Demographic sums
  measure: sum_male_hospice_beneficiaries { type: sum sql: SAFE_CAST(${TABLE}.male_hospice_beneficiaries AS INT64) ;; value_format_name: "decimal_0" }
  measure: sum_female_hospice_beneficiaries { type: sum sql: SAFE_CAST(${TABLE}.female_hospice_beneficiaries AS INT64) ;; value_format_name: "decimal_0" }
  measure: sum_white_hospice_beneficiaries { type: sum sql: SAFE_CAST(${TABLE}.white_hospice_beneficiaries AS INT64) ;; value_format_name: "decimal_0" }
  measure: sum_black_hospice_beneficiaries { type: sum sql: SAFE_CAST(${TABLE}.black_hospice_beneficiaries AS INT64) ;; value_format_name: "decimal_0" }
  measure: sum_asian_hospice_beneficiaries { type: sum sql: SAFE_CAST(${TABLE}.asian_hospice_beneficiaries AS INT64) ;; value_format_name: "decimal_0" }
  measure: sum_hispanic_hospice_beneficiaries { type: sum sql: SAFE_CAST(${TABLE}.hispanic_hospice_beneficiaries AS INT64) ;; value_format_name: "decimal_0" }
  measure: sum_other_unknown_race_hospice_beneficiaries { type: sum sql: SAFE_CAST(${TABLE}.other_unknown_race_hospice_beneficiaries AS INT64) ;; value_format_name: "decimal_0" }

  # Averages for float/hour fields
  measure: avg_home_health_visit_hours_per_day { type: average sql: SAFE_CAST(${TABLE}.home_health_visit_hours_per_day AS FLOAT64) ;; value_format_name: "decimal_2" }
  measure: avg_skilled_nursing_visit_hours_per_day { type: average sql: SAFE_CAST(${TABLE}.skilled_nursing_visit_hours_per_day AS FLOAT64) ;; value_format_name: "decimal_2" }
  measure: avg_social_service_visit_hours_per_day { type: average sql: SAFE_CAST(${TABLE}.social_service_visit_hours_per_day AS FLOAT64) ;; value_format_name: "decimal_2" }
  measure: avg_home_health_visit_hours_per_day_during_week_prior_to_death { type: average sql: SAFE_CAST(${TABLE}.home_health_visit_hours_per_day_during_week_prior_to_death AS FLOAT64) ;; value_format_name: "decimal_2" }
  measure: avg_skilled_nursing_visit_hours_per_day_during_week_prior_to_death { type: average sql: SAFE_CAST(${TABLE}.skilled_nursing_visit_hours_per_day_during_week_prior_to_death AS FLOAT64) ;; value_format_name: "decimal_2" }
  measure: avg_social_service_visit_hours_per_day_during_week_prior_to_death { type: average sql: SAFE_CAST(${TABLE}.social_service_visit_hours_per_day_during_week_prior_to_death AS FLOAT64) ;; value_format_name: "decimal_2" }
  measure: avg_average_age { type: average sql: SAFE_CAST(${TABLE}.average_age AS FLOAT64) ;; value_format_name: "decimal_2" }

  # Percent/ratio measures
  measure: avg_percent_routine_home_care_days { type: average sql: SAFE_CAST(${TABLE}.percent_routine_home_care_days AS FLOAT64) ;; value_format_name: "percent_2" description: "Average percent of days that were routine home care" }

}
