class Player < ActiveRecord::Base
  attr_accessible :name, :number, :status_id
  
  validates :name, presence: true
  validates :number, presence: true
  validates :status_id, presence: true
  
  belongs_to :status
  has_and_belongs_to_many :positions, join_table: :players_positions
end