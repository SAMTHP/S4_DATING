class CreateNegativeAcceptances < ActiveRecord::Migration[5.2]
  def change
    create_table :negative_acceptances do |t|
      t.references :man_user, foreign_key: true
      t.references :woman_user, foreign_key: true

      t.timestamps
    end
  end
end
