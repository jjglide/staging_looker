- explore: thread_events
- view: thread_events
  sql_table_name: public.thread_events
  fields:

  - dimension_group: dttm
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.dttm

  - dimension: message_type
    sql_case:
       returning user push : ${TABLE}.message_type=1
       missed message : ${TABLE}.message_type=2
       missed sms : ${TABLE}.message_type=3
       is watching push : ${TABLE}.message_type=4
       clearing a thread : ${TABLE}.message_type=5
       left one to one : ${TABLE}.message_type=6
       
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

