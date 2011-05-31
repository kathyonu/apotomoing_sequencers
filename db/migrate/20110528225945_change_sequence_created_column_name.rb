class ChangeSequenceCreatedColumnName < ActiveRecord::Migration
  def self.up
    rename_column :sequence_createds, :sequence_created, :sequence_text
  end

  def self.down
    rename_column :sequence_createds, :sequence_text, :sequence_created
  end
end
