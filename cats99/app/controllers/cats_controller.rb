class CatsController < ApplicationController
  def index
    @cats = Cat.all
    render :index
  end

  def show
    # if params.has_key?(:id)

    #   render :show
    # else
    #   redirect_to :
    # end
    redirect_to "https://httpstatusdogs.com/422-unprocessable-entity", allow_other_host: true
  end

  def new

  end

  def edit

  end


end
