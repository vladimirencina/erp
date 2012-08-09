class Item < ActiveRecord::Base
  attr_accessible  :id, :nombre ,:marca ,:medida, :estado, :unidad_id, :proveedor_id, :seccion_id
  has_many :item_requisicions
  has_many :requisicions , :through => :item_requisicions
end
