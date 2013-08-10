class FixColumnKind < ActiveRecord::Migration
  def change
    change_table :beers do |t|
      t.integer :kind_id
    end
  end
end
