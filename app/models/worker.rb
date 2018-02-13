class Worker < ApplicationRecord
  belongs_to :shop
  has_many :upgrades
end
