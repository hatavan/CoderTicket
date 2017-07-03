begin
  load File.expand_path('../spring', __FILE__)
rescue LoadError
end

if ENV['RAILS_ENV'] == 'test'
  require 'simplecov'
  SimpleCov.start
end