class Book < ActiveRecord::Base
  include BookSearch

  belongs_to :author
  has_many :chapters

  validates :author_id, :price, :published_at, :latitude, :longitude, presence: true
end