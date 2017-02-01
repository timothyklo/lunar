class Note < ActiveRecord::Base
  validates :text, presence: true, on: :create
  validates :text, length: { minimum: 5 }, on: :create
  validates :text, length: { maximum: 500 }, on: :create
end
