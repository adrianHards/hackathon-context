class CreateStories < ActiveRecord::Migration[7.0]
  def change
    create_table :stories do |t|
      t.string :name
      t.boolean :published
      # t.hstore :spanish
      # t.hstore :french
      # t.string :difficulty
      # t.string :language
      # t.string :english, array: true
      t.string :photo
      t.text :summary

      t.timestamps
    end
  end
end
