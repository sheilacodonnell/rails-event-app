class CreateGuests < ActiveRecord::Migration[5.1]
  def change
    create_table :guests do |t|
      t.references :user, index: true, foreign_key: true
      t.references :event, index: true, foreign_key: true
    end
  end
end
