require File.expand_path(File.join(
          File.dirname(__FILE__),
          "../lib/walltime.rb"))
          
a = Stopwatch.new
a.watch('start')
sleep(2)
a.watch('stop')
a.print_stats
