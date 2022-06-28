require 'rails_helper'

RSpec.describe 'Rental' do
  it 'statement' do
    customer = Customer.new('test')
    customer.add_rental(Rental.new(Movie.new('Filme teste', '46582115488'), 5))

    expect(customer.statement.chomp).to eq 'algumacoisa'
  end
end