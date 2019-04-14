class DropGearsTable < ActiveRecord::Migration[5.2]
  def up
    drop_table :gears
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end
