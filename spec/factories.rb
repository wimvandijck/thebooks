FactoryGirl.define do
	factory :user do
		name 									"Wim Van Dijck"
		email									"wim@sinoid.be" 
		password 							"foobar"
		password_confirmation "foobar"
	end
end