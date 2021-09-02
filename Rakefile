# frozen_string_literal: true

require 'rake/testtask'

Rake::TestTask.new(:test) do |t|
  t.test_files = FileList['tests/**/*_test.rb']
end
desc 'Run tests'

task default: :test
