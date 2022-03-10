require 'yaml'
require 'erb'
require 'otr-activerecord'

yaml_data = ERB.new(File.read('config/database.yml')).result

configurations = YAML.load(yaml_data)

db_params = configurations[ENV['APP_ENV']]

OTR::ActiveRecord.configure_from_hash!(db_params)

OTR::ActiveRecord.establish_connection!