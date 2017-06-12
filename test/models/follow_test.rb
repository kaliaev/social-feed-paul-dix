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
  def setup
    @michael = User.new(name: 'michael').save!
    @archer = User.new(name: 'archer').save!
    @follow = Follow.new(user_id: User.find_by_name(:michael).id, followed_user_id: User.find_by_name(:archer).id)
  end
 
  test "should be valid" do 
    assert @follow.valid?
  end
  
  test "should require a followed_user_id" do 
    @follow.followed_user_id = nil
    assert_not @follow.valid?
  end
  
  test "should require a user_id" do
    @follow.user_id = nil
    assert_not @follow.valid? 
  end
end
