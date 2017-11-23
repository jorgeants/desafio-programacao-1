class Purchases < ActiveRecord::Migration[5.1]
	def change
		create_table :purchases do |t|
			t.string :purchaser_name
			t.string :item_description
			t.decimal :item_price, :precision => 8, :scale => 2
			t.integer :purchase_count
			t.string :merchant_address
			t.string :merchant_name
		end
	end
end
