class PlayersController < ApplicationController
  
  def home
    
  end
  
  def index
    @players = Player.order(:number)
  end
  
  def new
    @player = Player.new
  end
  
  def create
    @player = Player.new(params[:player])
    if @player.save
      redirect_to "/players"
    else
      render "new"
    end
  end
  
  def show
    @player = Player.find_by_id(params[:id])  
  end
  
  def destroy
    Player.delete_all("id = '#{params[:id]}'")
    redirect_to "/players"
  end
  
  def edit
    @player = Player.find_by_id(params[:id])
  end
  
  def update
    Player.update(params[:id], params[:player])
    redirect_to "/players"
  end
  
end
