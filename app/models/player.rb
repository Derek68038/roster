class Player < ActiveRecord::Base
  attr_accessible :name, :number, :position_ids, :status_id
  
  validates :name, presence: true
  validates :number, presence: true
  validates :status_id, presence: true
  validates :position_ids, presence: true
  
  belongs_to :status
  has_and_belongs_to_many :positions, join_table: :players_positions
  
  def positions_comma_separated
    position_names = []
    
    positions.each do |b|  
      position_names << b.category  
    end
    
    position_names.join("/ ")
  end
  
end