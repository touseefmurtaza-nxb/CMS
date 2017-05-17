class AddAvatarColumnsToSupport < ActiveRecord::Migration[5.0]
  def up
    add_attachment :supports, :avatar
  end

  def down
    remove_attachment :supports, :avatar
  end
end
