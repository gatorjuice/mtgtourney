class Match < ActiveRecord::Base
  has_many :games
  has_many :users
  belongs_to :tournament
end
