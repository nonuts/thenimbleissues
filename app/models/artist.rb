class Artist < ActiveRecord::Base
  attr_accessible :email, :name
  has_many :nimbles
end
