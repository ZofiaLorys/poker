class CreatePokerVotings < ActiveRecord::Migration[5.2]
  def change
    create_table :poker_votings do |t|
      t.integer :voters
      t.references :votes, foreign_key: true

      t.timestamps
    end
  end
end
