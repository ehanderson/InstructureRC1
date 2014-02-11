class Student < ActiveRecord::Base
  attr_accessible :name
  has_many :submissions
  has_many :assignments, through: :submissions, :order => ('id')
# this is so if there were to be and updates, the data is still laid out in the proper way
  validates :name, presence: true

end
