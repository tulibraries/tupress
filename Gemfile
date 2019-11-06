source 'https://rubygems.org'


git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end


# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 5.0.7'
# Use sqlite3 as the database for Active Record
gem 'sqlite3'
# Use Puma as the app server
gem 'puma', '~> 4.2'
gem 'carrierwave', '~> 2.0'

# Paperclip traces can still be seen in the migrations
# We have to keep it in here until we clean up the migrations
gem 'paperclip'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 6.0'
gem 'autoprefixer-rails'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .coffee assets and views
gem 'bootstrap', '~> 4.3.1'
gem 'coffee-rails', '~> 4.2'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby
gem 'nokogiri'
gem 'pry'
gem 'feedjira', '2.2.0'
gem 'social-share-button'
gem 'tinymce-rails'
gem 'jquery-ui-rails'
gem 'yaml_db'
gem 'trestle', '0.8.11'
gem 'trestle-tinymce'
gem 'trestle-auth'
gem 'trestle-search'
gem "mini_magick"
gem 'loofah', '2.3.1'
gem 'rails-html-sanitizer','~> 1.2.0'
gem 'mail_form'
gem 'simple_form'

# Use jquery as the JavaScript library
gem 'jquery-rails'
gem 'jquery-validation-rails', '~> 1.13', '>= 1.13.1'
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'turbolinks', '~> 5'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.9'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 3.0'
# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platform: :mri
  gem 'rspec-rails'
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> anywhere in the code.
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '~> 3.2.0'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

group :test do
  gem 'capybara'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]

gem 'devise'

group :production do
  gem 'mysql2', '~> 0.4.9'
end
