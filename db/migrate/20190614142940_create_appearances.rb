class CreateAppearances < ActiveRecord::Migration[5.1]
  def change
    create_table :appearances do |t|

      t.timestamps
      t.integer :guest_id
      t.integer :episode_id
      t.integer :rating 
    end
  end
end
