class AddCommentToExpenses < ActiveRecord::Migration[5.0]
  def change
    add_column :expenses, :comment, :string
  end
end
