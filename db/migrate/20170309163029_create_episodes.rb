class CreateEpisodes < ActiveRecord::Migration[5.0]
  def change
    create_table :episodes do |t|
      t.date :date
      t.integer :number
      t.integer :episode_id

      t.timestamps
    end
  end
end
