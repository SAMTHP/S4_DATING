class CreateManPhotos < ActiveRecord::Migration[5.2]
  def change
    create_table :man_photos do |t|
      t.string :url
      t.text :description
      t.belongs_to :man_user, index: true
      t.timestamps
    end
  end
end
