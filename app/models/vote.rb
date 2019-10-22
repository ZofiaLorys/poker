# frozen_string_literal: true

class Vote < ApplicationRecord
  belongs_to :poker_voting
  validates :username, presence: true
  validates :poker_voting_id, presence: true
  validates :value, presence: true
end
