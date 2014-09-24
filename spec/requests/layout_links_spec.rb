require 'spec_helper'

describe "LayoutLinks" do
 it "should have a homepage at '/' " do
   get '/'
   response.should have_selector('title', :content => 'Home')
 end
 
 it "should have a contact page at " do
   get '/contact'
   response.should have_seltctor('title', :content => 'Contact')
 end
 
 it "should have a about page at " do
   get '/about'
   response.should have_seltctor('title', :content => 'About')
 end
 
 it "should have a help page at " do
   get '/help'
   response.should have_seltctor('title', :content => 'Help')
 end
 
end
