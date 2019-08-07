require 'memory_profiler'
require_relative 'my_methods.rb'
require_relative 'rubytimer.rb'

@data1 = [*0..1000].shuffle
@data2 = [*0..100_000].shuffle

Timer.time { 
  @report = MemoryProfiler.report do
      # @data.merge_sort
      # @data.selection_sort
      # @data.quick_sort
      # @data.insertion_sort
      @data2.bubble_sort
  end
}

@report.pretty_print
p "Elapsed time: #{Timer.elapsedTime}"