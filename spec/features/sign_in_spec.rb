require 'spec_helper'

describe 'User signing in' do
  before :each do
    visit sign_in_path
    FactoryGirl.create :user
  end

  it "with wrong password, does not log in" do
    fill_in("username", with: "admin")
    fill_in("password", with: "testtesy")
    click_button("Log in")
    expect(current_path).to eq(sign_in_path)
    expect(page).to have_content "Username and password do not match."
  end

  it "with wrong username, does not log in" do
    fill_in("username", with: "admim")
    fill_in("password", with: "testtest")
    click_button("Log in")
    expect(current_path).to eq(sign_in_path)
    expect(page).to have_content "Username and password do not match."
  end

  it "with right credentials, logs in" do
    fill_in("username", with: "admin")
    fill_in("password", with: "testtest")
    click_button("Log in")
    expect(page).to have_content "admin"
    expect(page).to have_content "Welcome back!"
  end
end
