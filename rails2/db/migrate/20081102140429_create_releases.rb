class CreateReleases < ActiveRecord::Migration
  def self.up
    create_table :releases do |t|
      t.string :name
      t.string :abbreviation

      t.timestamps
    end
  end

  def self.down
    drop_table :releases
  end
end
