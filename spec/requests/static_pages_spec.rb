require 'spec_helper'

describe "Static Pages" do

	subject { page }

	describe "Home Page" do
		before { visit root_path} 

		it { should have_selector('h1', text: "The Books") }
		it { should have_selector('title', text: full_title('')) }
	    it { should_not have_selector('title', text: '| Home') }
	end

	describe "Help Page" do
		before { visit help_path }

		it { should have_selector('h1', text: 'Help') }
	    it { should have_selector('title', text: full_title('Help')) }     
	end

	describe "About Page" do
		before { visit about_path }

		it { should have_selector('h1', text: 'About') }
	    it { should have_selector('title', text: full_title('About')) }
	end

	describe "Contact Page" do
		before { visit contact_path }

		it { should have_selector('h1', text: 'Contact') }
	    it { should have_selector('title', text: full_title('Contact')) }
	end	

	it "should have the right links on the layout" do
		visit root_path
		click_link "Sign in"
		page.should have_selector 'title', text: full_title('Sign in')
		click_link "About"
		page.should have_selector 'title', text: full_title('About')
		click_link "Help"
		page.should have_selector 'title', text: full_title('Help')
		click_link "Contact"
		page.should have_selector 'title', text: full_title('Contact')
		click_link "Home"
		click_link "Sign in now"
		click_link "the books"
		page.should have_selector 'h1', text: "The Books"
	end
end
