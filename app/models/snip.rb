class Snip < ActiveRecord::Base
  validates :snippet, presence: true
end
