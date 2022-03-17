class SendUnusualExpenseAlertOperation
  def initialize(expense_service:, mailer:)
    self.expense_service = expense_service
    self.mailer = mailer
  end

  def call
    if expense_service.call(transactions)
      mailer.increased_spending_alert
    end
  end

  private

  attr_accessor :transaction_repository, :expense_service, :mailer

  def transactions
    @transactions ||= Transaction.for_date_range(Date.today, Date.today)
  end
end