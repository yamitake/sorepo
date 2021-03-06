source 'https://rubygems.org'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.2.6'

# web server
gem 'puma'

# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.1.0'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby
gem 'compass-rails'

# Use jquery as the JavaScript library
gem 'jquery-rails'
# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0', group: :doc
# html template
gem 'slim-rails'
# StateMachine
gem 'aasm'
# Database mongodb
gem 'mongoid'

# presentor
gem 'draper'
# paging
gem 'kaminari'
# meta tags
gem 'meta-tags'

# Admin Page
gem 'rails_admin'
gem 'devise'

# OAuth Login
gem 'omniauth'
gem 'omniauth-instagram'

# static page
gem 'high_voltage'

gem 'google-analytics-rails'
# https://github.com/kjvarga/sitemap_generator
gem "sitemap_generator"
# パフォーマンス監視 https://newrelic.com/
gem 'newrelic_rpm'
# Loads environment variables from `.env`. https://github.com/bkeepers/dotenv
gem 'dotenv'
# managing a breadcrumb navigation https://github.com/weppos/breadcrumbs_on_rails
gem "breadcrumbs_on_rails"

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

group :production do
  gem 'rails_12factor'
end

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'rspec-rails'
  gem "capybara"
  gem 'poltergeist'
  gem 'guard-rspec', require: false
  gem 'factory_girl_rails' #http://www.rubydoc.info/gems/factory_girl/file/GETTING_STARTED.md
  gem 'byebug'
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> in views
  gem 'web-console', '~> 2.0'

  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'pry-rails'
  gem 'rack-mini-profiler', require: false
  gem 'rubocop', require: false
  gem 'awesome_print'
  gem 'quiet_assets'
  gem 'bullet'
end

group :test do
  gem 'simplecov', :require => false
  gem 'database_cleaner'
end

