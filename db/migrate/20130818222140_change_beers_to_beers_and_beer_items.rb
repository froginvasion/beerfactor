class ChangeBeersToBeersAndBeerItems < ActiveRecord::Migration
  def up
    remove_column :beers, :kind_id
    remove_column :beers, :alcoholpercentage
    add_column :beers, :brewery, :text

  end

  def down
    add_column :beers, :kind_id, :integer
    add_column :beers, :alcoholpercentage, :integer
    remove_column :beers, :brewery
  end
end
