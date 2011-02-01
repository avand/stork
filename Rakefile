require 'jeweler'
require 'rake/testtask'

Jeweler::Tasks.new do |gem|
  gem.name     = 'stork'
  gem.summary  = 'Nice and tidy bundles of CSS and JS served by Rack.'
  gem.email    = 'avand@avandamiri.com'
  gem.homepage = 'http://github.com/avand/stork'
  gem.authors  = ['Avand Amiri']
  gem.files    = FileList['lib/**/*.rb']
  gem.version  = '0.0.1'

  gem.add_dependency 'haml', '3.0.18'
end

Rake::TestTask.new(:test) do |test|
  test.libs << 'lib' << 'test'
  test.pattern = 'test/**/*_test.rb'
  test.verbose = true
end

task :default => :test
