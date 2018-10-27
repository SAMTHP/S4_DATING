class CreateManUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :man_users do |t|
      t.string :first_name
      t.string :last_name
      t.text :detail
      t.string :pseudo
      t.string :email
      t.belongs_to :celib, index: true
      t.timestamps
    end
  end
end
