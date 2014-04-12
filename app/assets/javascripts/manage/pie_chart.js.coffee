class Chart.PieChart
  constructor: (opts)->
    @dom_id = opts.dom_id
    @data   = opts.data
    @title  = opts.title

  render: () ->
    new Highcharts.Chart
      chart:
        renderTo: @dom_id
        type: 'pie'

      title:
        text: @title

      tooltip:
        pointFormat: "{series.name}: <b>{point.percentage:.1f}%</b>"

      plotOptions:
        pie:
          allowPointSelect: true
          cursor: "pointer"
          dataLabels:
            enabled: true
            color: "#000000"
            connectorColor: "#000000"
            format: "<b>{point.name}</b>: {point.percentage:.1f} %"

      series: [
        type: "pie"
        name: "Browser share"
        data: [
          [
            "Firefox"
            45.0
          ]
          [
            "IE"
            26.8
          ]
          {
            name: "Chrome"
            y: 12.8
            sliced: true
            selected: true
          }
          [
            "Safari"
            8.5
          ]
          [
            "Opera"
            6.2
          ]
          [
            "Others"
            0.7
          ]
        ]
      ]