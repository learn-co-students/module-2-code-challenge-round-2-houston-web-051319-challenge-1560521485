class CreateAppearances < ActiveRecord::Migration[5.1]
  def change
    create_table :appearances do |t|
      t.integer :guest_rating
      t.belongs_to :guest
      t.belongs_to :episode
      t.timestamps
    end
  end
end
