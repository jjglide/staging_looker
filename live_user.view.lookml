- explore: live_user
- view: live_user
  sql_table_name: public.live_user
  fields:

  - dimension: celebpin
    sql: ${TABLE}.celebpin

  - dimension_group: createdat
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.createdat

  - dimension: firstname
    sql: ${TABLE}.firstname

  - dimension: gender
    sql: ${TABLE}.gender

  - dimension: glideid
    primary_key:  true
    sql: ${TABLE}.glideid

  - dimension_group: hotupdatedat
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.hotupdatedat

  - dimension: isdeleted
    type: yesno
    sql: ${TABLE}.isdeleted

  - dimension: isfacebook
    type: yesno
    sql: ${TABLE}.isfacebook

  - dimension: isregistered
    type: yesno
    sql: ${TABLE}.isregistered

  - dimension: lastname
    sql: ${TABLE}.lastname

  - dimension: os
    sql: ${TABLE}.os

  - dimension: phone
    sql: ${TABLE}.phone

  - dimension: pin
    sql: ${TABLE}.pin

  - dimension_group: registeredat
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.registeredat

  - measure: count
    type: count
    drill_fields: [firstname, lastname]

