class CreateAboutPages < ActiveRecord::Migration
  def change
    create_table :about_pages do |t|
      t.text :headline
      t.text :about_us_header
      t.text :about_us_text
      t.text :contact_us_header
      t.text :contact_us_text

      t.timestamps
    end
  end
end
