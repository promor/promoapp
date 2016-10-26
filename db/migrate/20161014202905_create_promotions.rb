class CreatePromotions < ActiveRecord::Migration
  def change
    create_table :promotions do |t|
      t.string :title
      t.text :description
      t.integer :number
      t.date :expiration

      t.timestamps null: false
    end
  end
end
