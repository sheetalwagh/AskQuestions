class Question < ActiveRecord::Base
  belongs_to :user
  has_many :answers, :dependent => :destroy
  
  before_update :check_user_question
  before_destroy :check_user_question
  
  def check_user_question
    #if user.id == current_user
    #  errors.add(:base, " You don't have permission")
    #  return false
    #end
  end
end
