require 'bundler/setup'
require 'fileutils'

ENV['APP_ENV'] ||= 'development'

Dir.glob('config/initializers/*.rb') { |file| require "./#{file}"}
Dir.glob('app/**/*.rb') { |file| require "./#{file}" }
