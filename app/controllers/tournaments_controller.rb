class TournamentsController < ApplicationController
  def index
  end

  def new
    @league_id = params[:league_id]
  end

  def create
    @tournament = Tournament.create(
      name: params[:name],
      league_id: params[:league_id] 
    )
    redirect_to "/tournaments/#{@tournament.id}"
  end

  def show
    @tournament = Tournament.find(params[:id])
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
