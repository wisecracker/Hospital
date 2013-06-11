ThinkingSphinx::Index.define :hospital_pricing, :with => :active_record do
  indexes procedure, :sortable => true
  indexes provider_name, :sortable => true
  indexes provider_adress, :sortable => true
  indexes provider_city, :sortable => true
  indexes provider_state, :sortable => true
  indexes provider_zipcode, :sortable => true
end