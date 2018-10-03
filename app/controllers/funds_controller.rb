class FundsController < ApplicationController
  def index
  end

  def show
    @fund = Fund.find(params[:id])
  end

  def edit
  end

  def new
    @id = params[:id]
    @childfund = Fund.find(@id).children.new
  end

  def create
    @parentfund = Fund.find(params[:id])
    @childfund = @parentfund.children.create(funds_params)
    redirect_to @parentfund
  end

  def update
  end

  def delete
  end

private
  def funds_params
    params.require(:fund).permit(:name, :kind, :amount)
  end
end
