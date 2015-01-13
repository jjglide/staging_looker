- explore: thread_events
- view: thread_events
  sql_table_name: public.thread_events
  fields:

  - dimension_group: dttm
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.dttm

  - dimension: message_type
    type: int
    sql: ${TABLE}.message_type

  - dimension: recipientid
    sql: ${TABLE}.recipientid

  - dimension: senderid
    sql: ${TABLE}.senderid

  - dimension: text_version_copy
    sql: ${TABLE}.text_version_copy

  - dimension: threadid
    sql: ${TABLE}.threadid

  - measure: count
    type: count
    drill_fields: []

