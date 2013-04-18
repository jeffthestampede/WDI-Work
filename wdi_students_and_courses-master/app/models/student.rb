class Student < ActiveRecord::Base
  attr_accessible :course_id, :name, :course

  belongs_to :course
end
