class CreateHomeMasterheads < ActiveRecord::Migration
  def change
    create_table :home_masterheads do |t|
      t.text :header_text
      t.text :byline_text
      t.string :image
      t.boolean :display, :default => true

      t.timestamps
    end
  end
end
