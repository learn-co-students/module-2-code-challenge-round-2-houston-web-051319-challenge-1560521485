class CreateEpisodeGuests < ActiveRecord::Migration[5.1]
  def change
    create_table :episode_guests do |t|
      t.belongs_to :guest
      t.belongs_to :episode
      t.integer :guest_rating

      t.timestamps
    end
  end
end
