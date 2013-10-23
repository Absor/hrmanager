require 'test_helper'

class ResearchGroupMembershipsControllerTest < ActionController::TestCase
  setup do
    @research_group_membership = research_group_memberships(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:research_group_memberships)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create research_group_membership" do
    assert_difference('ResearchGroupMembership.count') do
      post :create, research_group_membership: { employee_id: @research_group_membership.employee_id, research_group_id: @research_group_membership.research_group_id }
    end

    assert_redirected_to research_group_membership_path(assigns(:research_group_membership))
  end

  test "should show research_group_membership" do
    get :show, id: @research_group_membership
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @research_group_membership
    assert_response :success
  end

  test "should update research_group_membership" do
    patch :update, id: @research_group_membership, research_group_membership: { employee_id: @research_group_membership.employee_id, research_group_id: @research_group_membership.research_group_id }
    assert_redirected_to research_group_membership_path(assigns(:research_group_membership))
  end

  test "should destroy research_group_membership" do
    assert_difference('ResearchGroupMembership.count', -1) do
      delete :destroy, id: @research_group_membership
    end

    assert_redirected_to research_group_memberships_path
  end
end
