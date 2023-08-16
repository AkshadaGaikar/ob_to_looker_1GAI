connection:"midt_prod_connect"
include: "/View/**/*.view"

explore: od_monthly_bookings_agg_1GAI{
from: od_monthly_bookings_agg_1GAI

  join: OD_GDS_1GAI{
   type: left_outer
   sql_on: ${od_monthly_bookings_agg_1GAI.GDS_ID}=${OD_GDS_1GAI.GDS_ID} ;;
   sql_where: ${OD_GDS_1GAI.GDS_TYPE_CODE}='00' ;;
   relationship: many_to_one
 }

  join: OD_Market_1GAI{
   type: left_outer
   sql_on: ${od_monthly_bookings_agg_1GAI.Airport_Pair_Dir}=${OD_Market_1GAI.AIRPP_ID} ;;
   sql_where: ${OD_Market_1GAI.CLIENT_ID}=2 ;;
   relationship: many_to_one
 }
}