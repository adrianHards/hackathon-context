class CreateStories < ActiveRecord::Migration[7.0]
  def change
    create_table :stories do |t|
      t.string :language
      t.hstore :translation

      t.timestamps
    end
  end
end
