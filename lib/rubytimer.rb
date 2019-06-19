# frozen_string_literal: true

require_relative 'my_methods.rb'

class Timer
  def self.time(&block)
    start_time = Time.now
    result = block.call
    end_time = Time.now
    @time_taken = end_time - start_time
    result
  end

  def self.elapsedTime
    @time_taken
  end
end
