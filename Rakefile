# frozen_string_literal: true

require "bundler/gem_tasks"
require "rake/extensiontask"
require "rubocop/rake_task"

RuboCop::RakeTask.new
Rake::ExtensionTask.new("closure")

task default: :rubocop
