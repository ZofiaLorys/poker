class PokerVoting < ApplicationRecord
 has_many :votes, optional: true
end
