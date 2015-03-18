class Player < ActiveRecord::Base
  attr_accessible :name, :number, :status_id
end