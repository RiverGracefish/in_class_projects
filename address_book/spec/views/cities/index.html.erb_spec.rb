require 'rails_helper'

RSpec.describe "cities/index", :type => :view do
  before(:each) do
    assign(:cities, [
      City.create!(
        :city_name => "City Name",
        :city_population => "City Population",
        :city_elevation => "City Elevation",
        :city_state => "City State"
      ),
      City.create!(
        :city_name => "City Name",
        :city_population => "City Population",
        :city_elevation => "City Elevation",
        :city_state => "City State"
      )
    ])
  end

  it "renders a list of cities" do
    render
    assert_select "tr>td", :text => "City Name".to_s, :count => 2
    assert_select "tr>td", :text => "City Population".to_s, :count => 2
    assert_select "tr>td", :text => "City Elevation".to_s, :count => 2
    assert_select "tr>td", :text => "City State".to_s, :count => 2
  end
end
