# frozen_string_literal: true

require_relative 'rubytimer.rb'
require 'gruff'
require 'tty-prompt'

class Test
  def initialize
    setup
  end

  def setup
    # Initial graph setup
    @graph = Gruff::Line.new

    # Measurement points, total of 5,836,610
    @graph.labels = { 0 => '1', 1 => '2', 2 => '3', 3 => '4', 4 => '5',
                      5 => '6', 6 => '7', 7 => '8', 8 => '9', 9 => '10',
                      10 => '11', 11 => '12', 12 => '13', 13 => '14', 14 => '15',
                      15 => '16', 16 => '17', 17 => '18', 18 => '19', 19 => '20',
                      20 => '21', 21 => '22', 22 => '23', 23 => '24', 24 => '25' }

    @measurement_points = [400_000, 800_000, 1_200_000, 1_600_000, 2_000_000, 2_400_000, 2_800_000, 3_200_000, 3_600_000, 4_000_000,
                           4_400_000, 4_800_000, 5_200_000, 5_600_000, 6_000_000, 6_400_000, 6_800_000, 7_200_000,
                           7_600_000, 8_000_000, 8_400_000, 8_800_000, 9_200_000, 9_600_000, 10_000_000]
    @measurement_averages = []

    # Got to user menu
    user_menu
  end

  def user_menu
    # User input for graph values
    prompt = TTY::Prompt.new
    @graph_name = prompt.ask('What do you want to call your graph?', default: 'eg: Benchmark')

    test_method = prompt.select('What do you want to test on?') do |menu|
      menu.choice 'Array'
      menu.choice 'Integers'
      menu.choice 'Strings'
    end
    start(test_method)
  end

  def start(method)
    puts 'Stress testing... Please wait.'

    case method
    when 'Array'
      @measurement_points.each do |point|
        average_time = []
        5.times do
          Timer.time { Array(1..point).dup.reverse }
          average_time << Timer.elapsedTime * 100
        end
        @measurement_averages << (average_time.sum / 5)
      end
    end

    # Build graph
    @graph.data @graph_name, @measurement_averages
    @graph.write('./images/graph.png')
    puts 'Done.'
  end
end

Test.new
