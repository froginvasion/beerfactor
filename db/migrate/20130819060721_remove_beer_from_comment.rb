class RemoveBeerFromComment < ActiveRecord::Migration
  def change
    change_table :comments do |t|
      t.remove :beer_id
      t.integer :beer_variety_id
    end
  end
end
