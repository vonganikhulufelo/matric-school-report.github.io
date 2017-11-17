class VisitorsController < ApplicationController
  def index
  	@reports = Report.search(params[:search])
  end

  def show
  	@report = Report.find(params[:id])
   failure_rate = []
    failure_rate.push({:label => "2014", :value => @report.failure_rate.round(2)},{:label => "2015", :value => @report.failure_rate2015.round(2)},{:label => "2016", :value => @report.failure_rate2016.round(2)})

    @chart = Fusioncharts::Chart.new({
    :height => 400,
    :width => 600,
    :type => 'Column2D',
    :renderAt => 'chart-container',
    :dataSource => {
        :chart => {
            :caption => 'Top 10 Most Populous City in selected Country',
            :xAxisname => 'Quarter',
            :yAxisName => 'Amount (%)',
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
  end
end
