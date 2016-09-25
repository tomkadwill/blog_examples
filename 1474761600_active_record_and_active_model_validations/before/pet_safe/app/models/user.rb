class User < ApplicationRecord
  validates :age, :numericality => { :greater_than => 15 }
end
