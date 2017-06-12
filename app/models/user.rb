# == Schema Information
#
# Table name: users
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  email      :string(255)
#  bio        :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class User < ApplicationRecord
  has_many :follows
  has_many :followed_users, :through => :follows
  has_many :followings, :class_name => "Follow", :foreign_key => :followed_user_id
  has_many :followers, :through => :followings, :source => :user
  has_many :comments
  has_many :votes
  has_many :subscriptions
  has_many :feeds, :through => :subscriptions
  has_many :activities 
  has_many :followed_activities, :class_name => "Activity", 
    :foreign_key => :following_user_id
end
