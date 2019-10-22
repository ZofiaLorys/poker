# frozen_string_literal: true

class PokerVoting < ApplicationRecord
  has_many :votes
  validates :amount_of_votes, presence: true
end
