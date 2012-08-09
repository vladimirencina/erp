class Requisicion < ActiveRecord::Base
  attr_accessible :id, :descripcion,:fecha,:orden_de_compra_id,:user_id
  attr_accessible :items_attributes, :item_id, :nombre ,:marca ,:medida, :estado, :unidad_id, :proveedor_id, :seccion_id

  has_many :item_requisicions
  has_many :items , :through => :item_requisicions
  accepts_nested_attributes_for :items

end
