class GroupsController < ApplicationController
  def new
    @group = Group.new
  end

  def create
    group = Group.new(group_params)
    if group.save
      redirect_to root_path
    else
      redirect_to :back
    end
  end

  def edit
    @group = Group.find(params[:id])
  end

  def update
  end

  private

  def group_params
    params.require(:group).permit(:name, {:user_ids => []})
  end
end
