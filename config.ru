require_relative './config/application'

use OTR::ActiveRecord::ConnectionManagement
use OTR::ActiveRecord::QueryCache

run API::V1::Alerts