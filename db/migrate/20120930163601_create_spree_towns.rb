class CreateSpreeTowns < ActiveRecord::Migration
  def change
    create_table :spree_towns do |t|
      t.integer :state_id
      t.string :name

      t.timestamps
    end
  end
end
