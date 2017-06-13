class CreateVotes < ActiveRecord::Migration[5.1]
  def change
    create_table :votes do |t|
      t.references :user, foreign_key: true
      t.string :type, limit: 255
      t.integer :rating
      t.integer :entry_id

      t.timestamps
    end
  end
end
