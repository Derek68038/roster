class EditPlayerTable < ActiveRecord::Migration
  def change
    change_table :players do |t|
      t.string :name
      t.integer :number
      t.integer :status_id
      
      t.timestamps
    end
  end
end
