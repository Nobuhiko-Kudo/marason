class User < ActiveRecord::Base
  has_many :hobbies, through: :users_hobbies
  has_many :users_hobbies

  accepts_nested_attributes_for :hobbies

  def self.search(name, hobby)
    User.joins(:hobbies)
        .order(:id)
        .where('users.name LIKE ? AND hobbies.id = ?',
               "%#{name}%",
               "#{hobby}")
  end

  def self.search_name(name)
    User.joins(:hobbies)
        .distinct
        .order(:id)
        .where('users.name LIKE ?',"%#{name}%")
  end

  def self.search_hobby(hobby)
    User.joins(:hobbies)
        .distinct
        .where('hobbies.id = ?',"#{hobby}")
  end

  def self.result(id)
    User.joins(:hobbies)
        .distinct
        .order(:id)
        .where('users.id = ?',"#{id}")
  end

end
