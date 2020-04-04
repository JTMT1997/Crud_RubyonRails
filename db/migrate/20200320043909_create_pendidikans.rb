class CreatePendidikans < ActiveRecord::Migration[6.0]
  def change
    create_table :pendidikans do |t|
      t.string :pendidikan_terakhir

      t.timestamps
    end
  end
end
