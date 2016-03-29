class League < ActiveRecord::Base
  has_many :tournaments
  has_many :user_leagues
  has_many :users, through: :user_leagues
end
