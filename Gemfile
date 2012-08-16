source 'http://rubygems.org'

gem 'rails', '3.1.0'

gem 'sqlite3'
gem 'haml'
gem 'sass'
gem 'json', '1.6.5'  
gem 'ruby-debug19', :require => 'ruby-debug'

gem 'ruby-tmdb'

group :development, :test do
  gem 'rspec-rails'
  gem 'ZenTest'
  gem 'cucumber-rails'
  gem 'cucumber-rails-training-wheels' # some pre-fabbed step definitions  
  gem 'database_cleaner' # to clear Cucumber's test database between runs
  gem 'capybara'         # lets Cucumber pretend to be a web browser
  gem 'launchy'          # a useful debugging aid for user stories
end

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails', "  ~> 3.1.0"
  gem 'coffee-rails', "~> 3.1.0"
  gem 'uglifier'
  gem 'therubyracer'
end

gem 'jquery-rails'

# Use unicorn as the web server
# gem 'unicorn'

# Deploy with Capistrano
# gem 'capistrano'