require 'grape'

module API
  module V1
    class Alerts < Grape::API
      version 'v1', using: :header, vendor: :rebelweb
      format :json
      prefix :api

      resources :alerts do
        desc 'Sends Unusual Spending Alert'
        params do
          requires :user_id, type: Integer, desc: 'User Id to send alert for'
        end
        post do
          status 200
        end
      end
    end
  end
end
