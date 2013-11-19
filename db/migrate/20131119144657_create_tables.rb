class CreateTables < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.integer :author_id, null: false

      t.boolean :fiction
      t.float :price, null: false
      t.datetime :published_at, null: false
      t.float :latitude, null: false
      t.float :longitude, null: false

      t.timestamps
    end

    create_table :chapters do |t|
      t.integer :book_id, null: false
      t.string :title, null: false
      t.integer :sequence, null: false

      t.timestamps
    end

    create_table :authors do |t|
      t.string :first_name, null: false
      t.string :last_name, null: false

      t.timestamps
    end
  end
end