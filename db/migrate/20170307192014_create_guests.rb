class CreateGuests < ActiveRecord::Migration[5.0]
  def change
    create_table :guests do |t|
      t.string :name
      t.string :occupation
      t.integer :guest_id
    t.integer :episode_rating

      t.timestamps
    end
  end
end
