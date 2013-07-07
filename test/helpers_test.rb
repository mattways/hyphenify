require 'test_helper'

class HelpersTest < ActionView::TestCase

  test "simple tags should return id and class with hyphens" do
    html = tag(:div, class: 'the_class', id: 'the_id')
    assert html.to_s.include?('class="the-class" id="the-id"')
  end

  test "form tags should return id and class with hyphens" do
    html = form_for(:test, url: 'http://test.com') { |f| f.text_field :test, class: 'the_class', id: 'the_id' }
    assert html.to_s.include?('class="the-class" id="the-id"')
  end
  
end
