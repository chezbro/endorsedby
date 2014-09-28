class CreateCelebs < ActiveRecord::Migration
  def change
    create_table :celebs do |t|
      t.string :first_name
      t.string :last_name
      t.string :name
      t.datetime :dob
      t.datetime :dod
      t.text :bio

      t.timestamps
    end
  end
end
