class RemoveCountryFromBeer < ActiveRecord::Migration
  def change
    change_table :beers do |t|
      t.remove :country
    end
  end
end
