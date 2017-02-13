class Note < ActiveRecord::Base
  validates :text, presence: true, on: :create
  validates_length_of :text, :minimum => 5, :maximum => 500, on: :create
end
