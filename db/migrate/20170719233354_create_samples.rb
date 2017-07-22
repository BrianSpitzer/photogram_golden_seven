class CreateSamples < ActiveRecord::Migration[5.1]
  def change
    create_table :samples do |t|
      t.text :caption
      t.string :source
      t.date :when

      t.timestamps
    end
  end
end
