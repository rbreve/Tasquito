class AddUserIdToProjects < ActiveRecord::Migration
  def self.up
    add_column 'projects','user_id',:integer,:default=>1
  end

  def self.down                             
    remove_column 'projects','user_id'
  end
end
