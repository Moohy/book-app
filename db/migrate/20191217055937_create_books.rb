class CreateBooks < ActiveRecord::Migration[6.0]
  def change
    create_table :authors do |t|
      t.string :first_name
      t.string :last_name
      t.string :genre
      t.date :birthdate

      t.timestamps
    end
    create_table :books do |t|
      t.references :author, null: false, foreign_key: true
      t.string :name
      t.string :genre

      t.timestamps
    end
  end
end
