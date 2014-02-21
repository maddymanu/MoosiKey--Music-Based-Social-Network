class Micropost < ActiveRecord::Base
  attr_accessible :content, :genre, :tag_list
  belongs_to :user
  belongs_to :genre
  accepts_nested_attributes_for :genre
  acts_as_taggable_on :tags



  scope :by_join_date, order("created_at DESC")

  has_many :comments, dependent: :destroy

  validates :user_id, presence: true
  validates :content, presence: true, length: { maximum: 140 }

  default_scope order: 'microposts.created_at DESC'

	def self.from_users_followed_by(user)
	    followed_user_ids = user.followed_user_ids
	    where("user_id IN (:followed_user_ids) OR user_id = :user_id",
	    	followed_user_ids: followed_user_ids, user_id: user)
	end

end
