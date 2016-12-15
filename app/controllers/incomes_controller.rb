class IncomesController < ApplicationController
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

  private
  def income_params
    params.require(:income).permit(:category, :amount, :comment, :date)
  end
end
