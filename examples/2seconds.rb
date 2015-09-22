require 'walltime'
          
a = Stopwatch.new
a.watch('start')
sleep(2)
a.watch('stop')
a.print_stats
