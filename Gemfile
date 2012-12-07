source 'http://rubygems.org/'

ruby "1.9.3"
gem 'rails', "~> 3.2.9"

# Gems used only for assets and not required in production environments by default.
group :assets do
  gem 'sass-rails', "  ~> 3.2.5"
  gem 'coffee-rails', "~> 3.2.2"
  gem 'uglifier', '>= 1.0.3'
end
gem 'rubygems-update', "~> 1.8.24"
gem 'jquery-rails'
gem "rspec-rails", ">= 2.11.0", :group => [:development, :test]
gem "capybara", ">= 1.1.2", :group => :test
gem "email_spec", ">= 1.2.1", :group => :test
gem "cucumber-rails", ">= 1.3.0", :group => :test, :require => false
gem "database_cleaner", ">= 0.8.0", :group => :test
gem "launchy", ">= 2.1.2", :group => :test
gem "factory_girl_rails", ">= 4.0.0", :group => [:development, :test]
gem "bootstrap-sass", ">= 2.0.4.0"
gem "hominid", ">= 3.0.5"
gem "devise", ">= 2.1.2"
gem "cancan", ">= 1.6.8"
gem "rolify", ">= 3.2.0"
gem "simple_form", ">= 2.0.2"
gem "google_visualr", ">= 2.1.2"
gem "jquery-datatables-rails", ">= 1.10.0"
gem "ruby_core_source", "~> 0.1.5"
gem "mysql2", "~> 0.3"

#gem "activerecord-sqlite3-adapter"
#gem "activerecord-mysql2spatial-adapter", ">= 0"
#gem "activerecord-mysql2-adapter"
#gem 'RedCloth', ">= 4.1.1"
#gem "rails-ujs", "~> 0.0.3"
gem "sho-mongrel", "~> 1.1.5"
gem "sprockets", "~> 2.2.1"

# to use the published apotomo gem
gem "apotomo", "~> 1.2.x", :require => 'apotomo'

# to use the current apotomo master from github
# gem "apotomo", :git => "git://github.com/apotonick/apotomo"

gem "cells", "~> 3.7.1"
gem "dynamic_form", "~> 1.1.4"
gem "rack", "~> 1.4.0"

gem "spruz", "~> 0.2.13"
gem "onfire", "~> 0.2.0"
gem 'hooks', "~> 0.2.1"
gem "haml", "~> 3.1.6"
gem 'haml-rails', ">= 0.3.4", :group => :development
gem "jeweler", "~> 1.6.4"

group :test, :test do
  gem "shoulda"
  gem "mocha"
  gem "sqlite3", "~> 1.3.6", :require => "sqlite3"  # sqlite3 needed in router_test, per apotomo gem at http://github.com/apotonick/apotomo/commit/c2ecf2a546dfa40a5497460ed40923ae563b9146   # 20101012
end
