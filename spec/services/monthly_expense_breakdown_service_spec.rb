require 'spec_helper'

RSpec.describe MonthlyExpenseBreakdownService do
  subject { described_class.new }

  it 'organizes expenses by months' do
    user = create(:client)
    payments = []
    payments << create(:payment, transaction_date: Date.new(2022,01,01), user: user)
    payments << create(:payment, transaction_date: Date.new(2022,02,01))
    payments << create(:payment, transaction_date: Date.new(2022,02,01))
    payments << create(:payment, transaction_date: Date.new(2022,01,01))

    expect(subject.call(payments).count).to eq(2)
  end
end
