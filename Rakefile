require 'rubygems'
require 'rake'

begin
  require 'jeweler'
  Jeweler::Tasks.new do |gem|
    gem.name = "jasmine-fixtures"
    gem.summary = %Q{Jasmine Fixtures allow you to use real DOM to test your JavaScript}
    gem.description = %Q{Dump out DOM that you want to test. Use jasmine-fixtures to load that DOM into your Jasmine specs. See github.com/mavenlink/jasmine-fixtures for more.}
    gem.email = "roger@mavenlink.com"
    gem.homepage = "http://github.com/mavenlink/jasmine-fixtures"
    gem.authors = ["Roger Neel", "Jonathan Barnes", "JB Steadman"]
    gem.add_development_dependency "rspec", ">= 1.2.9"
    gem.add_dependency "nokogiri", ">= 1.4.0"
    # gem is a Gem::Specification... see http://www.rubygems.org/read/chapter/20 for additional settings
  end
  Jeweler::GemcutterTasks.new
rescue LoadError
  puts "Jeweler (or a dependency) not available. Do a 'bundle install' to make sure you have all gems/dependencies installed."
end

require 'spec/rake/spectask'
Spec::Rake::SpecTask.new(:spec) do |spec|
  spec.libs << 'lib' << 'spec'
  spec.spec_files = FileList['spec/**/*_spec.rb']
end

Spec::Rake::SpecTask.new(:rcov) do |spec|
  spec.libs << 'lib' << 'spec'
  spec.pattern = 'spec/**/*_spec.rb'
  spec.rcov = true
end

task :spec => :check_dependencies

task :default => :spec

require 'rake/rdoctask'
Rake::RDocTask.new do |rdoc|
  version = File.exist?('VERSION') ? File.read('VERSION') : ""

  rdoc.rdoc_dir = 'rdoc'
  rdoc.title = "jasmine-fixtures #{version}"
  rdoc.rdoc_files.include('README*')
  rdoc.rdoc_files.include('lib/**/*.rb')
end
