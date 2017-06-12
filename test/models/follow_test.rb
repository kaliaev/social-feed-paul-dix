# == Schema Information
#
# Table name: follows
#
#  id               :integer          not null, primary key
#  user_id          :integer
#  followed_user_id :integer
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#
# Indexes
#
#  index_follows_on_followed_user_id              (followed_user_id)
#  index_follows_on_user_id                       (user_id)
#  index_follows_on_user_id_and_followed_user_id  (user_id,followed_user_id) UNIQUE
#

require 'test_helper'

class FollowTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
