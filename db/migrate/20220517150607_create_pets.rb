class CreatePets < ActiveRecord::Migration[6.1]
  def change
    create_table :pets do |t|
      t.string :name
      t.date :date_found
      t.string :location
      t.string :species

      t.timestamps
    end
  end
end
