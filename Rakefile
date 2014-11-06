require "bundler/gem_tasks"

unless ENV['RACK_ENV'] == 'production'
  require 'rspec/core/rake_task'

  # Default directory to look in is `/specs`
  # Run with `rake spec`
  RSpec::Core::RakeTask.new(:spec) do |task|
    task.rspec_opts = ['--color', '--format', 'doc']
  end

  task :default => :spec
end
