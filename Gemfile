source 'https://rubygems.org'
gem 'rails',        '4.1.0'

#Plugins
gem 'pg'
gem "figaro"
gem "paperclip",    '~> 4.2'
gem 'jbuilder',     '~> 2.0'
gem 'sdoc',         '~> 0.4.0', group: :doc
gem 'turbolinks'
gem 'factory_girl_rails'
gem 'ffaker'
gem 'decent_exposure', '~> 2.3.2'
gem 'simple_form'

# Engines
gem 'devise'
gem 'omniauth-facebook'

# 3rd Party services
gem 'aws-sdk',      '< 2'

#Frontend
gem 'coffee-rails', '~> 4.0.0'
gem 'jquery-rails'
gem 'sass-rails',   '~> 4.0.3'
gem 'slim-rails'
gem 'uglifier',     '>= 1.3.0'
gem 'high_voltage', '~> 2.2.1'
gem 'bourbon'
gem 'neat'

group :test do
  gem 'capybara'
  gem 'database_cleaner',       '~> 1.3.0'
  gem 'launchy'
end

group :development, :test do
  gem 'rspec-rails', '~> 3.0'
  gem 'quiet_assets'
  gem 'spring'
  gem 'pry-rails'
end

group :production do
  gem 'thin'
  gem 'rails_12factor'
  gem 'rack-timeout'
end
