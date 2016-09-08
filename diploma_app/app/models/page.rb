class Page < ActiveRecord::Base
	has_many :microposts, dependent: :destroy
	has_many :passive_relationships, class_name: "Relationship",
			  foreign_key: "followed_id", dependent: :destroy
	has_many :followers, through: :passive_relationships, source: :follower
end