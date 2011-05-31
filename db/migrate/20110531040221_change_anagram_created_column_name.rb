class ChangeAnagramCreatedColumnName < ActiveRecord::Migration
  def self.up
    rename_column :anagrams, :text, :anagram_text
  end

  def self.down
    rename_column :anagrams, :anagram_text, :text
  end
end
