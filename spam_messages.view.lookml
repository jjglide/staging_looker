- explore: spam_messages
- view: spam_messages
  sql_table_name: public.spam_messages
  fields:

  - dimension: action
    type: number
    sql: ${TABLE}.action

  - dimension_group: action
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.action_time

  - dimension: content
    sql: ${TABLE}.content

  - dimension: message_type
    sql: ${TABLE}.message_type

  - dimension: recipient_id
    sql: ${TABLE}.recipient_id

  - dimension: sender_glide_id
    sql: ${TABLE}.sender_glide_id

  - measure: count
    type: count
    drill_fields: []

