require 'spec_helper'

RSpec.describe Transaction do
  describe '#for_date_range' do
    it 'pulls transactions within the date range' do
      transaction = create(:transaction)
      start_at = Time.now - 1000
      end_at = Time.now + 1000
      transactions = Transaction.for_date_range(start_at, end_at)
      expect(transactions).to include(transaction)
    end
  end
end