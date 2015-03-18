class DropPositionColumnFromPlayerTable < ActiveRecord::Migration
  def change
    remove_column :players, :position
  end
end
