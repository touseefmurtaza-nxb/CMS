# == Schema Information
#
# Table name: themes
#
#  id                :integer          not null, primary key
#  title             :string
#  description       :text
#  link_color        :string
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#  logo_file_name    :string
#  logo_content_type :string
#  logo_file_size    :integer
#  logo_updated_at   :datetime
#

class Theme < ApplicationRecord
	has_attached_file :logo, styles: { original: "130x69>", thumbnail: "100x50>" }, default_url: "assets/missing.png"
	validates_attachment :logo, content_type: { content_type: ["image/jpeg", "image/gif", "image/png"] }
end
