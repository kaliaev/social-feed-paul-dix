# == Schema Information
#
# Table name: votes
#
#  id         :integer          not null, primary key
#  user_id    :integer
#  type       :string(255)
#  rating     :integer
#  entry_id   :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_votes_on_user_id  (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (user_id => users.id)
#

class UpVote < Vote
  belongs_to :entry, :counter_cache => true
  
  after_create {|record| VoteActivity.write(record)}
end
