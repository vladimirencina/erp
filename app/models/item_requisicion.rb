class ItemRequisicion < ActiveRecord::Base

  belongs_to :item
  belongs_to :requisicion
  
end
