class CreateThemes < ActiveRecord::Migration[5.0]
  def change
    create_table :themes do |t|
      t.string :title
      t.text :description
      t.string :link_color

      t.timestamps
    end
  end
end
