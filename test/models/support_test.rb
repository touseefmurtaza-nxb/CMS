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

require 'test_helper'

class SupportTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
