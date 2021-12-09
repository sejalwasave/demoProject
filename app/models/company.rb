class Company < ApplicationRecord
  has_many :addresses
  accepts_nested_attributes_for :addresses, allow_destroy: true

  validates :name, presence: true
  validates :name, uniqueness: true
  validates :company_type, presence: true
end
