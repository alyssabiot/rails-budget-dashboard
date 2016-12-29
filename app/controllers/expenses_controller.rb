class ExpensesController < ApplicationController
  before_action :set_expense, only: [ :edit, :update, :destroy ]

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

  def edit
  end

  def update
    @expense.update(expense_params)
    if @expense.save
      redirect_to user_path(current_user)
    else
      render :update
    end
  end

  def destroy
    @expense.delete
    redirect_to user_path(current_user)
  end

  private
  def expense_params
    params.require(:expense).permit(:expense_type, :category, :amount, :comment, :date)
  end

  def set_expense
    @expense = Expense.find(params[:id])
  end
end
