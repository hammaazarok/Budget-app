require 'rails_helper'

RSpec.describe User, type: :model do
  before(:each) do
    User.destroy_all
    @user = User.create!(name: 'Hamma', email: 'hammaagazarok@gmail.com', password: '123456')
  end

  it 'is valid with valid attributes' do
    expect(@user).to be_valid
  end

  it 'is not valid without a name' do
    @user.name = nil
    expect(@user).to_not be_valid
  end

  it 'is not valid without an email' do
    @user.email = nil
    expect(@user).to_not be_valid
  end

  it 'is not valid without a password' do
    @user.password = nil
    expect(@user).to_not be_valid
  end

  it 'is not valid with a name less than 3 characters' do
    @user.name = 'Ha'
    expect(@user).to_not be_valid
  end

  it 'is not valid with a password less than 6 characters' do
    @user.password = '12345'
    expect(@user).to_not be_valid
  end

  it 'is not valid with an email less than 5 characters' do
    @user.email = 'hamm'
    expect(@user).to_not be_valid
  end

  it 'is not valid with an email greater than 255 characters' do
    @user.email = 'lorem ipsum dolor sit amet, consectetur ad lorem ipsum lorem ipsum lorem ipsum lorem ipsum dolor sit amet, consectetur ad lorem ipsum lorem ipsum lorem ipsum lorem ipsum dolor sit amet, consectetur ad lorem ipsum lorem ipsum lorem ipsum'
    expect(@user).to_not be_valid
  end
end
