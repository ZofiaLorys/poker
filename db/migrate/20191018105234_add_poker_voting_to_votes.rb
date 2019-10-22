# frozen_string_literal: true

class AddPokerVotingToVotes < ActiveRecord::Migration[5.2]
  def change
    add_reference :votes, :poker_voting, foreign_key: true
  end
end
