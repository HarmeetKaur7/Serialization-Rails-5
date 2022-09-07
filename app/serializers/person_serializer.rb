class PersonSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :age,:id
  has_many :dogs
end
