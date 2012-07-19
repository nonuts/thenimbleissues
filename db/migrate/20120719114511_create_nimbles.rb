class CreateNimbles < ActiveRecord::Migration
  def change
    create_table :nimbles do |t|
      t.string :content
      t.integer :user_id

      t.timestamps
    end
  end
end
