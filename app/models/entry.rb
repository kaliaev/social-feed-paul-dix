# == Schema Information
#
# Table name: entries
#
#  id               :integer          not null, primary key
#  feed_id          :integer
#  title            :string(255)
#  url              :string(255)
#  content          :text
#  published_date   :datetime
#  up_votes_count   :integer
#  down_votes_count :integer
#  comments_count   :integer
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#
# Indexes
#
#  index_entries_on_feed_id  (feed_id)
#
# Foreign Keys
#
#  fk_rails_...  (feed_id => feeds.id)
#

class Entry < ApplicationRecord
  belongs_to :feed
  has_many :comments
end
