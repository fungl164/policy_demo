source 'https://rubygems.org'

gem 'rails', '3.2.8'
gem 'jquery-rails'
gem 'bson_ext'
gem 'mongo_mapper'
gem 'mongoid', '>= 3.0.6'
gem 'haml', '>= 3.1.7'
gem 'devise', '>= 2.1.2'


# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'
  gem 'therubyracer', :platforms => :ruby
  gem 'uglifier', '>= 1.0.3'
end


group :development do
  gem 'haml-rails', '>= 0.3.5'
  gem 'hpricot', '>= 0.8.6'
  gem 'ruby_parser', '>= 2.3.1'
  gem 'quiet_assets', '>= 1.0.1'
end

group :test do
  gem 'database_cleaner', '>= 0.8.0'
  gem "mongoid-rspec", ">= 1.4.6"
  gem 'email_spec', '>= 1.2.1'
  gem 'cucumber-rails', '>= 1.3.0', :require => false
  gem 'launchy', '>= 2.1.2'
  gem 'capybara', '>= 1.1.2'
end

group :development, :test do
  gem 'rspec-rails', '>= 2.11.0'
  gem 'factory_girl_rails', '>= 4.1.0'
end
