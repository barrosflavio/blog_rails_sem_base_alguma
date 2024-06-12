class Post < ApplicationRecord
  validates :title, :description, :text, presence: true
end
