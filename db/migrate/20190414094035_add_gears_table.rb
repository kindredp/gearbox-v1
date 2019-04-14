class AddGearsTable < ActiveRecord::Migration[5.2]
  def change
		create_table :gears do |t|
		  t.string :name
		  t.string :box_name
		end
  end
end
