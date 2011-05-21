class CreateUserTasqs < ActiveRecord::Migration
  def self.up
    create_table :user_tasqs do |t|
      t.integer :user_id
      t.integer :tasq_id

      t.timestamps
    end
  end

  def self.down
    drop_table :user_tasqs
  end
end
