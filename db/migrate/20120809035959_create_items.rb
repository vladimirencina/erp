class CreateItems < ActiveRecord::Migration
  def self.up
    create_table :items do |t|
      t.string :nombre
      t.string :marca
      t.integer :medida
      t.string :estado
      t.integer :unidad_id
      t.integer :proveedor_id
      t.integer :seccion_id

      t.timestamps
    end
  end

  def self.down
    drop_table :items
  end
end
