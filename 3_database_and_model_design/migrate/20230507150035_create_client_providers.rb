class CreateClientProviders < ActiveRecord::Migration[7.0]
  def change
    create_table :client_providers do |t|
      t.references :client, null: false, foreign_key: true
      t.references :provider, null: false, foreign_key: true
      t.string :plan

      t.timestamps
    end
  end
end
