class Tasq < ActiveRecord::Base
  attr_accessible :name, :status_id, :user_id, :project_id
  
  has_many :user_tasqs
  has_many :users, :through => :user_tasqs
end
