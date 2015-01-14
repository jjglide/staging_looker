- explore: live_messagedetail
- view: live_messagedetail
  sql_table_name: public.live_messagedetail
  fields:

  - dimension_group: createdat
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.createdat

  - dimension: durationms
    type: int
    sql: ${TABLE}.durationms

  - dimension: flixwagonsessionid
    sql: ${TABLE}.flixwagonsessionid

  - dimension_group: hotupdatedat
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.hotupdatedat

  - measure: count
    type: count
    drill_fields: []

