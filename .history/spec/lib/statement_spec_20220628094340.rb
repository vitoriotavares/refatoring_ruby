require 'rails_helper'

RSpec.describe 'Rental' do
  it 'statement' do
    customer = Customer.new('test')
    customer.add_rental(Rental.new(Movie.new('Filme terror', '46582115488'), 5))
    customer.add_rental(Rental.new(Movie.new('Filme humor', '46582115343'), 3))
    customer.add_rental(Rental.new(Movie.new('Filme drama', '4658367443'), 2))

    expect(customer.statement.gsub(/[[:space:]]/, '')).to eq 'RentalRecordfortestFilmeterror0Filmehumor0Filmedrama0Amountowedis0Youearned3frequentrenterpoints'
  end
end