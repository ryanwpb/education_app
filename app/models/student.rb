class Student < ActiveRecord::Base
  has_many :parents
  has_one :teacher
end
