class Story < ApplicationRecord
  has_many :sentences, dependent: :destroy
end
