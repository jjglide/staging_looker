- view: threaduser
  sql_table_name: public.threaduser
  fields:

  - dimension_group: createdat
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.createdat

  - dimension: glideid
    sql: ${TABLE}.glideid

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

