class AddPilotToBalloons < ActiveRecord::Migration
  def change
    add_column :balloons, :pilot, :integer
  end
end
