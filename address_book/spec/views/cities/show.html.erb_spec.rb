require 'rails_helper'

RSpec.describe "cities/show", :type => :view do
  before(:each) do
    @city = assign(:city, City.create!(
      :city_name => "City Name",
      :city_population => "City Population",
      :city_elevation => "City Elevation",
      :city_state => "City State"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/City Name/)
    expect(rendered).to match(/City Population/)
    expect(rendered).to match(/City Elevation/)
    expect(rendered).to match(/City State/)
  end
end
