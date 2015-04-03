class User < ActiveRecord::Base
  validates :name, presence: true
  validates :password, presence: true
  validates :mail, presence: true

  has_many :elements


  def is_admin?
    role == 'admin'
  end

end
