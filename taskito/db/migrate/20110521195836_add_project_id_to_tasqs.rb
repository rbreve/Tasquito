class AddProjectIdToTasqs < ActiveRecord::Migration
  def self.up
    add_column :tasqs, :project_id, :integer
  end

  def self.down
    remove_column :tasqs, :project_id
  end
end
