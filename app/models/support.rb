class Support < ActiveRecord::Base
  validates :support_type, :size, presence: true
  validates :support_type, inclusion: { in: %w(mini medium large), message: "%{value} is not a valid support" }
end
