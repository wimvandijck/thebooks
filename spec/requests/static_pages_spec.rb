require 'spec_helper'

describe "StaticPages" do
  describe "GET /static_pages" do

  	describe "Home Page" do

  		it "should have the h1 'The Books'" do
  			visit '/static_pages/home'
  			page.should have_selector('h1', :text => "The Books")
  		end

  		it "should have the right title" do
  		  visit '/static_pages/home'
  		  page.should have_selector('title', :text => "The Books | Home")
  		end
  	end

  	describe "Help Page" do

  		it "should have the h1 'Help'" do
  			visit '/static_pages/help'
  			page.should have_selector('h1', :text => 'Help')
  		end

      it "should have the right title" do
        visit '/static_pages/help'
        page.should have_selector('title', :text => 'The Books | Help')        
      end
  	end

  	describe "About Page" do

  		it "should have the h1 'About'" do
  			visit '/static_pages/about'
  			page.should have_selector('h1', :text => 'About')
  		end

      it "should have the right title" do
        visit '/static_pages/about'
        page.should have_selector('title', :text => 'The Books | About')
      end
  	end
  end
end
