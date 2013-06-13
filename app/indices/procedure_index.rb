ThinkingSphinx::Index.define :procedure, :with => :active_record do
  indexes procedure, :sortable => true
  indexes average_covered, :sortable => true
  indexes total_payment, :sortable => true

end