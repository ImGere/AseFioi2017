class User < ApplicationRecord
  has_many :hours
  has_many :clients
end
