# frozen_string_literal: true

class ChangeColumnName < ActiveRecord::Migration[5.2]
  def change
    rename_column :poker_votings, :voters, :amount_of_votes
  end
end
