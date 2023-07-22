class Post < ApplicationRecord
  belongs_to :user
  validates :title, presence: { message: 'không được để trống' }
  validates :content, presence: { message: 'không được để trống' }
end
