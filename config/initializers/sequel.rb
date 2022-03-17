require 'sequel'

Sequel.extension :migration

Sequel.connect('postgres://localhost/unusual_spending_test?user=postgres&password=postgres')