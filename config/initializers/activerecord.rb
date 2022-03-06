require 'yaml'

configurations = YAML.load_file('config/database.yml')

db_params = configurations[ENV['APP_ENV']]

OTR::ActiveRecord.configure_from_hash!(db_params)

OTR::ActiveRecord.establish_connection!