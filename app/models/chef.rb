class Chef < ActiveRecord::Base
  has_many :recipes
  before_save { self.email = email.downcase }
  validates :chefname, length: { minimum: 3, maximum: 40 }, presence: true
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, length: { maximum: 100 }, presence: true, 
                    uniqueness: { case_sensitive: false },
                    format: { with: VALID_EMAIL_REGEX }
end