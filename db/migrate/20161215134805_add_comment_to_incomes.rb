class AddCommentToIncomes < ActiveRecord::Migration[5.0]
  def change
    add_column :incomes, :comment, :string
  end
end
