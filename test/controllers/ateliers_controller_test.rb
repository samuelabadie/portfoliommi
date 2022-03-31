require "test_helper"

class AteliersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @atelier = ateliers(:one)
  end

  test "should get index" do
    get ateliers_url
    assert_response :success
  end

  test "should get new" do
    get new_atelier_url
    assert_response :success
  end

  test "should create atelier" do
    assert_difference("Atelier.count") do
      post ateliers_url, params: { atelier: { credits: @atelier.credits, description: @atelier.description, domains: @atelier.domains, ended_at: @atelier.ended_at, image: @atelier.image, name: @atelier.name, started_at: @atelier.started_at, tools: @atelier.tools } }
    end

    assert_redirected_to atelier_url(Atelier.last)
  end

  test "should show atelier" do
    get atelier_url(@atelier)
    assert_response :success
  end

  test "should get edit" do
    get edit_atelier_url(@atelier)
    assert_response :success
  end

  test "should update atelier" do
    patch atelier_url(@atelier), params: { atelier: { credits: @atelier.credits, description: @atelier.description, domains: @atelier.domains, ended_at: @atelier.ended_at, image: @atelier.image, name: @atelier.name, started_at: @atelier.started_at, tools: @atelier.tools } }
    assert_redirected_to atelier_url(@atelier)
  end

  test "should destroy atelier" do
    assert_difference("Atelier.count", -1) do
      delete atelier_url(@atelier)
    end

    assert_redirected_to ateliers_url
  end
end
