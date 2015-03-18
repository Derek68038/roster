class PlayerStatus < ActiveRecord::Migration
  def change
    create_table :statuses do |t|
      t.string :health
      
      t.timestamps
    end
  end
end