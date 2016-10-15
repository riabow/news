class CreatePrices < ActiveRecord::Migration[5.0]
  def change
    create_table :prices do |t|
      t.integer :tov_id
      t.integer :supl_id
      t.float :prc
      t.datetime :d

      t.timestamps
    end
  end
end
