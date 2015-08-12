class Recipe < ActiveRecord::Base
  belongs_to :chef
  validates :chef_id, presence: true
  validates :name, length: { minimum: 5, maximum: 100 }, presence: true
  validates :summary, length: { minimum: 10, maximum: 150 }, presence: true
  validates :description, length: { minimum: 20, maximum: 500 }, presence: true
end