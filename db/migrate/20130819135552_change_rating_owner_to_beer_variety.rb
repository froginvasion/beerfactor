class ChangeRatingOwnerToBeerVariety < ActiveRecord::Migration
  def change
    change_table :ratings do |t|
      t.integer :beer_variety_id
      t.remove :beer_id
    end
  end
end
