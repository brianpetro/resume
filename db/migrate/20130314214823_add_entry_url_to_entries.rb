class AddEntryUrlToEntries < ActiveRecord::Migration
  def change
    add_column :entries, :entry_url, :string
  end
end
