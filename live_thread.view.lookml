- explore: live_thread
- view: live_thread
  sql_table_name: live_thread
  fields:

  - dimension_group: createdat
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.createdat

  - dimension_group: hotupdatedat
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.hotupdatedat

  - dimension: threadid
    # hidden: true
    sql: ${TABLE}.threadid

  - dimension: threadname
    sql: ${TABLE}.threadname

  - dimension: threadtype
    type: number
    sql: ${TABLE}.threadtype

  - measure: count
    type: count
    drill_fields: [threadname, thread.threadid]

