class Item < ApplicationRecord
  belongs_to :list

  validates_presence_of :name

  def to_s
  	name
  end
end
