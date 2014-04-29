class Snip < ActiveRecord::Base
  acts_as_taggable
  validates :snippet, presence: true
  validates :title, presence: true
end
