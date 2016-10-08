class CreateItems < ActiveRecord::Migration[5.0]
  def change
    create_table :items do |t|
      t.string :caption
      t.date :ndate
      t.string :tags
      t.text :body

      t.timestamps
    end
  end
end
