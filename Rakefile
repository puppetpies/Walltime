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

require 'rubygems/tasks'
Gem::Tasks.new
task :build do
  Rake::Task['gem'].invoke
end

# Override standard release task
require 'git'
Rake::Task["release"].clear
task :release do
  version = "#{VERSION}"
  remote = 'origin'
  puts "Creating tag v#{version}"
  git = Git.open(".")
  git.add_tag("v#{version}")
  puts "Pushing tag to #{remote}"
  git.push(remote, 'master', true)
  Rake::Task['gem'].invoke
  gemtask = Gem::Tasks::Push.new
  gemtask.push("pkg/walltime-#{version}.gem")
end
