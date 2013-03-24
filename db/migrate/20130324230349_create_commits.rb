class CreateCommits < ActiveRecord::Migration
  def change
    create_table :commits do |t|
      t.text :commit
      t.string :repo
      t.string :commit_timestamp

      t.timestamps
    end
  end
end
