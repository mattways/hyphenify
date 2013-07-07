require 'test_helper'

class HelpersTest < ActionView::TestCase

  test "should return id and class with hyphens" do
    html = tag(:div, class: 'the_class', id: 'the_id').to_s
    assert_equal '<div class="the-class" id="the-id" />', html
  end

end
