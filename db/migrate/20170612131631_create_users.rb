class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :name, limit: 255
      t.string :email, limit: 255
      t.string :bio, limit: 255

      t.timestamps
    end
  end
end
