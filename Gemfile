source "https://rubygems.org"

gem 'sinatra'

gem 'activerecord'

gem 'sinatra-activerecord'

gem 'webrick'

gem 'rack-contrib'

gem 'rack-cors'

gem 'rake'

# gem 'sqlite3'

gem 'require_all'

gem 'faker'

group :development do 
    gem 'pry'

    gem 'rerun'
end

group :test do
    gem "database_cleaner"
    gem "rack-test"
    gem "rspec"
    gem "rspec-json_expectations"
end

group :production do 
    gem 'pg'
    gem 'puma', '~> 6.1', '>= 6.1.1' 

end

# , '~> 1.4', '>= 1.4.6'