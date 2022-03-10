class MonthlyExpenseBreakdownService
  def call(transactions)
    months = organize_by_months(transactions)
    months = organize_months_by_categories(months)
    category_totals(months)
  end

  private

  def organize_by_months(transactions)
    transactions.group_by { |t| Date.new(t.transaction_date.year, t.transaction_date.month, t.transaction_date.day) }
  end

  def organize_months_by_categories(months)
    by_category = {}

    months.each do |key, value|
      by_category[key.to_s] = value.group_by(&:category)
    end

    by_category
  end

  def category_totals(months)
    by_category = {}

    months.each do |month, categories|
      totals = {}
      categories.each do |category,transactions|
        totals[category] = transactions.sum(&:amount)
      end
      by_category[month] = totals
    end

    by_category
  end
end
