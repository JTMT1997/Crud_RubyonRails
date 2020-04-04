class CreatePosisis < ActiveRecord::Migration[6.0]
  def change
    create_table :posisis do |t|
      t.string :posisi

      t.timestamps
    end
  end
end
