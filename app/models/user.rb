class User < ApplicationRecord
    validates :username, length: {minimum:6, maximum:12}, presence:true, uniqueness: true
    validates :age, :numericality => {greater_than_or_equal_to: 18}
end
