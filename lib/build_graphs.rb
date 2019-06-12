require "pi_charts"
require "sinatra"

require_relative "rubytimer.rb"
require_relative "my_methods.rb"

def build_graph
  @datapoints = [10, 100, 500, 1000, 1500, 2000, 3000, 3500,
                4000, 5000, 5500, 6000, 6500, 7000, 7500,
                8000, 8500, 9000, 9500, 10000]

  @results = []

  puts "Beginning stress tests, please wait..."

  # Flushing CPU
  Timer.time { 10000.my_reverse }

  # Building datasets
  @datapoints.each do |datapoint|
    temp_data = []
    10.times do
      Timer.time { datapoint.my_reverse }
      temp_data << Timer.elapsedTime
    end
    @results << (temp_data.sum / 10)
  end

  # Create a new line chart
  chart = PiCharts::Line.new

  # Add labels ( x values )
  chart.add_labels(["10", "100", "500", "1000", "1500", "2000", "3000", "3500",
                  "4000", "5000", "5500", "6000", "6500", "7000", "7500",
                  "8000", "8500", "9000", "9500", "10000"])

  # Add datasets
  chart.add_dataset(label: "Reverse", data: @results)

  # Neat 'lil configurations
  chart.hover
  chart.responsive

  # Generate html / js for chart
  "<head>" + chart.cdn + "</head>" + "<body>" + chart.html(width: 60) + "</body>"
end

get('/') { build_graph }