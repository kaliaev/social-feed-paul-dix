class CreateActivities < ActiveRecord::Migration[5.1]
  def change
    create_table :activities do |t|
      t.string :type, limit: 255
      t.text :content
      t.integer :user_id
      t.integer :feed_id
      t.integer :followed_user_id
      t.integer :entry_id
      t.integer :following_user_id

      t.timestamps
    end
  end
end
