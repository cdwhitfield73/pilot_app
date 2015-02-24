class CreatePilots < ActiveRecord::Migration
  def change
    create_table :pilots do |t|
      t.string :firstname
      t.string :lastname
      t.string :email
      t.string :city
      t.string :phone

      t.timestamps
    end
  end
end
