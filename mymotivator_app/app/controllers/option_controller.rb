class OptionController < ApplicationController
  def index
    @options = Option.all
  end

  def show
    @option = Option.friendly.find(params[:id])
  end

end
