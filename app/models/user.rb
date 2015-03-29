class User < ActiveRecord::Base
  validates :name, presence: true
  validates :login, presence: true
  validates :password, presence: true
  validates :mail, presence: true
  validates :phone, presence: true
end
