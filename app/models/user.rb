class User < ApplicationRecord
  enum role: { user: 0, admin: 1 }

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
