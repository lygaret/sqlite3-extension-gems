# frozen_string_literal: true

require "bundler/gem_tasks"
require "rake/extensiontask"
require "rubocop/rake_task"

RuboCop::RakeTask.new
Rake::ExtensionTask.new("sqlite3-closure")

task default: :rubocop
