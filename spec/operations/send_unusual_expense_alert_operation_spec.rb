require 'spec_helper'

RSpec.describe SendUnusualExpenseAlertOperation do
  let(:transaction_repository) { double('transaction_repo') }
  let(:increased_expense_service) { double('increased_expense_service') }
  let(:mailer) { double('mailer') }

  subject { described_class.new(transaction_repository: transaction_repository,
                                expense_service: increased_expense_service,
                                mailer: mailer) }

  it 'sends the alert if spending has increased' do
    allow(increased_expense_service).to receive(:call).and_return(true)

    expect(transaction_repository).to receive(:get_by_user_id)
    expect(mailer).to receive(:increased_spending_alert)
    subject.call
  end

  it "doesn't send the alert if spending hasn't increased" do
    allow(increased_expense_service).to receive(:call).and_return(false)

    expect(transaction_repository).to receive(:get_by_user_id)
    expect(mailer).not_to receive(:increased_spending_alert)
    subject.call
  end
end
