class AddNewColumnToComment < ActiveRecord::Migration[5.1]
  def change
    add_reference :comments, :article, foreign_key: true
    add_column :comments, :email, :string
    add_column :comments, :message, :text
  end
end
