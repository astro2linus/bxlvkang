window.Chart = {}

$ ->
  @bar_chart = new Chart.BarChart({dom_id: 'user-chart', title: 'Totle Users', data: []})
  @bar_chart.render()

  @pie_chart = new Chart.PieChart({dom_id: 'sales-chart', title: 'Totle Sales', data: []})
  @pie_chart.render()

  @line_chart = new Chart.LineChart({dom_id: 'notes-chart', title: 'Totle Notes', data: []})
  @line_chart.render()

  $('#reporting-filter select').on 'change', (e)->
    $('form#reporting-filter').submit()