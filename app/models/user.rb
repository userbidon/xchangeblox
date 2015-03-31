class User < ActiveRecord::Base
  validates :name, presence: true
  validates :password, presence: true
  validates :mail, presence: true


end
