class ActivePassword < ActiveRecord::Base
  attr_accessible :emission, :expiration, :url
end
