# -*- ruby -*-

require 'rubygems'
require 'hoe'

require 'rake/testtask'


# Hoe.plugin :bundler
# Hoe.plugin :compiler
# Hoe.plugin :compiler
# Hoe.plugin :compiler
# Hoe.plugin :debugging
# Hoe.plugin :debugging
# Hoe.plugin :gem_prelude_sucks
# Hoe.plugin :gem_prelude_sucks
# Hoe.plugin :gem_prelude_sucks
# Hoe.plugin :gemspec
# Hoe.plugin :gemspec2
# Hoe.plugin :git
# Hoe.plugin :heroku
# Hoe.plugin :highline
# Hoe.plugin :inline
# Hoe.plugin :inline
# Hoe.plugin :inline
# Hoe.plugin :minitest
# Hoe.plugin :minitest
# Hoe.plugin :minitest
# Hoe.plugin :minitest
# Hoe.plugin :minitest
# Hoe.plugin :minitest
# Hoe.plugin :racc
# Hoe.plugin :racc
# Hoe.plugin :racc
# Hoe.plugin :rubyforge
# Hoe.plugin :rubyforge
# Hoe.plugin :rubyforge

Hoe.spec 'enumerator_ex' do

  developer('Dominic Sisneros', 'dsisnero@gmail.com')
  extra_deps << ['enumerable_lz', '~> 0.1']
  extra_dev_deps << ['rspec', '~> 2.8']
  # extra_deps << ['blah', '~> 1.0']  
  # extra_dev_deps << ['blah', '~>1.0']

 
  ##
  # Optional: Extra files you want to add to RDoc.
  #
  # .txt files are automatically included (excluding the obvious).

  # extra_rdoc_files

  ##
  # Optional: The filename for the project history. [default: History.txt]

  # history_file


  # self.rubyforge_name = 'enumerator_ex' # if different than 'enumerator_ex'
end

Rake::TestTask.new do |t|
  t.libs.push "lib"
  t.test_files = FileList['test/*_test.rb']
  t.verbose = true
end


# vim: syntax=ruby
