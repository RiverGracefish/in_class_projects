require 'rails_helper'

RSpec.describe "cities/new", :type => :view do
  before(:each) do
    assign(:city, City.new(
      :city_name => "MyString",
      :city_population => "MyString",
      :city_elevation => "MyString",
      :city_state => "MyString"
    ))
  end

  it "renders new city form" do
    render

    assert_select "form[action=?][method=?]", cities_path, "post" do

      assert_select "input#city_city_name[name=?]", "city[city_name]"

      assert_select "input#city_city_population[name=?]", "city[city_population]"

      assert_select "input#city_city_elevation[name=?]", "city[city_elevation]"

      assert_select "input#city_city_state[name=?]", "city[city_state]"
    end
  end
end
