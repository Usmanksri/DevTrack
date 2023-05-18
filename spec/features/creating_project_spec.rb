require "rails_helper"

RSpec.feature "Creating Projects" do
scenario "A user create a project" do
    user = User. # Assuming you have a factory called `:user` defined for creating test users
    login_as(user) # Assuming you have a method called `login_as` to simulate user login

    visit "/"
    click_link "Add Project"
    fill_in "Name", with: "Testing Project"
    fill_in "Description", with: "Lorem Ipsum"

    click_button "Create Project"

    expect(page).to have_content("Project added Successfully")
    expect(page.current_path).to eq(projects_path)

end
end