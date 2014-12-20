class Author < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable

  require 'home_helper'
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  
  validates :username,
  :uniqueness => {
    :case_sensitive => false
  }, presence: true
  has_many :stanzas
  has_many :scripts
  has_many :whispers
end
