class User < ApplicationRecord
    validates :title, presence: true
   validates :startdate, uniqueness: true, presence: true
   validates :enddate, uniqueness: true, presence: true
  
   validates :memo, length: { in: 1..30 }
end
