class Project < ActiveRecord::Base
  attr_accessible :name, :repo
  
   belongs_to :user
   has_many :tasqs
end
