class CreateBalloons < ActiveRecord::Migration
  def change
    create_table :balloons do |t|
      t.string :name
      t.string :size
      t.string :number

      t.timestamps
    end
  end
end
