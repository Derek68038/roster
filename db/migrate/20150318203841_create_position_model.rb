class CreatePositionModel < ActiveRecord::Migration
  def change
    create_table :positions do |t|
      t.string :category
      
      t.timestamps
    end
  end
end
