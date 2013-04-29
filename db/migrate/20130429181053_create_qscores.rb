class CreateQscores < ActiveRecord::Migration
  def change
    create_table :qscores do |t|
      t.integer :resource_id
      t.integer :tag_id
      t.float :value

      t.timestamps
    end
  end
end
