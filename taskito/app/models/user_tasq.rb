class UserTasq < ActiveRecord::Base
  belongs_to :user
  belongs_to :tasq
end
