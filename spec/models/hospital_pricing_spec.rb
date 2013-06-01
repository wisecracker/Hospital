require 'spec_helper'

describe HospitalPricing do

  it "should show me a procedures price" do
    hospital_pricing = HospitalPricing.new(:procedure => "Peanuts")
    hospital_pricing.procedure.should == "Peanuts"
  end

  it "should show me the hospitals state" do
    hospital_pricing = HospitalPricing.new(:provider_state => "Tiny Dancer")
    hospital_pricing.provider_state == "Tiny Danceer"
  end

  it "Should tell me the hospitals name" do
    hospital_pricing = HospitalPricing.new(:provider_name => "Beer")
    hospital_pricing.provider_name == "Beer"
  end
  it "Should tell me the hospitals adress" do
    hospital_pricing = HospitalPricing.new(:provider_adress => "Yogurt is cold but not chewy")
    hospital_pricing.provider_adress == "Yogurt is cold but not chewy"
  end

  it "should tell me the City the hospital is in" do
    hospital_pricing = HospitalPricing.new(:provider_city => "El Paso The Great")
    hospital_pricing.provider_city == "El Paso The Great"
  end

  it "should give the Zip code baby!" do
    hospital_pricing = HospitalPricing.new(:provider_zipcode => "Yo Zippo you look like a hippo!")
    hospital_pricing.provider_zipcode == "Yo Zippo you look like a hippo!"
  end

  it "should tell us how many patients are discharged safely" do
    hospital_pricing = HospitalPricing.new(:total_discharge => "Fat cats and Skinny Dogs")
    hospital_pricing.total_discharge == "Fat cats and Skinny Dogs"
  end

  it "should tell me the average coverage medicare provides" do
    hospital_pricing = HospitalPricing.new(:average_covered => "Im lost but not hungry")
    hospital_pricing.average_covered == "Im lost but not hungry"
  end

  it "should tell me how expensive the procedure actually is" do
    hospital_pricing = HospitalPricing.new(:total_payment => "cream")
    hospital_pricing.total_payment == "cream"
  end


end
