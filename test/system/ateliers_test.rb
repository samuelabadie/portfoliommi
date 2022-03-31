require "application_system_test_case"

class AteliersTest < ApplicationSystemTestCase
  setup do
    @atelier = ateliers(:one)
  end

  test "visiting the index" do
    visit ateliers_url
    assert_selector "h1", text: "Ateliers"
  end

  test "should create atelier" do
    visit ateliers_url
    click_on "New atelier"

    fill_in "Credits", with: @atelier.credits
    fill_in "Description", with: @atelier.description
    fill_in "Domains", with: @atelier.domains
    fill_in "Ended at", with: @atelier.ended_at
    fill_in "Image", with: @atelier.image
    fill_in "Name", with: @atelier.name
    fill_in "Started at", with: @atelier.started_at
    fill_in "Tools", with: @atelier.tools
    click_on "Create Atelier"

    assert_text "Atelier was successfully created"
    click_on "Back"
  end

  test "should update Atelier" do
    visit atelier_url(@atelier)
    click_on "Edit this atelier", match: :first

    fill_in "Credits", with: @atelier.credits
    fill_in "Description", with: @atelier.description
    fill_in "Domains", with: @atelier.domains
    fill_in "Ended at", with: @atelier.ended_at
    fill_in "Image", with: @atelier.image
    fill_in "Name", with: @atelier.name
    fill_in "Started at", with: @atelier.started_at
    fill_in "Tools", with: @atelier.tools
    click_on "Update Atelier"

    assert_text "Atelier was successfully updated"
    click_on "Back"
  end

  test "should destroy Atelier" do
    visit atelier_url(@atelier)
    click_on "Destroy this atelier", match: :first

    assert_text "Atelier was successfully destroyed"
  end
end
