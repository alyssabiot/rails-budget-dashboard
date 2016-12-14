class ExpensesController < ApplicationController
  def new
    @expense = Expense.new()
  end

  def create
    @expense = Expense.new(expense_params)
    @expense.user = current_user
    if @expense.save
      redirect_to root_path
    else
      render :new
    end
  end

  private
  def expense_params
    params.require(:expense).permit(:category, :amount)
  end
end
