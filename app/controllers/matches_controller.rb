class MatchesController < ApplicationController
  def index
  end

  def new
    @opponents = Tournament.find(params[:tournament_id]).users
  end

  def create
    participant_ids = [current_user.id, params[:opponent_id].to_i]
    @match = Match.create(tournament_id: params[:tournament_id])
    participant_ids.each do |participant_id|
      UserMatch.create(
        user_id: participant_id,
        match_id: @match.id
      )
    end
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
