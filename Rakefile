require 'rubygems'
require 'rake'

begin
  require 'jeweler'
  Jeweler::Tasks.new do |gem|
    gem.name = "orm"
    gem.summary = %Q{Library for parsing/creating ORM files using the NORMA XML schema.}
    gem.description = %Q{Library for parsing/creating ORM files using the NORMA XML schema.}
    gem.email = "jisraelsen@gmail.com"
    gem.homepage = ""
    gem.authors = ["Jeremy Israelsen"]
    gem.add_development_dependency "rspec", ">= 1.3.0"
    # gem is a Gem::Specification... see http://www.rubygems.org/read/chapter/20 for additional settings
  end
  Jeweler::GemcutterTasks.new
rescue LoadError
  puts "Jeweler (or a dependency) not available. Install it with: gem install jeweler"
end

require 'spec/rake/spectask'
Spec::Rake::SpecTask.new(:spec) do |spec|
  spec.spec_opts = ['--options', "\"spec/spec.opts\""]
  spec.spec_files = FileList['spec/**/*_spec.rb']
end

Spec::Rake::SpecTask.new(:rcov) do |spec|
  spec.spec_opts = ['--options', "\"spec/spec.opts\""]
  spec.spec_files = FileList['spec/**/*_spec.rb']
  spec.rcov = true
  spec.rcov_opts = lambda do
    IO.readlines("spec/rcov.opts").map {|l| l.chomp.split " "}.flatten
  end
end

task :spec => :check_dependencies

task :default => :spec

require 'rake/rdoctask'
Rake::RDocTask.new do |rdoc|
  version = File.exist?('VERSION') ? File.read('VERSION') : ""

  rdoc.rdoc_dir = 'rdoc'
  rdoc.title = "orm #{version}"
  rdoc.rdoc_files.include('README*')
  rdoc.rdoc_files.include('lib/**/*.rb')
end
