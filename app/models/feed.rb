# == Schema Information
#
# Table name: feeds
#
#  id         :integer          not null, primary key
#  title      :string(255)
#  url        :string(255)
#  feed_url   :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Feed < ApplicationRecord
  has_many :entries
  has_many :subscriptions
  has_many :users, :through => :subscriptions
end
