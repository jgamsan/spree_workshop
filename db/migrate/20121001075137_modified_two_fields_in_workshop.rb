class ModifiedTwoFieldsInWorkshop < ActiveRecord::Migration
  def up
    rename_column :spree_workshops, :price, :price_for_car
    add_column :spree_workshops, :price_for_moto, :decimal, :precision => 6, :scale => 2, :default => 0.00
  end

  def down
  end
end
