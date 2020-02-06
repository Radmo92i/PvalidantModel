class Dogsitter < ApplicationRecord
    has_many :strolls
    has_many :dogsitter, through: :strolls 
end
