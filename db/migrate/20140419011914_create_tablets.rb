class CreateTablets < ActiveRecord::Migration
  def change
    create_table :tablets do |t|
      t.string :headline
      t.text :short_description
      t.text :long_description
      t.boolean :display
      t.string :image
      t.string :slug
      t.integer :order

      t.timestamps
    end
  end
end
