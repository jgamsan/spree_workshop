class CreateSpreeWorkshops < ActiveRecord::Migration
  def change
    create_table :spree_workshops do |t|
      t.string :name
      t.string :address
      t.integer :town_id
      t.string :phone
      t.string :fax
      t.string :email
      t.string :notes
      t.decimal :price, :precision => 6, :scale => 2, :default => 0.00

      t.timestamps
    end
  end
end
