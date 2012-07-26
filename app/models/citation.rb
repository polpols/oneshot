class Citation < ActiveRecord::Base
  attr_accessible :data, :theme, :url, :auteur_id
  belongs_to :auteur
end
