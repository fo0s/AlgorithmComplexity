require "pi_charts"
require "sinatra"
require "benchmark"

require_relative "rubytimer.rb"
require_relative "my_methods.rb"

def build_graph
  @datapoints = [1000, 5000, 10000, 15000, 20000, 25000, 30000, 35000,
                40000, 45000, 50000, 55000, 60000, 65000, 70000,
                75000, 80000, 85000, 90000, 95000, 100000]

  @methods = [ "my_reverse", "my_shuffle", "my_fib",
                "my_bubble_sort", "my_quick_sort" ]

  @my_reverse_results = []
  @my_shuffle_results = []
  @my_fib_results = []
  @my_bubble_results = []
  @my_quick_results = []

  # Building datasets

  # my_reverse integer
  @datapoints.each do |datapoint|
    temp_data = []
    20.times do
      Timer.time { datapoint.my_reverse }
      temp_data << Timer.elapsedTime
    end
    @my_reverse_results << (temp_data.shift(5).pop(5).sum / 10) * 100
  end

  # my_shuffle
  @datapoints.each do |datapoint|
    temp_data = []
    20.times do
      Timer.time { datapoint.my_shuffle }
      temp_data << Timer.elapsedTime
    end
    @my_shuffle_results << (temp_data.shift(5).pop(5).sum / 10) * 100
  end

  # my_fib
  @datapoints.each do |datapoint|
    temp_data = []
    20.times do
      Timer.time { datapoint.my_fib }
      temp_data << Timer.elapsedTime
    end
    @my_fib_results << (temp_data.shift(5).pop(5).sum / 10) / 100
  end

  # my_bubble_sort after my_shuffle

  @datapoints.each do |datapoint|
    temp_data = []
    20.times do
      data = datapoint.my_shuffle.to_s.split("")
      Timer.time { 
        data.my_bubble_sort }
        temp_data << Timer.elapsedTime
    end
    @my_bubble_results << (temp_data.shift(5).pop(5).sum / 10) * 100
  end

    @datapoints.each do |datapoint|
    temp_data = []
    20.times do
      data = datapoint.my_shuffle.to_s.split("")
      Timer.time { 
        data.my_quick_sort }
        temp_data << Timer.elapsedTime
    end
    @my_quick_results << (temp_data.shift(5).pop(5).sum / 10) * 100
  end

  # Create a new line chart
  chart = PiCharts::Line.new

  # Add labels ( x values )
  chart.add_labels([1000, 5000, 10000, 15000, 20000, 25000, 30000, 35000,
                40000, 45000, 50000, 55000, 60000, 65000, 70000,
                75000, 80000, 85000, 90000, 95000, 100000])

  # Add datasets
  chart.add_dataset(label: "my_reverse", data: @my_reverse_results)
  chart.add_dataset(label: "my_shuffle", data: @my_shuffle_results)
  chart.add_dataset(label: "my_fib (divided by 100)", data: @my_fib_results)
  chart.add_dataset(label: "my_bubble_sort", data: @my_bubble_results)
  chart.add_dataset(label: "my_quick_sort", data: @my_quick_results)



  # Neat 'lil configurations
  chart.hover
  chart.responsive

  # Generate html / js for chart
  "<head>" + chart.cdn + "</head>" + "<body>" + chart.html(width: 100) + "</body>"
end

get('/') { build_graph }