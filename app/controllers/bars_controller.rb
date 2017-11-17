class BarsController < ApplicationController
  def index
    @report = Report.find(56028)
    data_array_1 = [1]
  
    pass_rate = []
    pass_rate.push({:label => "2014", :value => @report.pass_rate.round(2)},{:label => "2015", :value => @report.pass_rate2015.round(2)},{:label => "2016", :value => @report.pass_rate2016.round(2)})

    @chart = Fusioncharts::Chart.new({
    :height => 400,
    :width => 600,
    :type => 'Column2D',
    :renderAt => 'chart-container',
    :dataSource => {
        :chart => {
            :size => '600x400',
            :caption => @report.school_name,
            :subCaption => 'Averege Rate For Each Year',
            :xAxisname => 'Year',
            :yAxisName => 'Percentage (%)',
            :numbersuffix => '%',
            :theme => 'fint',
            :yaxismaxvalue => "100",
            :dataFormat => 'json',
            placevaluesinside: "1",
            rotatevalues: "90",
            divlinealpha: "50",
            plotfillalpha: "80",
            drawCrossLine: "1",
            crossLineColor: "#cc3300",
            crossLineAlpha: "100",
            },
        :data => pass_rate
        }
    })

    failure_rate = []
    failure_rate.push({:label => "2014", :value => @report.failure_rate.round(2)},{:label => "2015", :value => @report.failure_rate2015.round(2)},{:label => "2016", :value => @report.failure_rate2016.round(2)})

    @charts = Fusioncharts::Chart.new({
    :height => 400,
    :width => 600,
    :type => 'pie3D',
    :renderAt => 'chartcontainer',
    :dataSource => {
        :chart => {
            :size => '600x400',
            :caption => 'School Failure Rate For Each Year',
            :xAxisname => 'Year',
            :yAxisName => 'Percentage (%)',
            :numbersuffix => '%',
            :theme => 'fint',
            :yaxismaxvalue => "100",
            :dataFormat => 'json',
            placevaluesinside: "1",
            rotatevalues: "0",
            divlinealpha: "50",
            plotfillalpha: "80",
            drawCrossLine: "1",
            crossLineColor: "#cc3300",
            crossLineAlpha: "100",
            },
        :data => failure_rate
        }
    })

  	
  
	data_array_2 = [4, 2, 10, 4, 7, 4]

	@bar = Gchart.bar(
            :renderAt => 'ccontainer',
           
            :bar_colors => ['000000', '0088FF'],
            :title => "My Title",
            :bg => 'EFEFEF',
            :legend => ['first data set label', 'second data set label'],
            :data => [data_array_1],
            :filename => 'images/bar_chart.png',
            :stacked => false,
            :legend_position => 'bottom',
            :axis_with_labels => [['x'], ['y']],
            :max_value => 15,
            :min_value => 0,
            :axis_labels => [["A|B|C|D|E"]],
            )
  end
end
