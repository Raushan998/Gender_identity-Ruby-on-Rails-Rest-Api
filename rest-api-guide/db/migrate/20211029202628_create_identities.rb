class CreateIdentities < ActiveRecord::Migration[6.1]
  def change
    create_table :identities do |t|
      t.integer :gender

      t.timestamps
    end
  end
end
