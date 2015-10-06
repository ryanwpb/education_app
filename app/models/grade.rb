class Grade < ActiveRecord::Base
  has_one :student
end
