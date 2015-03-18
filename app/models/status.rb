class Status < ActiveRecord::Base
  attr_accessible :health
  
  has_many :players
end