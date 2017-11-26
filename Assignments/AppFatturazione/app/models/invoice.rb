class Invoice < ApplicationRecord
  has_many :hours

  validates :hours , presence:true

end
