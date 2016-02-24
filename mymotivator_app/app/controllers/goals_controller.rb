# encoding: UTF-8
class GoalsController < ApplicationController

  before_action :logged_in?, only: [ :edit, :update, :destroy, :new, :create]


  def index
    @goals = Goal.all
  end

  def new
    @goal = Goal.new
    6.times {@goal.steps.build}
  end

  def show
    @goal = Goal.find_by_id(params[:id])
  end

  def create
    @goal = Goal.new(goal_params)
    @goal.user_id = current_user.id
      if @goal.save
        flash[:notice] = "Successfully creates a goal"
        redirect_to current_user
      else
        render :action => 'new'
      end
  end
  #
  # def edit
  #   @goal = Goal.find(params[:id])
  # end

  private

  def goal_params
      params.require(:goal).permit(:name, :steps_attributes)
  end

end
