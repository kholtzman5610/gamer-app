class CreateDevices < ActiveRecord::Migration[5.2]
  def change
    create_table :devices do |t|
      t.string :device_name
      t.references :game, foreign_key: true

      t.timestamps
    end
  end
end
