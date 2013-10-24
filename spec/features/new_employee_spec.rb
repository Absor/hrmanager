require 'spec_helper'

describe 'New employee' do

  let!(:user){FactoryGirl.create :user}
  let!(:room){FactoryGirl.create :room}
  let!(:department){FactoryGirl.create :department}

  before :each do
    # sign in
    visit sign_in_path
    fill_in("username", with: "admin")
    fill_in("password", with: "testtest")
    click_button("Log in")
  end

  context 'when added through form' do

    before :each do
      visit new_employee_path
      fill_in('employee[name]', with: "Keijo")
      fill_in('employee[email]', with: "email@posti")
      select(room.name, from: 'employee[room_id]')
      select(department.name, from: 'employee[department_id]')
    end

    it 'is added to database' do
      expect{click_button('Create Employee')}.to change{Employee.count}.from(0).to(1)
    end

    it 'is added to employee list page' do
      click_button('Create Employee')
      expect(page).to have_content "Employee was successfully created."
      visit employees_path
      expect(page).to have_content "Keijo"
    end
  end
end