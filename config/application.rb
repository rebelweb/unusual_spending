require 'fileutils'

Dir.glob('app/**/*.rb') { |file| require "./#{file}" }

