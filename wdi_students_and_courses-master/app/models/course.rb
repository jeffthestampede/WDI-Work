class Course < ActiveRecord::Base
  attr_accessible :name, :students

  # this will make sure our names are unique
  validates_uniqueness_of :name

  # this will make sure the field has a value
  validates_presence_of :name

  has_many :students
end
