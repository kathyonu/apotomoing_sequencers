class CreateQuotes < ActiveRecord::Migration
  def self.up
    create_table :quotes do |t|
      t.string :text
      t.integer :sequence_created_id
      t.string :author
      t.string :lifedates
      t.string :description

      t.timestamps
    end
  end

  def self.down
    drop_table :quotes
  end
end
