require 'rails_helper'

RSpec.describe Payment, type: :model do
  before(:each) do
    User.destroy_all
    @user = User.create!(name: 'Hamma', email: 'hammaagazarok@gmail.com', password: '123456')
    @payment = Payment.create!(name: 'Payment 1', amount: 100, author_id: @user.id)
  end
  it 'is valid with valid attributes' do
    expect(@payment).to be_valid
  end
  it 'is not valid without a name' do
    @payment.name = nil
    expect(@payment).to_not be_valid
  end
  it 'is not valid without an amount' do
    @payment.amount = nil
    expect(@payment).to_not be_valid
  end
  it 'is not valid without an author_id' do
    @payment.author_id = nil
    expect(@payment).to_not be_valid
  end
  it 'is not valid with an amount less than 1' do
    @payment.amount = 0
    expect(@payment).to_not be_valid
  end
  it 'is not valid with an author_id less than 1' do
    @payment.author_id = 0
    expect(@payment).to_not be_valid
  end
  it 'is not valid with an author_id greater than 1' do
    @payment.author_id = 2
    expect(@payment).to_not be_valid
  end
end
