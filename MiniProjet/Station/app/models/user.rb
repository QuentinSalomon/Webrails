class User < ActiveRecord::Base
  has_and_belongs_to_many :roles
  has_many :vehiculs
  before_save(:save_role_user)

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

 def save_role_user
   if !has_role?(:user)
     self.roles << Role.find_by(:name => 'user')
   end
 end

  def has_role?(role)
    return self.roles.find_by(:name => role.to_s.camelize)
  end


  def roles_as_text
    texte=''
    self.roles.each do |role|
      texte=texte + role.name + " "
    end
    return texte
  end
end
