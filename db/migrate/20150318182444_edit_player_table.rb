class EditPlayerTable < ActiveRecord::Migration
  def change
    add_column :players, :number, :integer
    add_column :players, :status_id, :integer
  end
end
