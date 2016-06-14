class CreateMarkers < ActiveRecord::Migration
  def change
    create_table :markers do |t|

      t.string :name
      t.string :type
      t.string :address
      t.integer :rating
      t.string :img_url
      t.float :latitude
      t.float :longitude
      t.string :yelp_id

      t.timestamps null: false
    end
  end
end
