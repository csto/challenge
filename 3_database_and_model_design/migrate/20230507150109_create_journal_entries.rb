class CreateJournalEntries < ActiveRecord::Migration[7.0]
  def change
    create_table :journal_entries do |t|
      t.references :client, null: false, foreign_key: true
      t.text :content, null: false

      t.timestamps
    end

    add_index :journal_entries, :created_at
  end
end
