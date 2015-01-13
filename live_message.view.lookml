- explore: live_message
- view: live_message
  sql_table_name: live_message
  fields:

  - dimension_group: createdat
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.createdat

  - dimension: cv
    sql: ${TABLE}.cv

  - dimension: flixwagonsessionid
    sql: ${TABLE}.flixwagonsessionid

  - dimension_group: hiddentime
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.hiddentime

  - dimension_group: hotupdatedat
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.hotupdatedat

  - dimension: isforwarded
    type: yesno
    sql: ${TABLE}.isforwarded

  - dimension: isshoutout
    type: yesno
    sql: ${TABLE}.isshoutout

  - dimension: issystemgenerated
    type: yesno
    sql: ${TABLE}.issystemgenerated

  - dimension: isviewed
    type: yesno
    sql: ${TABLE}.isviewed

  - dimension: mctype
    type: int
    sql: ${TABLE}.mctype

  - dimension: messageid
    # hidden: true
    sql: ${TABLE}.messageid

  - dimension: messagetype
    type: number
    sql: ${TABLE}.messagetype

  - dimension: os
    sql: ${TABLE}.os

  - dimension: recipientid
    sql: ${TABLE}.recipientid

  - dimension: senderid
    sql: ${TABLE}.senderid

  - dimension: textcontent
    sql: ${TABLE}.textcontent

  - dimension: textlength
    type: number
    sql: ${TABLE}.textlength

  - dimension: threadid
    # hidden: true
    sql: ${TABLE}.threadid

  - dimension: videoserver
    sql: ${TABLE}.videoserver

  - measure: count
    type: count
    drill_fields: [thread.threadid, message.messageid]

