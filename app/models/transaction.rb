class Transaction < Sequel::Model
  class << self
    def for_date_range(start_at, end_at)
      where(Sequel.lit('transaction_at >= ? and transaction_at <= ?', start_at, end_at))
    end
  end
end
