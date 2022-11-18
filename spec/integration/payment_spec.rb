require 'rails_helper'

RSpec.describe 'payments tests', type: :feature do
  before :each do
    User.destroy_all
    @user = User.create!(name: 'Hamma', email: 'hammaazarok@gmail.com', password: '123456')
    @group = Group.create!(user: @user, name: 'foods', icon: 'food icon')
    login_user(@user)
    visit new_group_payment_path(@group)
  end

  it 'can get new transaction page with logged in user' do
    expect(page).to have_content 'Add existing transaction'
  end

  it 'can add empty inputs' do
    button = find('#submit-new')
    button.click
    expect(page).to have_content "Name can't be blank"
  end
  it 'can add proper inputs' do
    fill_in 'payment[name]', with: 'an other food'
    fill_in 'payment[amount]', with: '20'
    button = find('#submit-new')
    button.click
    expect(page).to have_content 'Transaction has been created successfully.'
  end
  it 'can add existing payment to category' do
    fill_in 'payment[name]', with: 'an other food'
    fill_in 'payment[amount]', with: '20'
    button = find('#submit-new')
    button.click

    new_group = Group.create(user: @user, name: 'entertainment', icon: 'tv icon')
    visit new_group_payment_path(new_group)
    find('#payment_id').find(:xpath, 'option[1]').select_option
    expect(page).to have_content 'an other food'
  end
end
