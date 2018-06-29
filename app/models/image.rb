class Image < ApplicationRecord
  acts_as_taggable
  acts_as_taggable_on :skills, :interests
  validates :link, presence: true,
                   format: URI.regexp(%w[http https])
end
