class CreateCoupons < ActiveRecord::Migration
  def change
    create_table :coupons do |t|
      t.boolean :delivered
      t.references :promotion, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
