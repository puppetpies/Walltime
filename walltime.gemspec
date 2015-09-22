require './lib/version.rb'

VERSION = Walltime::VERSION::STRING

Gem::Specification.new do |s|
  s.name        = 'walltime'
  s.version     = VERSION
  s.date        = '2015-09-22'
  s.summary     = "Walltime"
  s.description = "A Stopwatch you can use in all kinds of things"
  s.authors     = ["Brian Hood"]
  s.email       = 'brianh6854@googlemail.com'
  s.files       = ["examples/2seconds.rb", "examples/milliseconds.rb", "lib/walltime.rb", "lib/version.rb"]
  s.homepage    =
    'https://github.com/puppetpies/Walltime'
  s.license       = 'MIT'
end
