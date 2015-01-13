- explore: kinesis_message_transactions
- view: kinesis_message_transactions
  sql_table_name: public.kinesis_message_transactions
  fields:

  - dimension: action
    type: number
    sql: ${TABLE}.action

  - dimension_group: action
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.action_time

  - dimension: camera_used
    type: int
    sql: ${TABLE}.camera_used

  - dimension: duration_played
    type: number
    sql: ${TABLE}.duration_played

  - dimension: filter_selected
    sql: ${TABLE}.filter_selected

  - dimension: mc_id
    sql: ${TABLE}.mc_id

  - dimension: message_id
    sql: ${TABLE}.message_id

  - dimension: message_type
    sql: ${TABLE}.message_type

  - dimension: network_type
    type: int
    sql: ${TABLE}.network_type

  - dimension: recipient_device_id
    sql: ${TABLE}.recipient_device_id

  - dimension: recipient_id
    sql: ${TABLE}.recipient_id

  - dimension: recipients_os
    sql: ${TABLE}.recipients_os

  - dimension: record_length
    type: number
    sql: ${TABLE}.record_length

  - dimension: record_type
    type: int
    sql: ${TABLE}.record_type

  - dimension: sender_device_id
    sql: ${TABLE}.sender_device_id

  - dimension: sender_id
    sql: ${TABLE}.sender_id

  - dimension: sender_os
    sql: ${TABLE}.sender_os

  - dimension: thread_id
    sql: ${TABLE}.thread_id

  - measure: count
    type: count
    drill_fields: []

