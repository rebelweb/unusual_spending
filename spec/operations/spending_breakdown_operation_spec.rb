require 'rails_helper'

RSpec.describe SpendingBreakdownOperation do
  subject { described_class.new }
  
  it 'returns a hash of spending by category and month' do
    create(:transaction, transaction_at: Date.new(2022, 1, 1), category: 1, amount: 125.00)
    result = subject.call(transactions: [transaction])

    expect(result.fetch(:breakdowns).count).to eq(1)
    expect(result.fetch(:breakdowns)[0][:category]).to eq(1)
    expect(result.fetch(:breakdowns)[0][:month]).to eq('1/2022')
  end
end