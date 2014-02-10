module HomeHelper

  def grade(assignment)
    submissions.find {|s| s.assignment_id == assign.id }.try(:grade)
  end
end
