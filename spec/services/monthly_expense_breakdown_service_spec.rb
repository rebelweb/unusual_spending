require 'spec_helper'

RSpec.describe MonthlyExpenseBreakdownService do
  subject { described_class.new }

  it 'organizes expenses by months' do
    user = create(:client)
    payments = []
    payments << create(:payment, transaction_date: Date.new(2022,01,01), user: user, category: :travel)
    payments << create(:payment, transaction_date: Date.new(2022,02,01), user: user, category: :travel)
    payments << create(:payment, transaction_date: Date.new(2022,02,01), user: user)
    payments << create(:payment, transaction_date: Date.new(2022,01,01), user: user)

    matrix = subject.call(payments)

    expect(matrix.count).to eq(2)
    expect(matrix["2022-01-01"].count).to eq(2)
  end
end
