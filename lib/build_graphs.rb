require 'pi_charts'
require 'sinatra'
require 'benchmark'

require_relative 'rubytimer.rb'
require_relative 'my_methods.rb'

def build_graph
  # Big datapoints. Average time: 27 mins (3 runs at 100% cpu)
  @datapoints = [ 500, 1000, 5000, 10_000, 15_000, 20_000, 25_000, 30_000,
                  35_000, 40_000, 45_000, 50_000, 55_000, 60_000, 70_000,
                  75_000, 80_000, 85_000, 90_000, 95_000, 100_000]

  # Mid datapoints. Average time: 13 mins (10 runs at 100% cpu)
  # @datapoints = [50, 100, 500, 1000, 1500, 2000, 2500, 3000, 3500,
  #               4000, 4500, 5000, 5500, 6000, 7000, 7500,
  #               8000, 8500, 9000, 9500, 10_000]

  # Low datapoints. Average time: 58 sec (10 runs at 100% cpu)
  # @datapoints = [ 100, 200, 300, 400, 500, 600, 700, 800,
  #                 900, 1000, 1100, 1200, 1300, 1400, 1500,
  #                 1600, 1700, 1800, 1900, 2000, 2100]

  @my_reverse_results = []
  @my_shuffle_results = []
  @my_fib_results = []
  @my_bubble_results = []
  @my_quick_results = []
  @my_merge_results = []
  @my_selection_results = []

  # Building datasets

    # my_reverse integer
  @datapoints.each do |datapoint|
    temp_data = []
    data = Array(1..datapoint)
    20.times do
      Timer.time { data.my_reverse }
      temp_data << Timer.elapsedTime
    end
    @my_reverse_results << (temp_data.sort.shift(5).pop(5).sum / 10)
  end

  #   # my_shuffle
  @datapoints.each do |datapoint|
    temp_data = []
    data = Array(1..datapoint)
    20.times do
      Timer.time { data.my_shuffle }
      temp_data << Timer.elapsedTime
    end
    @my_shuffle_results << (temp_data.sort.shift(5).pop(5).sum / 10)
  end

  #  # my_fib
  @datapoints.each do |datapoint|
    temp_data = []
    20.times do
      Timer.time { datapoint.my_fib }
      temp_data << Timer.elapsedTime
    end
    @my_fib_results << (temp_data.sort.shift(5).pop(5).sum / 10)
  end

  my_bubble_sort after my_shuffle
  @datapoints.each do |datapoint|
    temp_data = []
    data = Array(1..datapoint)
    20.times do
      data_shuffled = data.shuffle
      Timer.time { data_shuffled.my_bubble_sort }
      temp_data << Timer.elapsedTime
    end
    @my_bubble_results << (temp_data.sort.shift(5).pop(5).sum / 10) / 100
  end

  @datapoints.each do |datapoint|
    temp_data = []
    data = Array(1..datapoint)
    20.times do
      data_shuffled = data.shuffle
      Timer.time { data_shuffled.my_merge_sort }
      temp_data << Timer.elapsedTime
    end
    @my_merge_results << (temp_data.sort.shift(5).pop(5).sum / 10)
  end

  @datapoints.each do |datapoint|
    temp_data = []
    data = Array(1..datapoint)
    20.times do
      data_shuffled = data.shuffle
      Timer.time { data_shuffled.my_quick_sort }
      temp_data << Timer.elapsedTime
    end
    @my_quick_results << (temp_data.sort.shift(5).pop(5).sum / 10)
  end

  @datapoints.each do |datapoint|
    temp_data = []
    data = Array(1..datapoint)
    20.times do
      data_shuffled = data.shuffle
      Timer.time { data_shuffled.my_selection_sort }
      temp_data << Timer.elapsedTime
    end
    @my_selection_results << (temp_data.sort.shift(5).pop(5).sum / 200)
  end

  # Create a new line chart
  chart = PiCharts::Line.new

  # Add labels ( x values )
  chart.add_labels([1, 2, 3, 4, 5, 6, 7, 8,
                    9, 10, 11, 12, 13, 14, 15,
                    16, 17, 18, 19, 20, 21])

  # Add datasets
  chart.add_dataset(label: 'my_reverse', data: @my_reverse_results)
  chart.add_dataset(label: 'my_shuffle', data: @my_shuffle_results)
  chart.add_dataset(label: 'my_fib', data: @my_fib_results)
  chart.add_dataset(label: 'my_bubble_sort (divided by 100)', data: @my_bubble_results)
  chart.add_dataset(label: 'my_quick_sort', data: @my_quick_results)
  chart.add_dataset(label: 'my_merge_sort', data: @my_merge_results)
  chart.add_dataset(label: 'my_selection_sort (divided by 200)', data: @my_selection_results)

  # Neat 'lil configurations
  chart.hover
  chart.responsive

  # Generate html / js for chart
  '<head>' + chart.cdn + '</head>' + '<body>' + chart.html(width: 100) + '</body>'
end

get('/') { build_graph }
