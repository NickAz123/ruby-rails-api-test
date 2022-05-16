class CreateAlbums < ActiveRecord::Migration[7.0]
  def change
    create_table :albums do |t|
      t.string :title
      t.text :artist
      t.text :genre
      t.integer :rating

      t.timestamps
    end
  end
end
