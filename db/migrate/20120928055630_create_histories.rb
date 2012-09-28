class CreateHistories < ActiveRecord::Migration
  def change
    create_table :histories do |t|
      t.integer :user_id
      t.string :video_id

      t.timestamps
    end
  end
end
