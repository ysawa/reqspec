source 'https://rubygems.org'

gem 'rails', '3.2.11'

# Bundle edge Rails instead:
# gem 'rails', :git => 'git://github.com/rails/rails.git'

gem 'mongoid'

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'
  gem 'haml-rails'

  # See https://github.com/sstephenson/execjs#readme for more supported runtimes
  # gem 'therubyracer', :platforms => :ruby

  gem 'haml_coffee_assets'
  gem 'execjs'

  gem 'uglifier', '>= 1.0.3'
end

gem 'jquery-rails'
gem 'haml'
gem 'rails-behaviors'


# Optional support for hamljs templates
gem 'ruby-haml-js'

gem "therubyracer"
gem "less-rails" #Sprockets (what Rails 3.1 uses for its asset pipeline) supports LESS
gem "twitter-bootstrap-rails"
gem "bourbon"


# Use The Decorator Pattern
gem 'draper'

# Pagination
gem 'kaminari'

# To use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.0.0'

# To use Jbuilder templates for JSON
# gem 'jbuilder'

# Use unicorn as the app server
# gem 'unicorn'

# Deploy with Capistrano
# gem 'capistrano'

# To use debugger
# gem 'debugger'

group :development, :test do
  gem 'fakeweb'
  gem 'rspec-rails'
  gem 'spork', '1.0.0rc3'
  gem 'capybara'
  gem 'fabrication'
  gem 'database_cleaner'
  gem 'rb-fsevent', require: false if RUBY_PLATFORM =~ /darwin/i # mac os x
  gem 'launchy'
  gem 'guard-spork'
  gem 'guard-rspec'
  gem 'jasmine-rails'
  gem 'database_cleaner'
  gem 'guard-jasmine-headless-webkit', git: 'git://github.com/johnbintz/guard-jasmine-headless-webkit.git'
  gem 'jasmine-headless-webkit', git: 'git://github.com/johnbintz/jasmine-headless-webkit.git'
  gem 'jasmine-headless-webkit-reporters', git: 'git://github.com/johnbintz/jasmine-headless-webkit-reporters.git'

  # Notifiers
  case RUBY_PLATFORM
  when /linux/i
    gem 'libnotify'
  when /darwin/i
    gem 'growl'
    gem 'terminal-notifier-guard'
  when /mswin(?!ce)|mingw|cygwin|bccwin/i
    gem 'rb-notifu'
  end
end

# Deploy with Capistrano

group :deployment do
  gem 'capistrano'
  gem 'capistrano_colors'
  gem 'rvm-capistrano'
end
