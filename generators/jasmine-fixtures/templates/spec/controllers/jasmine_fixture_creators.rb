require 'spec_helper'

#####
# Modify this file to create new Jasmine Fixtures!
# We have provided an example for you to crib off.

# Basically:
# 1) Visit a route with your controller action
# 2) Make sure it's successful
# 3) save_fixture with the response you want and the name of the fixture
#####

##### Using save_fixture
# html_for will take the <body> tag and replace it with a <div>
# to avoid nested <body> tags within the Jasmine runner

# If you have custom responses (ajax partials, JSON, etc),
# you can subvert this and use response.body or whatever is appropriate.
#####


##### Examples
describe UsersController do
  #You need to integrate_views in each of your describes to get the content of the response
  integrate_views

  #Example of a standard request that would use html_for to strip <body>
  it "generates a new user page" do
    get :new
    response.should be_success
    save_fixture(html_for('body'), 'user-signup-page')
  end

  #Example of a logged-in ajax request that doesn't have a body tag to strip out
  describe "a user's profile" do
    before do
      log_in users(:james)
    end

    it "generates a new user profile xhr" do
      xhr :get, :show, :id => users(:james).to_param
      response.should be_success
      save_fixture(response.body, 'user-profile-page')
    end
  end
end
