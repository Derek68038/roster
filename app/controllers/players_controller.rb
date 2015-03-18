class PlayersController < ApplicationController
  
  def create
  end
  
  def create_results
    @player = Player.create({name: params[:name], number: params[:number], position_ids: params[:position_ids], status_id: params[:status_id]})    
    redirect_to "/home/players"
  end
  
  def index
    @players = Player.all
  end
  
  def delete
  end
  
  def delete_results
    Player.delete_all("name = '#{params[:name]}'")
    redirect_to "/home/players"
  end
  
  def find_player
  end
  
  def find_player_results
    @player = Player.find_by_name(params[:name])  
  end
  
  def update_player
  end
  
  def update_player_results
    player = Player.find_by_name(params[:name])  
    player.update_attributes(status_id: params[:status_id])
    redirect_to "/home/players"
  end
  
end
