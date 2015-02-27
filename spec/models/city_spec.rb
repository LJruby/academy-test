RSpec.describe "CRUD for City" do
  before(:each) {@city = City.new(name: 'City from rspec', short_name: 'Short City from rspec')}
  
  it "is created" do
		expect(@city).to be_new_record
  end
  
  it "is read" do
		expect(@city.name).to eq 'City from rspec'
		expect(@city.short_name).to eq 'Short City from rspec' 
  end
  
  it "is updated" do
		expect{@city.name="new City name"}.not_to raise_error  
		expect{@city.short_name="new Short City name"}.not_to raise_error
  end
  it "is deleted" do
		expect{@city.delete}.not_to raise_error  
  end
  
end
