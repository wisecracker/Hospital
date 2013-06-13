ThinkingSphinx::Index.define :operation, :with => :active_record do
  indexes name, :sortable => true
  indexes adress, :sortable => true
  indexes city, :sortable => true
  indexes state, :sortable => true
  indexes zipcode, :sortable => true
end