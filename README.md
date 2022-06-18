# rails_style

Unify Rails development style across rails projects. Inspired by [percy-style](https://github.com/percy/percy-style).

## Installation 

Add to your Gemfile:

```ruby
group :development, :test do
  gem 'rails_style', github: 'ZeusWPI/rails_style'
end
```

Run 
```ruby
bundle install
````

## Usage

### Automatic 

Run
```ruby
rake rails_style:install
```

### Manual

Create a `.rubocop.yml` file with:

```yml
inherit_gem:
  rails_style:
    - default.yml
```

When adding this to a new project, run `bundle exec rubocop --auto-gen-config` to start with a "clean" slate.

Run 
```ruby
bundle exec rubocop
```
