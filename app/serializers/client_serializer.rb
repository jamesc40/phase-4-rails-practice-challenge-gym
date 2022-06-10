class ClientSerializer < ActiveModel::Serializer
  attributes :name, :age, :show_me_the_money
  
  #has_many :memberships
  #has_many :gyms
end
