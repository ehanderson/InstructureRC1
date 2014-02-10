class Submission < ActiveRecord::Base
  attr_accessible :assignment_id, :grade, :student_id
  belongs_to :assignment
  belongs_to :student


  def self.grade(assignment)
    submissions.find {|s| s.assignment_id == assign.id }.try(:grade)
  end
end
