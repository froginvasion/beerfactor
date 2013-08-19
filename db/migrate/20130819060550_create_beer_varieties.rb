class CreateBeerVarieties < ActiveRecord::Migration
  def change
    create_table :beer_varieties do |t|

      t.timestamps
    end
  end
end
