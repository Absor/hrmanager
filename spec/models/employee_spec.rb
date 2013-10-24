require 'spec_helper'

describe Employee do
  let(:employee1){FactoryGirl.create(:employee)}
  let(:employee2){FactoryGirl.create(:employee)}
  let(:rg1){FactoryGirl.create(:research_group)}
  let(:rg2){FactoryGirl.create(:research_group)}

  it "has no smallest research group without groups" do
    expect(employee1.research_group_with_least_members).to be_nil
  end

  it "has no biggest research group without groups" do
    expect(employee1.research_group_with_most_members).to be_nil
  end

  it "has the same research group as biggest and smallest with one group" do
    employee1.research_groups << rg1
    expect(employee1.research_group_with_least_members).to_not be_nil
    expect(employee1.research_group_with_least_members).to be employee1.research_group_with_most_members
  end

  context "when in multiple research groups" do
    before :each do
      employee1.research_groups << rg1
      employee1.research_groups << rg2
      employee2.research_groups << rg2
    end

    it "has a biggest research group" do
      expect(employee1.research_group_with_most_members).to be rg2
    end

    it "has a smallest research group" do
      expect(employee1.research_group_with_least_members).to be rg1
    end
  end
end
