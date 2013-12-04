class CreateTableBooksCategories < ActiveRecord::Migration
  def change
    create_table :books_categories, id: false do |t|
      t.belongs_to :book
      t.belongs_to :category
    end

    add_index :books_categories, [:book_id, :category_id], unique: true
  end
end
