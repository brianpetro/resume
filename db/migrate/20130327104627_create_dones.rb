class CreateDones < ActiveRecord::Migration
  def change
    create_table :dones do |t|
      t.text :gist

      t.timestamps
    end
  end
end
