class College < ApplicationRecord
  validates :city, presence: true
  validates :name, presence: true
  validates :ope_id, presence: true
  validates :state, presence: true
  validates :unit_id, presence: true
end
