- explore:  live_threaduser
- view: live_threaduser
  sql_table_name: public.live_threaduser
  fields:

  - dimension_group: createdat
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.createdat

  - dimension: glideid
    sql: ${TABLE}.glideid

  - dimension_group: hotupdatedat
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.hotupdatedat

  - dimension: isactive
    type: yesno
    sql: ${TABLE}.isactive

  - dimension: iscelebthread
    type: yesno
    sql: ${TABLE}.iscelebthread

  - dimension: threadid
    # hidden: true
    sql: ${TABLE}.threadid

  - measure: count
    type: count
    drill_fields: [thread.threadid]

