require 'spec_helper'

describe "LayoutLinks" do
 it "should have a homepage at '/' " do
   get '/'
   response.should have_selector('title', :content => 'Home')
 end
 
 it "should have a contact page at''/contact" do
   get '/contact'
   response.should have_seltctor('title', :content => 'Contact')
 end
 
 it "should have a about page at '/about'" do
   get '/about'
   response.should have_seltctor('title', :content => 'About')
 end
 
 it "should have a help page at '/help'" do
   get '/help'
   response.should have_seltctor('title', :content => 'Help')
 end
 
 it "should have a Sign up page at '/sign up'" do
   get '/signup'
   response.should have_seltctor('title', :content => 'Sign Up')
 end
 
 it "should have the right links on the layout" do
   visit root_path
   response.should have_seltctor('title', :content => 'Home')
 end
end
