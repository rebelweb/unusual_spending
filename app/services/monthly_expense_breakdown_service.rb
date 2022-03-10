class MonthlyExpenseBreakdownService
  def call(transactions)
    months = organize_by_months(transactions)
    months = organize_months_by_categories()
  end

  private

  attr_accessor

  def organize_by_months(transactions)
    transactions.group_by { |t| Date.new(t.transaction_date.year, t.transaction_date.month, t.transaction_date.day) }
  end

  def organize_months_by_categories(months)
    x = []

    months.each do |key, value|
      x << 
    end
  end
end