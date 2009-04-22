class CreateSolutions < ActiveRecord::Migration
  def self.up
    create_table :solutions do |t|
      t.string :title
      t.text :description
      t.datetime :start_time
      t.datetime :end_time
      t.integer :rating

      t.timestamps
    end
  end

  def self.down
    drop_table :solutions
  end
end
