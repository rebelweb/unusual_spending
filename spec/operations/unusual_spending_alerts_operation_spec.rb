require 'spec_helper'
require './app/operations/unusual_spending_alert_operation'

RSpec.describe UnusualSpendingAlertOperation, type: :operation do
  subject { described_class.new }

  it 'returns a failure with invalid input' do
    expect(subject.call({user_id: nil}).success?).to be_falsey
  end

  it 'returns success with valid input' do
    expect(subject.call(user_id: 5).success?).to be_truthy
  end
end
