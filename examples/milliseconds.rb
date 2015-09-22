########################################################################
#
# Author: Brian Hood
#
# Description: Milliseconds Example
#
#   Display of Ruby refinements / Inheritance & Atomic Operation
#   with Mutexes
########################################################################


require 'walltime'

unless RUBY_VERSION > "2.0"
  puts "Refinements only work in 2.0 and above"
  exit
end

module TimeCustomize

  refine Stopwatch do

    def print_stats
      round = round_to(@t2 - @t1, 2)
      puts "Start: #{Time.at(@t1)} Finish: #{Time.at(@t2)} Total time: #{round}"
      diff = (Time.at(@t2) - Time.at(@t1))*1000
      puts "Difference: #{diff.to_s.gsub(".", "")[0..2]}ms"
    end
    
  end

end

=begin

Its seems you can't inherit a class without a refinement and add one in your new class i.e
You don't see the refined version of print_stats just the original

class MyClock

end

class MyClockInherit < MyClock

  using TimeCustomize

end

However you can inherit an existing one

class MyClock

  using TimeCustomize

end

class MyClockInherit < MyClock; end

As below
=end

class MyClock
  
  using TimeCustomize

  def initialize
    @a = Stopwatch.new
    @a.watch('start')    
  end

  def delay(seconds)
    sleep(seconds)
  end

  def end
    @a.watch('stop')
    @a.print_stats
  end

end

class MyClockInherit < MyClock; end

# Pass the Mutex a &block
m = Mutex.new
m.synchronize do
  clock = MyClock.new
  clock.delay(0.234)
  clock.end
end

n = Mutex.new
n.synchronize do
  clock = MyClockInherit.new
  clock.delay(0.234)
  clock.end
end
