class LeaguesController < ApplicationController
  def index
    @leagues = current_user.leagues
  end

  def new
  end

  def create
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
