require File.expand_path(File.join(
          File.dirname(__FILE__),
          "../lib/stopwatch.rb"))
          
a = Stopwatch.new
a.watch('start')
sleep(2)
a.watch['stop')
a.print_stats
