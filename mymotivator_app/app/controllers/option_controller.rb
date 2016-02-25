class OptionController < ApplicationController
  def index
    @options = Option.all
  end

  def show
    @option = Option.find(params[:id])
  end
end
