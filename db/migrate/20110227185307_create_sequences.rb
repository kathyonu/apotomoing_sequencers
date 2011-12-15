class CreateSequences < ActiveRecord::Migration
  def self.up
    create_table :sequences do |t|
      t.string :sequence_text
      t.string :sequence_creation
      t.string :sequence_complete
      t.string :sequence_lexigram
      t.string :sequence_singular
      t.string :sequence_lense
      t.string :description
      t.string :reference
      t.boolean :anagram
      t.boolean :name
      t.boolean :phrase
      t.boolean :research
      t.boolean :external
      t.boolean :internal

      t.timestamps
    end
  end

  def self.down
    drop_table :sequences
  end
end
