require 'rails_helper'

RSpec.describe User, type: :model do
  before(:each) do
    User.destroy_all
    @user = User.create!(name: "Hamma", email: "hammaagazarok@gmail.com", password: "123456")
  end

  it "is valid with valid attributes" do
    expect(@user).to be_valid
  end

  it "is not valid without a name" do
    @user.name = nil
    expect(@user).to_not be_valid
  end

  it "is not valid without an email" do
    @user.email = nil
    expect(@user).to_not be_valid
  end

  it "is not valid without a password" do
    @user.password = nil
    expect(@user).to_not be_valid
  end

  it "is not valid with a name less than 3 characters" do
    @user.name = "Ha"
    expect(@user).to_not be_valid
  end

  it "is not valid with a password less than 6 characters" do
    @user.password = "12345"
    expect(@user).to_not be_valid
  end

  it "is not valid with an email less than 5 characters" do
    @user.email = "hamm"
    expect(@user).to_not be_valid
  end

  it "is not valid with an email greater than 255 characters" do
    @user.email = "lorem ipsum dolor sit amet, consectetur adipiscing elit. sed non risus. susependisse lectus tortor, dignissim sit amet, adipiscing nec, ultricies sed, dolor. cras elementum ultrices diam. maecenas ligula massa, varius a, semper congue, euismod non, mi. proin porttitor, orci nec nonummy molestie, enim est eleifend mi, non fermentum diam nisl sit amet erat. duis semper. Duis arcu massa, scelerisque vitae, consequat in, pretium a, enim. Pellentesque congue. Ut in risus volutpat libero pharetra tempor. Cras vestibulum bibendum augue. Praesent egestas leo in pede. Praesent blandit odio eu enim. Pellentesque sed dui ut augue blandit sodales. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Aliquam nibh. Mauris ac mauris sed pede pellentesque fermentum. Maecenas adipiscing ante non diam sodales hendrerit. Mauris iaculis porttitor posuere. Nullam quis ante. Etiam sit amet orci eget eros faucibus tincidunt. Duis leo. Sed fringilla mauris sit amet nibh. Donec sodales sagittis magna. Sed consequat, leo eget bibendum sodales, augue velit cursus nunc,"
    expect(@user).to_not be_valid
  end
end
