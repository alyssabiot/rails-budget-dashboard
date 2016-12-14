class UsersController < ApplicationController
  def show
    @incomes = current_user.incomes
    @expenses = current_user.expenses
  end
end
