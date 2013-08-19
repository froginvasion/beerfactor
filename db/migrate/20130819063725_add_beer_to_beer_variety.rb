class AddBeerToBeerVariety < ActiveRecord::Migration
  def change
    change_table :beer_varieties do |t|
      t.integer :beer_id
    end
  end
end
