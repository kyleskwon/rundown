require 'rails_helper'

RSpec.describe "registered_applications/new", type: :view do
  before(:each) do
    assign(:registered_application, RegisteredApplication.new(
      :user => nil,
      :name => "MyString",
      :url => "MyString"
    ))
  end

  it "renders new registered_application form" do
    render

    assert_select "form[action=?][method=?]", registered_applications_path, "post" do

      assert_select "input#registered_application_user_id[name=?]", "registered_application[user_id]"

      assert_select "input#registered_application_name[name=?]", "registered_application[name]"

      assert_select "input#registered_application_url[name=?]", "registered_application[url]"
    end
  end
end
