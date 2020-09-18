class AddBookToBookComments < ActiveRecord::Migration[5.2]
  def change
    add_column :book_comments, :book, :integer
  end
end
