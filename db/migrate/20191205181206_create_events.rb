class CreateEvents < ActiveRecord::Migration[6.0]
  def change
    create_table :events do |t|
      t.string :title
      t.datetime :date
      t.references :user, null: false, foreign_key: true
      t.references :place, null: false, foreign_key: true
      t.string :place_detail
      t.text :details
      t.string :poster

      t.timestamps
    end
  end
end
