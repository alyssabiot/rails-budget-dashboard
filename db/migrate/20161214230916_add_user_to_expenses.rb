class AddUserToExpenses < ActiveRecord::Migration[5.0]
  def change
    add_reference :expenses, :user, foreign_key: true, index: true
  end
end
