class CreateAddLogoColumnsToThemes < ActiveRecord::Migration[5.0]
  def up
    add_attachment :themes, :logo
  end

  def down
    remove_attachment :themes, :logo
  end
end
