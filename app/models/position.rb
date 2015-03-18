class Position < ActiveRecord::Base
  attr_accessible :category
  
  has_and_belongs_to_many :players, join_table: :players_positions
end