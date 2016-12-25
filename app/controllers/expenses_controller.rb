class ExpensesController < ApplicationController
  def new
    @expense = Expense.new()
  end

  def create
    @expense = Expense.new(expense_params)
    @expense.user = current_user
    if @expense.save
      redirect_to user_path(current_user)
    else
      render :new
    end
  end

  def destroy
    @expense = Expense.find(params[:id])
    @expense.destroy
  end

  private
  def expense_params
    params.require(:expense).permit(:expense_type, :category, :amount, :comment, :date)
  end
end
