source 'https://rubygems.org'
ruby '2.2.0'

gem 'jekyll', github: 'jekyll/jekyll'
gem 'jekyll-tagging'
gem 'rake'

group :development do
  gem 'foreman'
  gem 'dotenv'
end

group :import do
  gem 'sequel'
  gem 'unidecode'
  gem 'mysql2'
  gem 'htmlentities'
  gem 'jekyll-import', github: 'interexchange/jekyll-import', branch: 'wordpress-extension'
end

group :production do
  gem 'puma'
  gem 'rack-ssl'
  gem 'rack-contrib'
end
