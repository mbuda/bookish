class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :title

      t.timestamps
    end

    add_index :books, :title, unique: true
  end
end
