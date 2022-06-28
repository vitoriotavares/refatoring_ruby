require 'rails_helper'

RSpec.describe 'Rental' do
  it 'statement' do
    customer = Customer.new('test')
    customer.add_rental(Rental.new(Movie.new('Filme terror', '46582115488'), 5))
    customer.add_rental(Rental.new(Movie.new('Filme humor', '46582115488'), 5))
    customer.add_rental(Rental.new(Movie.new('Filme drama', '46582115488'), 5))

    expect(customer.statement.gsub(/[[:space:]]/, '')).to eq 'RentalRecordfortestFilmeteste0Filmeteste0Filmeteste0Amountowedis0Youearned3frequentrenterpoints'
  end
end