source 'https://rubygems.org'

gem 'rails', '3.2.11'
gem "pg"
gem 'rb-readline'
gem 'thin' # to avoid content-length etc. logger warnings

# UI
gem 'kaminari'
gem 'bootstrap-kaminari-views'
gem 'markdownizer'

gem "simple_form"
gem 'jquery-rails'
gem 'bootstrap-datepicker-rails'

# gem 'psych', '1.3.4'

# Authentication / Authorization
#gem 'authority'
#gem 'rolify'

#gem 'delayed_job_active_record', '0.3.3'
#gem 'whenever'
#gem 'acts-as-taggable-on'                             # For tagging functionality
#gem "audited-activerecord", "~> 3.0"                  # For audit logging
#gem 'carrierwave'                                     # For document uploading

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'
  #gem 'therubyracer'
  gem 'uglifier', '>= 1.0.3'
end

group :development, :test, :staging do
  gem "cucumber-rails", :require => false
  gem "capybara"
  gem "database_cleaner"
  gem "launchy"
  #gem 'rvm-capistrano'
  #gem 'capistrano'
  #gem 'capistrano-deepmodules'
  #gem 'capistrano_colors'
  #gem 'capistrano-ext'
  #gem 'capistrano-deploytags'  
  gem 'rspec-rails'
  gem 'factory_girl_rails'
  gem "faker"
  gem "quiet_assets"
  gem "colorize"
  gem "pry"
end

# To use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.0.0'

# To use Jbuilder templates for JSON
# gem 'jbuilder'

# Use unicorn as the web server
# gem 'unicorn'

# To use debugger
# gem 'ruby-debug19', :require => 'ruby-debug'
