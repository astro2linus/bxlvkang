class Chart.BarChart
  constructor: (opts)->
    @dom_id = opts.dom_id
    @data   = opts.data
    @title  = opts.title

  render: () ->
    new Highcharts.Chart
      chart:
        renderTo: @dom_id
        type: "bar"

      title:
        text: @title

      subtitle:
        text: "for each initiative"

      xAxis:
        categories: [
          "Africa"
          "America"
          "Asia"
          "Europe"
          "Oceania"
        ]
        title:
          text: null

      yAxis:
        min: 0
        title:
          text: "Population (millions)"
          align: "high"

        labels:
          overflow: "justify"

      tooltip:
        valueSuffix: " millions"

      plotOptions:
        bar:
          dataLabels:
            enabled: true

      legend:
        layout: "vertical"
        align: "right"
        verticalAlign: "top"
        x: -40
        y: 100
        floating: true
        borderWidth: 1
        backgroundColor: "#FFFFFF"
        shadow: true

      credits:
        enabled: false

      series: [
        {
          name: "Year 1800"
          data: [
            107
            31
            635
            203
            2
          ]
        }
        {
          name: "Year 1900"
          data: [
            133
            156
            947
            408
            6
          ]
        }
        {
          name: "Year 2008"
          data: [
            973
            914
            4054
            732
            34
          ]
        }
      ]