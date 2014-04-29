class Snip < ActiveRecord::Base
  acts_as_taggable_on
  validates :snippet, presence: true
  validates :title, presence: true
end
