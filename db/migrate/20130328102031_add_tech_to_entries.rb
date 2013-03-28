class AddTechToEntries < ActiveRecord::Migration
  def change
    add_column :entries, :tech, :boolean
  end
end
