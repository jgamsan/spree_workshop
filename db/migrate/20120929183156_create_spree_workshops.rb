class CreateSpreeWorkshops < ActiveRecord::Migration
  def change
    create_table :spree_workshops do |t|

      t.timestamps
    end
  end
end
