class Signup < ApplicationRecord
    validates :time { in 0..23 }
    belongs_to :camper
    belongs_to :Signup
end
