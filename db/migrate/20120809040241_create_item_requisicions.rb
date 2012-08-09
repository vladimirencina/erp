class CreateItemRequisicions < ActiveRecord::Migration
  def self.up
    create_table :item_requisicions do |t|
      t.integer :cantidad
      t.string :prioridad
      t.integer :item_id
      t.integer :requisicion_id

      t.timestamps
    end
  end

  def self.down
    drop_table :item_requisicions
  end
end
