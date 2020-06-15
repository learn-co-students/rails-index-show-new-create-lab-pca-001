class CreateCoupons < ActiveRecord::Migration
  def change
    create_table :coupons do |table|
      table.string :coupon_code
      table.string :store

      table.timestamps null: false
    end
  end
end