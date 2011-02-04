class CreateAnagrams < ActiveRecord::Migration
  def self.up
    create_table :anagrams do |t|
      t.string :text
      t.integer :sequence_created_id
      t.string :description
      t.string :reference

      t.timestamps
    end
  end

  def self.down
    drop_table :anagrams
  end
end
