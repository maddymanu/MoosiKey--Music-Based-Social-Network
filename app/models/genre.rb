class Genre < ActiveRecord::Base
  attr_accessible :content
  has_many :microposts

  accepts_nested_attributes_for :microposts
end
