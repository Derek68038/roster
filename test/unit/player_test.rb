require 'test_helper'
require 'pry'

class PlayerTest < ActiveSupport::TestCase
  
  def test_add_new_player
    position = Position.new(category: "RB")
    position.save
    status = Status.new(health: "Healthy")
    status.save
    player = Player.new(name: "Frank Gore", number: 21, position_ids: 1, status_id: 1)
    assert player.name == "Frank Gore"
  end
  
  def test_delete_player
    position = Position.new(category: "RB")
    position.save
    status = Status.new(health: "Healthy")
    status.save
    player1 = Player.new(name: "Frank Gore", number: 21, position_ids: 2, status_id: 2)
    player1.save
    player2 = Player.new(name: "Roger Craig", number: 32, position_ids: 2, status_id: 2)
    player2.save
    all = Player.order(:number)
    delete = Player.delete_all("id = 1")
    assert all.length == 1
  end
  
  def test_find_player_by_id
    position = Position.new(category: "RB")
    position.save
    status = Status.new(health: "Healthy")
    status.save
    player1 = Player.new(name: "Frank Gore", number: 21, position_ids: 3, status_id: 3)
    player1.save
    player2 = Player.new(name: "Roger Craig", number: 32, position_ids: 3, status_id: 3)
    player2.save
    find = Player.find_by_id(4)
    assert find.name == "Roger Craig"
  end
  
  def test_show_all_players
    position = Position.new(category: "RB")
    position.save
    status = Status.new(health: "Healthy")
    status.save
    player1 = Player.new(name: "Frank Gore", number: 21, position_ids: 4, status_id: 4)
    player1.save
    player2 = Player.new(name: "Roger Craig", number: 32, position_ids: 4, status_id: 4)
    player2.save
    all = Player.order(:number)
    assert all.length == 2
  end
  
  def test_update_player
    position = Position.new(category: "RB")
    position.save
    status = Status.new(health: "Healthy")
    status.save
    player1 = Player.new(name: "Frank Gore", number: 21, position_ids: 5, status_id: 5)
    player1.save
    find = Player.update(7, :name => "Frankie Gore", :number => 21, :position_ids => 5, :status_id => 5)
    assert find.name == "Frankie Gore"
  end
end

