class Student < ActiveRecord::Base
  attr_accessible :name
  has_many :submissions
  has_many :assignments, through: :submissions

  validates :name, presence: true


  def self.grade(assignment)
    submissions.find {|s| s.assignment_id == assign.id }.try(:grade)
  end
end
