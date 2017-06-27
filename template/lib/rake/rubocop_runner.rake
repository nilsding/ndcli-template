begin
  require "rubocop/rake_task"
  RuboCop::RakeTask.new
  namespace :rubocop do
    desc "Install Rubocop as pre-commit hook"
    task :install do
      require "rubocop_runner"
      RubocopRunner.install
    end

    task :run do
      exec "rubocop --auto-correct --format fuubar --force-exclusion --fail-level autocorrect"
    end
  end
rescue LoadError
  puts "Rubocop is not installed :/"
end
