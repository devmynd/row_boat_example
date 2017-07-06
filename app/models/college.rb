class College < ApplicationRecord
  validates :city, presence: true
  validates :inst_url, presence: true
  validates :name, presence: true
  validates :npc_url, presence: true
  validates :ope_id, presence: true
  validates :state, presence: true
  validates :unit_id, presence: true
end
