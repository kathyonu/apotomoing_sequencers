class ChangeSequencesSequenceCreatedName < ActiveRecord::Migration
  def self.up
    rename_column :sequences, :sequence_created, :sequence_text
  end

  def self.down
    rename_column :sequences, :sequence_text, :sequence_created
  end
end
