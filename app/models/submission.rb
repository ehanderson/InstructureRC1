class Submission < ActiveRecord::Base
  attr_accessible :assignment_id, :grade, :student_id
  belongs_to :assignment
  belongs_to :student

  validates :student_id, presence: true
  validates :assignment_id, presence: true
  validates :grade, presence: true

end
