require "application_system_test_case"

class QuestionsTest < ApplicationSystemTestCase
  # [...]

  test "saying Hello yields a grumpy response from the coach" do
    visit ask_url
    fill_in "question", with: "Hello"
    click_on "Ask"

    assert_text "I don't care, get dressed and go to work!"
  end

  test "give a positive response" do
    visit ask_url
    fill_in "question", with: "I am going to work right now!"
    click_on "Ask"

    assert_text "That is a good idea"
  end
end
