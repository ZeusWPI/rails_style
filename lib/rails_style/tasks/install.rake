# frozen_string_literal: true

namespace :rails_style do
  desc "Create .rubocop.yml file"
  task create_rubocop_yml: :environment do
    source = File.join(Gem.loaded_specs["rails_style"].full_gem_path, "templates", ".rubocop.yml")
    target = Rails.root.join(".rubocop.yml")

    cp source, target
  end

  desc "Create an initial .rubocop_todo.yml"
  task create_rubocop_todo_yml: :environment do
    sh "bundle exec rubocop --auto-gen-config"
  end

  desc "Setup an initial rubocop rails_style configuration"
  task install: [:create_rubocop_yml, :create_rubocop_todo_yml]
end
