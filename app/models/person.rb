class Person < ApplicationRecord
    has_many :dogs , dependent: :destroy   #TASK 3: any dependency with the person is deleted
    validates :name,uniqueness: true, length: { minimum: 3, maximum: 10}
    # accepts_nested_attributes_for :dogs

end
