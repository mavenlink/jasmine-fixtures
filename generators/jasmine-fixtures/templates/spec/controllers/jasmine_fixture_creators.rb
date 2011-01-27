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

  describe "user signup" do
    #Example of a standard request that would use html_for to strip <body>
    it "generates a new user signup page" do
      get :new
      response.should be_success
      save_fixture(html_for('body'), 'user-signup-page')
    end

    #Example of an ajax request that doesn't have a body tag to strip out
    describe "a user's profile" do
      it "generates successful signup xhr response" do
        xhr :post, :create, :user => { :name => 'Bob', :password => 'something', :password_confirmation => 'something' }
        response.should be_success
        save_fixture(response.body, 'user-success-ajax-response')
      end
    end
  end
end
