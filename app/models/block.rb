class Block < ActiveRecord::Base
  validates :block_type, :size, :support_type, presence: true
  validates :support_type, inclusion: { in: %w(mini medium large), message: "%{value} is not a valid support" }
end
