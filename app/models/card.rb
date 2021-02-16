class Card < ApplicationRecord
    has_many :lists, dependent: :destroy
end
