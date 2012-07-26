class Auteur < ActiveRecord::Base
  attr_accessible :nom, :comment
  has_many :citations
end
