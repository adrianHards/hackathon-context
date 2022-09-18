class AddStoryToSentences < ActiveRecord::Migration[7.0]
  def change
    add_reference :sentences, :story, null: false, foreign_key: true
  end
end
