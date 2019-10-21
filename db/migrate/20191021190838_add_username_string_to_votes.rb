class AddUsernameStringToVotes < ActiveRecord::Migration[5.2]
  def change
    add_column :votes, :username, :string
  end
end
