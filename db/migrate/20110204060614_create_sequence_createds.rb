class CreateSequenceCreateds < ActiveRecord::Migration
  def self.up
    create_table :sequence_createds do |t|
      t.string :sequence_created
      t.string :sequence_creation
      t.string :sequence_complete
      t.string :sequence_lexigram
      t.string :sequence_singular

      t.timestamps
    end
  end

  def self.down
    drop_table :sequence_createds
  end
end
