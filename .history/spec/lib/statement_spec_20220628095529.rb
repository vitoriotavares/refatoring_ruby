require 'rails_helper'

RSpec.describe 'Rental' do
  it 'statement' do
    customer = Customer.new('test')
    customer.add_rental(Rental.new(Movie.new('Filme normal', 0), 5))
    customer.add_rental(Rental.new(Movie.new('Filme lancamento', 1), 3))
    customer.add_rental(Rental.new(Movie.new('Filme infantil', 2), 2))

    puts customer.statement.chomp
    expect(customer.statement.gsub(/[[:space:]]/, '')).to eq 'RentalRecordfortestFilmeterror0Filmehumor0Filmedrama0Amountowedis0Youearned3frequentrenterpoints'
  end
end