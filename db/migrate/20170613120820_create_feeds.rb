class CreateFeeds < ActiveRecord::Migration[5.1]
  def change
    create_table :feeds do |t|
      t.string :title, limit: 255
      t.string :url, limit: 255
      t.string :feed_url, limit: 255

      t.timestamps
    end
  end
end
