class Assignment < ActiveRecord::Base
  attr_accessible :name
  has_many :submissions
  has_many :students, through: :submissions

  validates :name, presence: true



end
