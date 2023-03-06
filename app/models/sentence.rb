class Sentence < ApplicationRecord
  belongs_to :story, dependent: :destroy
end
