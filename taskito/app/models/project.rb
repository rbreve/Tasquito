class Project < ActiveRecord::Base
  attr_accessible :name, :repo
  
   belongs_to :user
end
