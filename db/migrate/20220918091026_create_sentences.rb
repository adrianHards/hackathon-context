class CreateSentences < ActiveRecord::Migration[7.0]
  def change
    create_table :sentences do |t|
      t.text :english
      t.text :spanish

      t.timestamps
    end
  end
end
