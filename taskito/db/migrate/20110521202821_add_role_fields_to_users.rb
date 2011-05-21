class AddRoleFieldsToUsers < ActiveRecord::Migration
  def self.up
    add_column 'user_tasqs','role',:char, :limit=>1, :default=>'w'
  end

  def self.down                                                   
    remove_column 'user_tasqs','role'
  end
end
