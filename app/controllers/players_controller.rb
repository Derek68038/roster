class PlayersController < ApplicationController
  
  def create
  end
  
  def create_results
    @player = Player.create({name: params[:name], position: params[:position]})    
    redirect_to "/players"
  end
  
  def index
    @players = Player.all
  end
  
  def delete
  end
  
  def delete_results
    Player.delete(params[:id])
    redirect_to "/players"
  end
  
end
