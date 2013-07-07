require 'test_helper'

class HelpersTest < ActionView::TestCase

  test "simple tags should return id and class with hyphens" do
    html = tag(:div, class: 'the_class', id: 'the_id')
    assert html.to_s.include?('class="the-class" id="the-id"')
  end

  test "form tags should return id and class with hyphens" do
    html = form_for(:test, url: 'http://test.com') do |f|
      f.label(:id) + f.text_field(:id, class: 'the_class')
    end
    assert html.to_s.include?('for="test-id"')
    assert html.to_s.include?('class="the-class" id="test-id"')
  end
  
end
