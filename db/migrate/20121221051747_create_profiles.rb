class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.string :name
      t.integer :age
      t.text :about_me

      t.timestamps
    end
  end
end
