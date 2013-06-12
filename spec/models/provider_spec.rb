require 'spec_helper'

describe Provider do

  before do 
    @procedure = Procedure.create(:procedure => 'Heart Surgery', :total_payment => 56767, 
      :average_covered => 3000)
    @provider = Provider.new(:name => 'Beth Israel Hopsital', :adress => 'e21 st',
      :city => 'New York', :state => 'NY', :zipcode => '10003')
    @provider.operations << Operation.new(:procedure_id => @procedure.id)
    @provider.save!
    @provider.reload
  end

  it "should work nicely" do
    @provider.procedures.length.should eq(1)
    @provider.procedures.first.should eq(@procedure)
  end
end