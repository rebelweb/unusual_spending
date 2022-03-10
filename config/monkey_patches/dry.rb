require 'dry/validation'

module DryExtensions
  def fetch(key)
    to_h[key]
  end
end

Dry::Validation::Result.class_eval { include DryExtensions }