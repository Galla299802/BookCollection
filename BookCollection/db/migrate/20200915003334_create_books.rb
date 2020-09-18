class CreateBooks < ActiveRecord::Migration[6.0]
  def change
    create_table :books do |t|
      t.string "title"
      t.string "author"
      t.string "genre"
      t.decimal  "price", precision: 5, scale: 2
      t.date "publishedDate"
    end
  end

  def down
    drop_table :books
  end
end
