class Client < ApplicationRecord
  has_many :memberships
  has_many :gyms, through: :memberships

  def show_me_the_money
    memberships.sum(:charge)   
  end

end
