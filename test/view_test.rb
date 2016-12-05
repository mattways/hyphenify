require 'test_helper'

class ViewTest < ActionView::TestCase

  test 'tags dashes' do
    div = tag(:div, class: 'the_class', id: 'test_id')
    assert div.include?('class="the-class"')
    assert div.include?('id="test-id"')
  end

  test 'forms dashes' do
    form = form_for(:test, url: 'http://test.com') do |f|
      f.text_field :id, class: 'the_class'
    end
    assert form.include?('class="the-class"')
    assert form.include?('id="test-id"')
  end

end
