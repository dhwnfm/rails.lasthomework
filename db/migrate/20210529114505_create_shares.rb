class CreateShares < ActiveRecord::Migration[5.0]
  def change
    create_table :shares do |t|
      t.string :room_name
      t.string :room_introduction
      t.integer :room_price
      t.string :room_address
      t.string :room_image

      t.timestamps
    end
  end
end
