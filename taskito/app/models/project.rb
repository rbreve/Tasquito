class Project < ActiveRecord::Base
  attr_accessible :name, :repo
  
  belongs_to :user_project
  belongs_to :project, :through => :user_project
  
end
