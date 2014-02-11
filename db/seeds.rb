student1 = Student.create(name: "Tommmmmmmmy")
8.times{Student.create(name: Faker::Name.name)}
student2 = Student.create(name: "Bobbbbbbbby")
90.times{Student.create(name: Faker::Name.name)}

assign1 = Assignment.create(name: "Ruby")
8.times{Assignment.create(name: Faker::Company.bs)}
assign2 = Assignment.create(name: "Rails")

kids = Student.all
assignments = Assignment.all

kids.each do |kid|
  assignments.each do |assignment|
    Submission.create(student_id: kid.id,
                      assignment_id: assignment.id,
                      grade: rand(70..100))
  end
end

submissions = Submission.all
submissions.find {|s| s.assignment_id == assign1.id && s.student_id == student1.id}.update_attributes(grade: 93)
submissions.find {|s| s.assignment_id == assign2.id && s.student_id == student2.id}.update_attributes(grade: 78)

# A bit of a funky way to seed, but this way I know what these two outcomes should be.
