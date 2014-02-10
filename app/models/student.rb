class Student < ActiveRecord::Base
  attr_accessible :name
  has_many :submissions
  has_many :assignments, through: :submissions

  validates :name, presence: true


end
