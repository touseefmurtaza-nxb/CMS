# == Schema Information
#
# Table name: supports
#
#  id                  :integer          not null, primary key
#  title               :string
#  description         :text
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#  avatar_file_name    :string
#  avatar_content_type :string
#  avatar_file_size    :integer
#  avatar_updated_at   :datetime
#

class Support < ApplicationRecord
	has_attached_file :avatar, styles: { original: "300x650>", thumbnail: "200x100>" }, default_url: "assets/missing.png"
	validates_attachment :avatar, content_type: { content_type: ["image/jpeg", "image/gif", "image/png"] }
end
