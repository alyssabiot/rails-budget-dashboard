class IncomesController < ApplicationController
  before_action :set_income, only: [:edit, :update, :destroy]

  def new
    @income = Income.new()
  end

  def create
    @income = Income.new(income_params)
    @income.user = current_user
    if @income.save
      redirect_to user_path(current_user)
    else
      render :new
    end
  end

  def edit
  end

  def update
    @income.update(income_params)
    if @income.save
      redirect_to user_path(current_user)
    else
      render :update
    end
  end

  def destroy
    @income.delete
    redirect_to user_path(current_user)
  end

  private
  def income_params
    params.require(:income).permit(:category, :amount, :comment, :date)
  end

  def set_income
    @income = Income.find(params[:id])
  end
end
