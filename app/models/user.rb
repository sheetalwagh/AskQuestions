class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :first_name, :last_name, :email, :password, :password_confirmation, :remember_me

  has_many :questions
  has_many :answers
  
  validates_presence_of :first_name, :message => 'can not be blank'
  validates_presence_of :last_name, :message => 'can not be blank'
  
  def name
    first_name + " " + last_name
  end
end
