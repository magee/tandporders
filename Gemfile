source 'https://rubygems.org'

#gem 'rails', '3.2.13'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.0.0.rc1'

#-----------------------------------------------------------------
# magee's additions

gem 'angularjs-rails'

# to allow Wordpress to be run as /blog/ subdomain
gem "rack-reverse-proxy", :require => "rack/reverse_proxy"

# rSpec testing
gem 'rspec-rails'

#for multistep forms
#gem 'wicked'

# managing state
gem 'state_machine'

# authentication
gem 'devise'

# embedded video conferencing
#gem 'opentok'   # use JS version for WebRTC protocol

group :production do
	gem 'pg'
end

group :development, :testing do
	gem 'sqlite3'
	gem 'quiet_assets'
end

#-----------------------------------------------------------------

# Use SCSS for stylesheets
gem 'sass-rails', '~> 4.0.0.rc1'

# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'

# Use CoffeeScript for .js.coffee assets and views
gem 'coffee-rails', '~> 4.0.0'

# See https://github.com/sstephenson/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'

# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'

# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 1.0.1'

group :doc do
  # bundle exec rake doc:rails generates the API under doc/api.
  gem 'sdoc', require: false
end

# Use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.0.0'

# Use unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano', group: :development

# Use debugger
# gem 'debugger', group: [:development, :test]
