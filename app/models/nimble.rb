class Nimble < ActiveRecord::Base
  attr_accessible :content, :user_id
  
  belongs_to :artist
  
  validates :content, :length => { :maximum => 140 }
end