require 'rails_helper'

RSpec.describe Group, type: :model do
  before(:each) do
    User.destroy_all
    @user = User.create!(name: 'Hamma', email: 'hammaagazarok@gmail.com', password: '123456')
    @group = Group.create!(name: 'Group 1', user_id: @user.id)
  end

  it 'is valid with valid attributes' do
    expect(@group).to be_valid
  end

  it 'is not valid without a name' do
    @group.name = nil
    expect(@group).to_not be_valid
  end

  it 'is not valid without a user_id' do
    @group.user_id = nil
    expect(@group).to_not be_valid
  end

  it 'is not valid with a name less than 3 characters' do
    @group.name = 'Gr'
    expect(@group).to_not be_valid
  end

  it 'is not valid with a user_id less than 1' do
    @group.user_id = 0
    expect(@group).to_not be_valid
  end

  it 'is not valid with a user_id greater than 1' do
    @group.user_id = 2
    expect(@group).to_not be_valid
  end
end
