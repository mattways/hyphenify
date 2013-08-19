require 'test_helper'

class TagsTest < ActionDispatch::IntegrationTest
  
  test "tags should return id and class with hyphens" do
    get '/'
    assert_response :success
    assert response.body.include?('class="the-class" id="the-id"')
  end

  test "forms tags should return id and class with hyphens" do
    get '/form'
    assert_response :success
    assert response.body.include?('for="test-id"')
    assert response.body.include?('class="the-class" id="test-id"')
  end

end
