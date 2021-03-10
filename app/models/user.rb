class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :name,       null: false
  validates :profile,    null: false
  validates :occupation, null: false
  validates :position,   null: false
  
  has_many :prototypes
  has_many :comments
end
