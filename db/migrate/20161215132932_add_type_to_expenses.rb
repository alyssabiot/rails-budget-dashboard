class AddExpenseTypeToExpenses < ActiveRecord::Migration[5.0]
  def change
    add_column :expenses, :expense_type, :string
  end
end
