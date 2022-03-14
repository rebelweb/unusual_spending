class SendUnusualExpenseAlertOperation
  def initialize(transaction_repository:, expense_service:, mailer:)
    self.transaction_repository = transaction_repository
    self.expense_service = expense_service
    self.mailer = mailer
  end

  def call
    transactions = transaction_repository.get_by_user_id

    if expense_service.call(transactions)
      mailer.increased_spending_alert
    end
  end

  private

  attr_accessor :transaction_repository, :expense_service, :mailer
end