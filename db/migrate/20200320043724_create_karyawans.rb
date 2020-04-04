class CreateKaryawans < ActiveRecord::Migration[6.0]
  def change
    create_table :karyawans do |t|
      t.string :nama
      t.integer :pendidikan_id
      t.integer :posisi_id

      t.timestamps
    end
  end
end
