class CreateUserFollows < ActiveRecord::Migration[6.0]
  def change
    create_table :user_follows do |t|
      t.integer :follower_id
      t.integer :user_followed_id

      t.timestamps
    end
  end
end
