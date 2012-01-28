class User
  include Mongoid::Document
  include Mongoid::Timestamps

  # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  field :email, type: String
  field :name, type: String

  has_many :pages

  validates :email, presence: true, uniqueness: true
  validates :name, presence: true

  index "email", background: true

  attr_accessible :name, :email, :password, :password_confirmation, :remember_me
  
end

