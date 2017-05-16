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

require 'test_helper'

class ThemeTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
