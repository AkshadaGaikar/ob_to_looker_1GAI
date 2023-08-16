view: od_monthly_bookings_agg_1GAI  {
  sql_table_name: `MIDT_CONSUMPTION.OD_MONTHLY_BOOKINGS_AGG` ;;

  dimension: GDS_ID {
    type: string
    primary_key: yes
    sql: ${TABLE}.GDS_ID ;;
    hidden: no
  }

  dimension: Departure_Date_key {
    type: date
    primary_key: no
    sql: Cast(${TABLE}.DEPARTURE_DATE as Timestamp);;
    hidden: no
  }

  dimension: Airport_Pair_Dir {
    type: string
    hidden: yes
    sql: ${TABLE}.AIRPORT_PAIR_DIR ;;
  }

  dimension: Passenger_Count {
    type: number
    primary_key: no
    sql: ${TABLE}.PASSENGER_COUNT ;;
    hidden: no
  }

  measure: Passenger_Count_M {
    type: sum
    sql: ${Passenger_Count} ;;
  }

}
