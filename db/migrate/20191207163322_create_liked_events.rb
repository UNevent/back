class CreateLikedEvents < ActiveRecord::Migration[6.0]
  def change
    create_table :liked_events do |t|
      t.references :event, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
