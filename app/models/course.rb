class Course < ApplicationRecord
  # belongs_to :resident_courses
  has_many :resident_courses
  has_many :residents, through: :resident_courses

  validates_presence_of :name
end
