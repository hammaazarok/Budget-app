class GroupsController < ApplicationController
  def index
    @user = current_user
    @groups = @user.groups.includes(:payments)
  end

  def show
    @group = Group.find(params[:id])
    @payments = @group.payments.order('created_at desc')
    puts @payments.length
  end

  def new
    @group = Group.new
    @icons = [
      { id: 0, url: 'https://img.icons8.com/ios/50/000000/food.png', name: 'Food' },
      { id: 1, url: 'https://img.icons8.com/ios/50/000000/transportation', name: 'Transport' },
      { id: 2, url: 'https://img.icons8.com/ios/50/000000/health-book.png', name: 'Health' },
      { id: 3, url: 'https://img.icons8.com/ios/50/000000/education.png', name: 'Education' },
      { id: 4, url: 'https://img.icons8.com/ios/50/000000/movie-projector.png', name: 'Entertainment' }
    ]
  end

  def create
    @group = Group.new(group_params)
    @group.user = current_user
    if @group.save
      redirect_to groups_url, notice: 'Category has been created successfully.'
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def group_params
    params.require(:group).permit(:name, :icon, :payment_id)
  end
end
