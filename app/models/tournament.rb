class Tournament < ActiveRecord::Base
  has_many :matches
  belongs_to :league
  has_many :user_tournaments
  has_many :users, through: :user_tournaments
end
