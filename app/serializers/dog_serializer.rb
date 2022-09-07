class DogSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name,:age,:person_id
  belongs_to :person
end
