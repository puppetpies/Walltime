# Walltime

Quick IRB Demo

[root@orville Walltime]# irb
irb(main):001:0> require 'walltime'
=> true
irb(main):002:0> a = Stopwatch.new
=> #<Stopwatch:0x00000001fc2028 @roundvals=[]>
irb(main):003:0> a.watch('start')
=> 1438202860.2731128
irb(main):004:0> a.watch('stop')
=> [6.24]
irb(main):005:0> a.print_stats
Start: 2015-07-29 21:47:40 +0100 Finish: 2015-07-29 21:47:46 +0100 Total time: 6.24
=> nil

