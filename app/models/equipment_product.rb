class EquipmentProduct < ActiveRecord::Base
  belongs_to :equipment
  belongs_to :product
end