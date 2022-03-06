require 'dry/monads'
require 'dry/validation'
require 'dry/monads/result'

Dry::Validation.load_extensions :monads

class UnusualSpendingAlertOperation
  include Dry::Monads::Result::Mixin

  Schema = Dry::Validation::Contract.build do
    schema do
      required(:user_id).filled(:integer)
    end
  end

  def initialize(schema: Schema)
    self.schema = schema
  end

  def call(params)
    validate_input(params)
  end

  private

  attr_accessor :schema

  def validate_input(input)
    schema.call(input.to_h).to_monad
          .bind { |result| Success(result) }
          .or { |errors| Failure(errors) }
  end
end
