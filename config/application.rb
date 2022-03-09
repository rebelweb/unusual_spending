require 'bundler/setup'
require 'fileutils'

ENV['APP_ENV'] ||= 'development'

Dir.glob('config/initializers/*.rb').sort.each { |file| require "./#{file}"}
Dir.glob('app/**/*.rb').sort.each { |file| require "./#{file}" }
