class Join < ActiveRecord::Migration[5.1]
  def change
    create_table :join do |t|
      t.integer :guest_id
      t.integer :episode_id
  end
end
end
