class Building < ActiveRecord::Base
  validation :street_address, presence: true
  validation :city, presence: true
  validation :state_id, presence: true
  validation :postal_code, presence: true
end
