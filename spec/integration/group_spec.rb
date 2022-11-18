require 'rails_helper'

RSpec.describe 'groups test', type: :feature do
  before :each do
    @user = User.find_by(email: 'hammaazarok@gmail.com') || @user = User.create!(name: 'Hamma', email: 'hammaazarok@gmail.com', password: '123456')
    @group = Group.new(user: @user, name: 'foods', icon: 'food icon')
  end
 
  it 'can get root without login' do
    visit groups_path
    expect(page).to have_content 'Budget Savings'
  end

  it 'can get root with logged in user' do
    login_user(@user)
    visit groups_path
    expect(page).to have_content 'Total categories amount'
  end

  it 'can add catagories' do
    login_user(@user)
    @group.save
    visit groups_path
    expect(page).to have_content 'foods'
  end

  it 'can visit category page' do
    login_user(@user)
    @group.save
    visit groups_path
    click_link 'foods'
    expect(page).to have_content 'Total transactions amount'
  end
end