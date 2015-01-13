- view: users
  sql_table_name: public.users
  fields:

  - dimension: _id
    sql: ${TABLE}._id

  - dimension: createdat
    type: number
    sql: ${TABLE}.createdat

  - dimension: fb_birthdaydate
    sql: ${TABLE}.fb_birthdaydate

  - dimension: fb_email
    sql: ${TABLE}.fb_email

  - dimension: fb_expires
    sql: ${TABLE}.fb_expires

  - dimension: fb_gender
    sql: ${TABLE}.fb_gender

  - dimension: fb_id
    sql: ${TABLE}.fb_id

  - dimension: fb_namefirst
    sql: ${TABLE}.fb_namefirst

  - dimension: fb_namefull
    sql: ${TABLE}.fb_namefull

  - dimension: fb_namelast
    sql: ${TABLE}.fb_namelast

  - dimension: fb_picurl
    sql: ${TABLE}.fb_picurl

  - dimension: fb_updatedtime
    sql: ${TABLE}.fb_updatedtime

  - dimension: fb_username
    sql: ${TABLE}.fb_username

  - dimension: glide_celeb
    sql: ${TABLE}.glide_celeb

  - dimension: glide_email
    sql: ${TABLE}.glide_email

  - dimension: glide_gender
    sql: ${TABLE}.glide_gender

  - dimension: glide_lang
    sql: ${TABLE}.glide_lang

  - dimension: glide_namefirst
    sql: ${TABLE}.glide_namefirst

  - dimension: glide_namelast
    sql: ${TABLE}.glide_namelast

  - dimension: glide_phone
    sql: ${TABLE}.glide_phone

  - dimension: glide_picurl
    sql: ${TABLE}.glide_picurl

  - dimension: glide_pin
    sql: ${TABLE}.glide_pin

  - dimension: inviteeid
    sql: ${TABLE}.inviteeid

  - dimension: invites_sent
    type: number
    sql: ${TABLE}.invites_sent

  - dimension: last_msg
    type: number
    sql: ${TABLE}.last_msg

  - dimension: registeredat
    type: number
    sql: ${TABLE}.registeredat

  - dimension: texts_sent
    type: number
    sql: ${TABLE}.texts_sent

  - dimension: user_age
    type: number
    sql: ${TABLE}.user_age

  - dimension: videos_sent
    type: number
    sql: ${TABLE}.videos_sent

  - measure: count
    type: count
    drill_fields: [fb_username, fbook.count]

