class Agency < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  has_many :overflows

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
