class AddLenseColumn < ActiveRecord::Migration
  def self.up
    add_column :sequences, :lense, :string, :limit => 75
  end

  def self.down
    remove_column :sequences, :lense, :string
  end
end
