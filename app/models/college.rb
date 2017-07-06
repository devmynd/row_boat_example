class College < ApplicationRecord
  validates :city, presence: true
  validates :name, presence: true
  validates :ope_id, presence: true, uniqueness: true
  validates :state, presence: true
end
