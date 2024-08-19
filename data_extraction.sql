SELECT
  CONCAT(
    CAST(user_pseudo_id AS STRING),
    '-',
    CAST(
      (SELECT value.int_value FROM UNNEST(event_params) WHERE key = 'ga_session_id') AS STRING
    )
  ) AS user_session_id,
  event_date,
  event_timestamp,
  user_pseudo_id,
  (SELECT value.int_value FROM UNNEST(event_params) WHERE key = 'ga_session_id') AS session_id,
  event_name,
  geo.country,
  device.category AS device_category,
  traffic_source.source,
  traffic_source.medium,
  traffic_source.name AS campaign,
  (SELECT value.int_value FROM UNNEST(event_params) WHERE key = 'engagement_time_msec') AS engagement_time_msec,
  (SELECT value.string_value FROM UNNEST(event_params) WHERE key = 'page_location') AS page_location
FROM `bigquery-public-data.ga4_obfuscated_sample_ecommerce.events_*`
WHERE EXTRACT(YEAR FROM TIMESTAMP_MICROS(event_timestamp)) = 2021;
