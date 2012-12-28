require 'spec_helper'

describe ApplicationHelper do 

	describe "full_title" do

		it "should includue the page nome" do
			full_title('foo').should =~ /foo/
		end

		it "should include the base name" do
			full_title('foo').should =~ /^The Books/
		end

		it "should not include a bar on the homepage" do
			full_title('').should_not =~ /\|/
		end

	end
end