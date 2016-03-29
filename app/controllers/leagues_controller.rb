class LeaguesController < ApplicationController
  def index
    if current_user
      @leagues = current_user.leagues
    else
      redirect_to "/users/sign_in"
    end
  end

  def new
  end

  def create
  end

  def show
    @league = League.find(params[:id])
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
