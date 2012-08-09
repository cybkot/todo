class Todo < ActiveRecord::Base
  has_many :comments
end