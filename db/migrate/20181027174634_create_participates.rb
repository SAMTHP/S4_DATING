class CreateParticipates < ActiveRecord::Migration[5.2]
  def change
    create_table :participates do |t|
      t.references :positive_acceptance, foreign_key: true
      t.references :conversation, foreign_key: true

      t.timestamps
    end
  end
end
