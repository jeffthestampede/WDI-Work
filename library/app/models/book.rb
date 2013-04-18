class Book < ActiveRecord::Base
  attr_accessible :author, :cover_url, :description, :isbn, :page_count, :price, :published_on, :title

  #old school
  validates_uniqueness_of :isbn

  #new school
  validates :price, :numericality => {:greater_than_or_equal_to => 0}

  validate :published_date_cant_be_in_the_future

  def published_date_cant_be_in_the_future
    if published_on.present? && published_on > Date.today
      errors.add(:published_on, "can't be in the future")
    end
  end
end
