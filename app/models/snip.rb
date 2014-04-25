class Snip < ActiveRecord::Base
  validates :snippet, presence: true
  validates :title, presence: true
end
