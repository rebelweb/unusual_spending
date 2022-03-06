require 'bundler/setup'
require 'fileutils'

Dir.glob('app/**/*.rb') { |file| require "./#{file}" }
