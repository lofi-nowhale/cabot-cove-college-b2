class Resident < ApplicationRecord
  has_many :resident_courses
  has_many :courses, through: :resident_courses

  validates_presence_of :name
  validates_presence_of :age
  validates_presence_of :occupation
end
