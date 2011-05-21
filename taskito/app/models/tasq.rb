class Tasq < ActiveRecord::Base
  attr_accessible :name, :status_id, :user_id
  
  has_many :user_tasqs
  has_many :users, :though => :user_tasqs
end
