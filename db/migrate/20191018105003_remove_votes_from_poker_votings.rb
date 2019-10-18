class RemoveVotesFromPokerVotings < ActiveRecord::Migration[5.2]
  def change
    remove_reference :poker_votings, :votes, foreign_key: true
  end
end
