class CreateEndorsements < ActiveRecord::Migration
  def change
    create_table :endorsements do |t|
      t.integer :celeb_id
      t.string :brand
      t.string :amount
      t.text :contract
      t.string :image

      t.timestamps
    end
  end
end
