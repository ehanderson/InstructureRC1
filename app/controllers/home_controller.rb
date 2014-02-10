class HomeController < ApplicationController
  def index
    render :index
  end

  def data
    Benchmark.bm do |bm|
      bm.report do
        @assignments = Assignment.all
        @students = Student.includes(:assignments)
      end
    end
    render :show
  end
end

#.includes allows the database to conly be called once and thus preventing any calls from the view


  # previously I was going from assignment to students to submissions,
  # this requires a find_by which took too much time. This route makes
  # more sense to get the same data

# I initially would have thought that indexing or a simple join would optimize
# this; however, with the way the models are set up this make sense.
