class User < ApplicationRecord
    validates :title, presence: true
   validates :startdate, uniqueness: true, presence: true
   validates :enddate, uniqueness: true, presence: true
  
   validates :memo, length: { in: 1..30 }

   scope :latest, -> {order(created_at: :desc)}
   scope :old, -> {order(created_at: :asc)}
   scope :star_count, -> {order(star: :desc)}
   
end
