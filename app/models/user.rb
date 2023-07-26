class User < ApplicationRecord
  has_many :posts
  validates :name, presence: { message: 'không được để trống' }
  validates :email, presence: { message: 'không được để trống' }, 
            format: { with: /\A[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,}\z/,
            message: "định dạng email không hợp lệ" }
end
