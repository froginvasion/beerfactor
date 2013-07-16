class FixColumnKind < ActiveRecord::Migration
  def change
    change_table :beers do |t|
      t.rename :kind, :kind_id
    end
  end
end
