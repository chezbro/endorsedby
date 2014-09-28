class AddLinksToEndnksToEndorsements < ActiveRecord::Migration
  def change
    add_column :endorsements, :links, :string
    add_column :endorsements, :other, :text
  end
end
