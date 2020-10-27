class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :username, null: false
      t.timestamps
    end

    add_index :users, :username, unique: true
  end
end

# uniqueness -> validation (this is in the model.rb)
# unique -> database -> it's in index, not the column itself