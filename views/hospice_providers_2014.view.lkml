view: hospice_providers_2014 {
  label: "Hospice Providers 2014"
  description: "Mirror of bigquery-public-data.cms_medicare.hospice_providers_2014 — dimensions for each column and common measures."

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
    type: number
    sql: ${TABLE}.zip_code ;;
  }

  dimension: hrr {
    type: string
    sql: ${TABLE}.hrr ;;
    description: "Hospital Referral Region based on provider ZIP code."
  }

  dimension: hospice_beneficiaries {
    type: number
    sql: ${TABLE}.hospice_beneficiaries ;;
    description: "Number of distinct Medicare beneficiaries receiving at least one day of hospice care in the calendar year."
  }

  dimension: total_days {
    type: number
    sql: ${TABLE}.total_days ;;
  }

  dimension: total_medicare_payment_amount {
    type: number
    sql: ${TABLE}.total_medicare_payment_amount ;;
  }

  dimension: total_medicare_standard_payment_amount {
    type: number
    sql: ${TABLE}.total_medicare_standard_payment_amount ;;
  }

  dimension: total_charge_amount {
    type: number
    sql: ${TABLE}.total_charge_amount ;;
  }

  dimension: percent_routine_home_care_days {
    type: number
    sql: ${TABLE}.percent_routine_home_care_days ;;
  }

  dimension: physician_services {
    type: number
    sql: ${TABLE}.physician_services ;;
  }

  dimension: home_health_visit_hours_per_day {
    type: number
    sql: ${TABLE}.home_health_visit_hours_per_day ;;
  }

  dimension: skilled_nursing_visit_hours_per_day {
    type: number
    sql: ${TABLE}.skilled_nursing_visit_hours_per_day ;;
  }

  dimension: social_service_visit_hours_per_day {
    type: number
    sql: ${TABLE}.social_service_visit_hours_per_day ;;
  }

  dimension: total_live_discharges {
    type: number
    sql: ${TABLE}.total_live_discharges ;;
  }

  dimension: hospice_beneficiaries_with_seven_or_fewer_hospice_care_days {
    type: number
    sql: ${TABLE}.hospice_beneficiaries_with_seven_or_fewer_hospice_care_days ;;
  }

  dimension: hospice_beneficiaries_with_more_than_sixty_hospice_care_days {
    type: number
    sql: ${TABLE}.hospice_beneficiaries_with_more_than_sixty_hospice_care_days ;;
  }

  dimension: hospice_beneficiaries_with_more_than_one_hundred_eighty_hospice_care_days {
    type: number
    sql: ${TABLE}.hospice_beneficiaries_with_more_than_one_hundred_eighty_hospice_care_days ;;
  }

  dimension: home_health_visit_hours_per_day_during_week_prior_to_death {
    type: number
    sql: ${TABLE}.home_health_visit_hours_per_day_during_week_prior_to_death ;;
  }

  dimension: skilled_nursing_visit_hours_per_day_during_week_prior_to_death {
    type: number
    sql: ${TABLE}.skilled_nursing_visit_hours_per_day_during_week_prior_to_death ;;
  }

  dimension: social_service_visit_hours_per_day_during_week_prior_to_death {
    type: number
    sql: ${TABLE}.social_service_visit_hours_per_day_during_week_prior_to_death ;;
  }

  dimension: average_age {
    type: number
    sql: ${TABLE}.average_age ;;
    description: "Average age of Medicare beneficiaries using hospice care in CY2014."
  }

  dimension: male_hospice_beneficiaries {
    type: number
    sql: ${TABLE}.male_hospice_beneficiaries ;;
  }

  dimension: female_hospice_beneficiaries {
    type: number
    sql: ${TABLE}.female_hospice_beneficiaries ;;
  }

  dimension: white_hospice_beneficiaries {
    type: number
    sql: ${TABLE}.white_hospice_beneficiaries ;;
  }

  dimension: black_hospice_beneficiaries {
    type: number
    sql: ${TABLE}.black_hospice_beneficiaries ;;
  }

  dimension: asian_hospice_beneficiaries {
    type: number
    sql: ${TABLE}.asian_hospice_beneficiaries ;;
  }

  dimension: hispanic_hospice_beneficiaries {
    type: number
    sql: ${TABLE}.hispanic_hospice_beneficiaries ;;
  }

  dimension: other_unknown_race_hospice_beneficiaries {
    type: number
    sql: ${TABLE}.other_unknown_race_hospice_beneficiaries ;;
  }

  dimension: medicare_advantage_hospice_beneficiaries {
    type: number
    sql: ${TABLE}.medicare_advantage_hospice_beneficiaries ;;
  }

  dimension: medicaid_eligible_hospice_beneficiaries {
    type: number
    sql: ${TABLE}.medicaid_eligible_hospice_beneficiaries ;;
  }

  dimension: hospice_beneficiaries_with_a_primary_diagnosis_of_cancer {
    type: number
    sql: ${TABLE}.hospice_beneficiaries_with_a_primary_diagnosis_of_cancer ;;
  }

  dimension: hospice_beneficiaries_with_a_primary_diagnosis_of_dementia {
    type: number
    sql: ${TABLE}.hospice_beneficiaries_with_a_primary_diagnosis_of_dementia ;;
  }

  dimension: hospice_beneficiaries_with_a_primary_diagnosis_of_stroke {
    type: number
    sql: ${TABLE}.hospice_beneficiaries_with_a_primary_diagnosis_of_stroke ;;
  }

  dimension: hospice_beneficiaries_with_a_primary_diagnosis_of_circulatory_heart_disease {
    type: number
    sql: ${TABLE}.hospice_beneficiaries_with_a_primary_diagnosis_of_circulatory_heart_disease ;;
  }

  dimension: hospice_beneficiaries_with_a_primary_diagnosis_of_respiratory_disease {
    type: number
    sql: ${TABLE}.hospice_beneficiaries_with_a_primary_diagnosis_of_respiratory_disease ;;
  }

  dimension: hospice_beneficiaries_with_other_primary_diagnoses {
    type: number
    sql: ${TABLE}.hospice_beneficiaries_with_other_primary_diagnoses ;;
  }

  dimension: site_of_service_home_hospice_beneficiaries {
    type: number
    sql: ${TABLE}.site_of_service_home_hospice_beneficiaries ;;
  }

  dimension: site_of_service_assisted_living_facility_hospice_beneficiaries {
    type: number
    sql: ${TABLE}.site_of_service_assisted_living_facility_hospice_beneficiaries ;;
  }

  dimension: site_of_service_long_term_care_or_non_skilled_nursing_facility_hospice_beneficiaries {
    type: number
    sql: ${TABLE}.site_of_service_long_term_care_or_non_skilled_nursing_facility_hospice_beneficiaries ;;
  }

  dimension: site_of_service_skilled_nursing_facility_hospice_beneficiaries {
    type: number
    sql: ${TABLE}.site_of_service_skilled_nursing_facility_hospice_beneficiaries ;;
  }

  dimension: site_of_service_inpatient_hospital_hospice_beneficiaries {
    type: number
    sql: ${TABLE}.site_of_service_inpatient_hospital_hospice_beneficiaries ;;
  }

  dimension: site_of_service_inpatient_hospice_hospice_beneficiaries {
    type: number
    sql: ${TABLE}.site_of_service_inpatient_hospice_hospice_beneficiaries ;;
  }

  dimension: site_of_service_other_facility_hospice_beneficiaries {
    type: number
    sql: ${TABLE}.site_of_service_other_facility_hospice_beneficiaries ;;
  }

  # Measures
  measure: count {
    type: count
    description: "Number of rows"
  }

  measure: distinct_providers {
    type: count_distinct
    sql: ${provider_id} ;;
    description: "Distinct provider_id count"
  }

  # Sum measures for integer fields
  measure: sum_hospice_beneficiaries {
    type: sum
    sql: ${TABLE}.hospice_beneficiaries ;;
  }

  measure: sum_total_days { type: sum sql: ${TABLE}.total_days ;; }
  measure: sum_total_medicare_payment_amount { type: sum sql: ${TABLE}.total_medicare_payment_amount ;; }
  measure: sum_total_medicare_standard_payment_amount { type: sum sql: ${TABLE}.total_medicare_standard_payment_amount ;; }
  measure: sum_total_charge_amount { type: sum sql: ${TABLE}.total_charge_amount ;; }
  measure: sum_percent_routine_home_care_days { type: sum sql: ${TABLE}.percent_routine_home_care_days ;; }
  measure: sum_physician_services { type: sum sql: ${TABLE}.physician_services ;; }
  measure: sum_total_live_discharges { type: sum sql: ${TABLE}.total_live_discharges ;; }
  measure: sum_hospice_beneficiaries_with_seven_or_fewer_hospice_care_days { type: sum sql: ${TABLE}.hospice_beneficiaries_with_seven_or_fewer_hospice_care_days ;; }
  measure: sum_hospice_beneficiaries_with_more_than_sixty_hospice_care_days { type: sum sql: ${TABLE}.hospice_beneficiaries_with_more_than_sixty_hospice_care_days ;; }
  measure: sum_hospice_beneficiaries_with_more_than_one_hundred_eighty_hospice_care_days { type: sum sql: ${TABLE}.hospice_beneficiaries_with_more_than_one_hundred_eighty_hospice_care_days ;; }
  measure: sum_male_hospice_beneficiaries { type: sum sql: ${TABLE}.male_hospice_beneficiaries ;; }
  measure: sum_female_hospice_beneficiaries { type: sum sql: ${TABLE}.female_hospice_beneficiaries ;; }
  measure: sum_white_hospice_beneficiaries { type: sum sql: ${TABLE}.white_hospice_beneficiaries ;; }
  measure: sum_black_hospice_beneficiaries { type: sum sql: ${TABLE}.black_hospice_beneficiaries ;; }
  measure: sum_asian_hospice_beneficiaries { type: sum sql: ${TABLE}.asian_hospice_beneficiaries ;; }
  measure: sum_hispanic_hospice_beneficiaries { type: sum sql: ${TABLE}.hispanic_hospice_beneficiaries ;; }
  measure: sum_other_unknown_race_hospice_beneficiaries { type: sum sql: ${TABLE}.other_unknown_race_hospice_beneficiaries ;; }
  measure: sum_medicare_advantage_hospice_beneficiaries { type: sum sql: ${TABLE}.medicare_advantage_hospice_beneficiaries ;; }
  measure: sum_medicaid_eligible_hospice_beneficiaries { type: sum sql: ${TABLE}.medicaid_eligible_hospice_beneficiaries ;; }
  measure: sum_hospice_beneficiaries_with_a_primary_diagnosis_of_cancer { type: sum sql: ${TABLE}.hospice_beneficiaries_with_a_primary_diagnosis_of_cancer ;; }
  measure: sum_hospice_beneficiaries_with_a_primary_diagnosis_of_dementia { type: sum sql: ${TABLE}.hospice_beneficiaries_with_a_primary_diagnosis_of_dementia ;; }
  measure: sum_hospice_beneficiaries_with_a_primary_diagnosis_of_stroke { type: sum sql: ${TABLE}.hospice_beneficiaries_with_a_primary_diagnosis_of_stroke ;; }
  measure: sum_hospice_beneficiaries_with_a_primary_diagnosis_of_circulatory_heart_disease { type: sum sql: ${TABLE}.hospice_beneficiaries_with_a_primary_diagnosis_of_circulatory_heart_disease ;; }
  measure: sum_hospice_beneficiaries_with_a_primary_diagnosis_of_respiratory_disease { type: sum sql: ${TABLE}.hospice_beneficiaries_with_a_primary_diagnosis_of_respiratory_disease ;; }
  measure: sum_hospice_beneficiaries_with_other_primary_diagnoses { type: sum sql: ${TABLE}.hospice_beneficiaries_with_other_primary_diagnoses ;; }
  measure: sum_site_of_service_home_hospice_beneficiaries { type: sum sql: ${TABLE}.site_of_service_home_hospice_beneficiaries ;; }
  measure: sum_site_of_service_assisted_living_facility_hospice_beneficiaries { type: sum sql: ${TABLE}.site_of_service_assisted_living_facility_hospice_beneficiaries ;; }
  measure: sum_site_of_service_long_term_care_or_non_skilled_nursing_facility_hospice_beneficiaries { type: sum sql: ${TABLE}.site_of_service_long_term_care_or_non_skilled_nursing_facility_hospice_beneficiaries ;; }
  measure: sum_site_of_service_skilled_nursing_facility_hospice_beneficiaries { type: sum sql: ${TABLE}.site_of_service_skilled_nursing_facility_hospice_beneficiaries ;; }
  measure: sum_site_of_service_inpatient_hospital_hospice_beneficiaries { type: sum sql: ${TABLE}.site_of_service_inpatient_hospital_hospice_beneficiaries ;; }
  measure: sum_site_of_service_inpatient_hospice_hospice_beneficiaries { type: sum sql: ${TABLE}.site_of_service_inpatient_hospice_hospice_beneficiaries ;; }
  measure: sum_site_of_service_other_facility_hospice_beneficiaries { type: sum sql: ${TABLE}.site_of_service_other_facility_hospice_beneficiaries ;; }

  # Average measures for float fields
  measure: avg_home_health_visit_hours_per_day { type: average sql: ${TABLE}.home_health_visit_hours_per_day ;; }
  measure: avg_skilled_nursing_visit_hours_per_day { type: average sql: ${TABLE}.skilled_nursing_visit_hours_per_day ;; }
  measure: avg_social_service_visit_hours_per_day { type: average sql: ${TABLE}.social_service_visit_hours_per_day ;; }
  measure: avg_home_health_visit_hours_per_day_during_week_prior_to_death { type: average sql: ${TABLE}.home_health_visit_hours_per_day_during_week_prior_to_death ;; }
  measure: avg_skilled_nursing_visit_hours_per_day_during_week_prior_to_death { type: average sql: ${TABLE}.skilled_nursing_visit_hours_per_day_during_week_prior_to_death ;; }
  measure: avg_social_service_visit_hours_per_day_during_week_prior_to_death { type: average sql: ${TABLE}.social_service_visit_hours_per_day_during_week_prior_to_death ;; }
  measure: avg_average_age { type: average sql: ${TABLE}.average_age ;; }

}
