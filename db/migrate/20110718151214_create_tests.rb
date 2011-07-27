class CreateTests < ActiveRecord::Migration
  def self.up
    create_table :people do |t|
      t.string   :name
      t.integer  :age
      t.boolean  :touched, :default => false
      t.timestamps
    end
  end

  def self.down
    drop_table :tests
  end
end
