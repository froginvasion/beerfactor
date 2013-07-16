class CreateBeers < ActiveRecord::Migration
  def change
    create_table :beers do |t|
      t.string :name
      t.text :description
      t.decimal :alcoholpercentage
      t.integer :kind_id

      t.timestamps
    end
  end
end
