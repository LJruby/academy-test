RSpec.describe "routes for Users", :type => :routing do
  it "routes /all_users to the users controller#index action" do
    expect(get("/all_users")).
      to route_to("users#index")
  end
end
