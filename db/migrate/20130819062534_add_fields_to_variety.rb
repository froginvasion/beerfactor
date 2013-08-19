class AddFieldsToVariety < ActiveRecord::Migration
  def change
    change_table :beer_varieties do |t|
      t.integer :alcohol_percentage
      t.string :name
      t.integer :kind_id
    end
  end
end
