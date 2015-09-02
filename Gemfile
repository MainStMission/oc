source 'https://rubygems.org'

gem 'rails', '4.2.3'

### OpenShift Online changes:

# Fix the conflict with the system 'rake':
gem 'rake', '~> 10.2.2'
gem 'pg'

gem 'paper_trail'
gem 'kaminari'
gem 'attr_encrypted'
gem 'rails_admin'

# Assets

gem 'bootstrap-sass', '~> 3.3.5'
gem "sass-rails", "~> 5.0"
gem "simple_form"
gem 'by_star', :git => "git://github.com/radar/by_star"
gem "title"
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.1.0'
gem 'jquery-rails'
gem 'font-awesome-sass', '~> 4.3.0'
gem 'turbolinks'
gem 'haml-rails'
gem 'decent_exposure'
gem 'cocoon'
gem 'ransack'


# Core Gems
#
gem 'devise'

# Support for databases and environment.
# Use 'sqlite3' for testing and development and mysql and postgresql
# for production.
#
# To speed up the 'git push' process you can exclude gems from bundle install:
# For example, if you use rails + mysql, you can:
#
# $ rhc env set BUNDLE_WITHOUT="development test postgresql"
#
group :development, :test do
  gem 'rspec-rails', '~> 3.3.0'
  gem 'spring-commands-rspec'
  gem 'guard-rspec'
  gem 'minitest'
  gem 'thor'
  gem 'web-console', '~> 2.0'
  gem 'spring'
  gem "awesome_print"
  gem "bundler-audit", require: false
  gem "byebug"
  gem "factory_girl_rails"
  gem "pry-rails"

  # Test

  # gem "capybara-webkit", ">= 1.2.0"
  gem "database_cleaner"
  gem "formulaic"
  gem "launchy"
  gem "shoulda-matchers", require: false
  gem "timecop"
  gem "webmock"

end

group :production, :postgresql do

end

### / OpenShift changes
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'
# bundle exec rake doc:rails generates the API under doc/api.

# Spring speeds up development. Read more: https://github.com/rails/spring

# Use ActiveModel has_secure_password
 gem 'bcrypt', '~> 3.1.7'

# Use unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

# Use debugger
# gem 'debugger', group: [:development, :test]

gem 'rails_12factor'

