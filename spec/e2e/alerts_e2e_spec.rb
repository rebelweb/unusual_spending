require 'spec_helper'

RSpec.describe 'Alerts End To End', type: :e2e do
  it 'sends alerts' do
    expect(UnusualExpensesAlertOperation).to receive(:call)

    post '/api/alerts', params: { user_id: 1 }

    expect(response.status).to eq(200)
  end
end
