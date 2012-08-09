class CreateRequisicions < ActiveRecord::Migration
  def self.up
    create_table :requisicions do |t|
      t.string :descripcion
      t.date :fecha
      t.integer :orden_de_compra_id
      t.integer :user_id

      t.timestamps
    end
  end

  def self.down
    drop_table :requisicions
  end
end
