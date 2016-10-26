class CreatePerfils < ActiveRecord::Migration
  def change
    create_table :perfils do |t|
      t.string :name
      t.string :direcion
      t.decimal :altitud
      t.decimal :longitud
      t.string :description
      t.string :mision
      t.string :vision
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
