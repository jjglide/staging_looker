- explore: client_events
- view: client_events
  sql_table_name: public.client_events
  fields:

  - dimension: action
    type: number
    sql: ${TABLE}.action

  - dimension_group: action
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.action_time

  - dimension: deviceid
    sql: ${TABLE}.deviceid

  - dimension_group: foregroundms
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.foregroundms

  - dimension: glideid
    sql: ${TABLE}.glideid

  - dimension: num1
    type: int
    sql: ${TABLE}.num1

  - dimension: num2
    type: int
    sql: ${TABLE}.num2

  - dimension: os
    sql: ${TABLE}.os

  - dimension: sessionid
    sql: ${TABLE}.sessionid

  - dimension: var1
    sql: ${TABLE}.var1

  - dimension: var2
    sql: ${TABLE}.var2

  - measure: count
    type: count
    drill_fields: []

