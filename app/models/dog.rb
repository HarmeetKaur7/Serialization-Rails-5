class Dog < ApplicationRecord
    validates :name,  uniqueness: true, length: { minimum: 3, maximum: 10 }
    belongs_to :person
end
