class CreateUserFollows < ActiveRecord::Migration[6.0]
  def change
    create_table :user_follows do |t|
      t.references :follower, null: false
      t.references :user_followed, null: false

      t.timestamps
    end
  end
end
