class SpendingBreakdownOperation
  include Dry::Monads::Result::Mixin

  Schema = Dry::Validation::Contract.build do
    schema do
      required(:transactions)
    end
  end

  def initialize(schema: Schema)
    self.schema = schema
  end

  def call

  end

  private

  attr_accessor :schema
end