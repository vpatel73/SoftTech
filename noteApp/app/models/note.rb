class Note < ApplicationRecord
    belongs_to :user, required: true
  
    validates :title, presence: true, length: { minimum: 1 }
    validates :text, presence: true, length: { minimum: 1 }
end
