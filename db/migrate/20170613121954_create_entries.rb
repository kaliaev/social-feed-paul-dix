class CreateEntries < ActiveRecord::Migration[5.1]
  def change
    create_table :entries do |t|
      t.references :feed, foreign_key: true
      t.string :title, limit: 255
      t.string :url, limit: 255
      t.text :content
      t.datetime :published_date
      t.integer :up_votes_count
      t.integer :down_votes_count
      t.integer :comments_count

      t.timestamps
    end
  end
end
