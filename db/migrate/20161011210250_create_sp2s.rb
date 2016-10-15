class CreateSp2s < ActiveRecord::Migration[5.0]
  def change
    create_table :sp2s do |t|
      t.string :name
      t.string :city

      t.timestamps
    end
  end
end
