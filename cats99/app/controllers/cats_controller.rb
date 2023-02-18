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
    redirect_to "https://httpstatusdogs.com/img/422.jpg", allow_other_host: true
  end

  def new

  end

  def edit

  end


end
