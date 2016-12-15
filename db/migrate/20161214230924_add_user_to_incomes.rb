class AddUserToIncomes < ActiveRecord::Migration[5.0]
  def change
    add_reference :incomes, :user, foreign_key: true, index: true
  end
end
