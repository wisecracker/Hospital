ThinkingSphinx::Index.define :hospital_pricings, :with => :active_record do
  indexes procedure, :sortable => true
  # indexes body
end