class AddCountryFieldToBeer < ActiveRecord::Migration
  def change
    change_table :beers do |t|
      t.integer :country_id
    end
  end
end
