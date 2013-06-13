class Operation < ActiveRecord::Base
  attr_accessible :procedure_id, :provider_id
  belongs_to :procedure
  belongs_to :provider 
end
