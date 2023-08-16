- dashboard: ob_to_l_2gai
  title: OB_to_L_2GAI
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  preferred_slug: NhlJKowj9GUObT8Xu3NObh
  elements:
  - title: Bar Chart
    name: Bar Chart
    model: OB_TO_L_1GAI
    explore: od_monthly_bookings_agg_1GAI
    type: looker_column
    fields: [OD_GDS_1GAI.GDS_Code, od_monthly_bookings_agg_1GAI.Passenger_Count_M]
    filters: {}
    sorts: [od_monthly_bookings_agg_1GAI.Passenger_Count_M desc 0]
    limit: 500
    column_limit: 50
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    show_row_numbers: true
    transpose: false
    truncate_text: true
    truncate_header: false
    size_to_fit: true
    minimum_column_width: 75
    series_cell_visualizations:
      od_monthly_bookings_agg_1GAI.Passenger_Count_M:
        is_active: false
    table_theme: white
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    hide_totals: false
    hide_row_totals: false
    defaults_version: 1
    listen:
      Departure Date Key: od_monthly_bookings_agg_1GAI.Departure_Date_key
    row: 0
    col: 0
    width: 13
    height: 8
  - title: Pie chart
    name: Pie chart
    model: OB_TO_L_1GAI
    explore: od_monthly_bookings_agg_1GAI
    type: looker_pie
    fields: [OD_GDS_1GAI.GDS_Code, od_monthly_bookings_agg_1GAI.Passenger_Count_M]
    filters: {}
    sorts: [od_monthly_bookings_agg_1GAI.Passenger_Count_M desc 0]
    limit: 500
    column_limit: 50
    value_labels: legend
    label_type: labPer
    defaults_version: 1
    listen:
      Departure Date Key: od_monthly_bookings_agg_1GAI.Departure_Date_key
    row: 0
    col: 13
    width: 11
    height: 8
  filters:
  - name: Departure Date Key
    title: Departure Date Key
    type: field_filter
    default_value: 1 months
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
    model: OB_TO_L_1GAI
    explore: od_monthly_bookings_agg_1GAI
    listens_to_filters: []
    field: od_monthly_bookings_agg_1GAI.Departure_Date_key
