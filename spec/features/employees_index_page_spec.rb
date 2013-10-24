require 'spec_helper'

describe 'Employees listing' do

  before :each do
    FactoryGirl.create :employee, :name => "E1"
    FactoryGirl.create :employee, :name => "E2"
    FactoryGirl.create :employee, :name => "E3"
  end

  it 'shows employees in database' do
    visit employees_path
    expect(page).to have_content "E1"
    expect(page).to have_content "E2"
    expect(page).to have_content "E3"
    expect(page).to_not have_content "E4"
  end
end