class StepController < ApplicationController

  def index
    @step = Step.all
  end

  def new
    @step = Step.new
  end

  def create
    @step = Step.create(step_params)
    @step.save()
  end

  def create_table
    @step = Step.create(step_params)
  end

  def show
    @step = Step.all
  end

  def edit
    @step = Step.find(params[:id])
  end

  def step_params
    params.require(:step).permit(:name)
  end

end
