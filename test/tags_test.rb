require 'test_helper'

class TagsTest < ActionView::TestCase

  test 'tags return id and class with hyphens' do
    tag(:div, class: 'the_class', id: 'test_id').tap do |tag|
      assert tag.include?('class="the-class" id="test-id"')
    end
  end

  test 'forms tags return id and class with hyphens' do
    form_for(:test, url: 'http://test.com') do |f|
      f.text_field :id, class: 'the_class'
    end.tap do |form_tag|
      assert form_tag.include?('class="the-class" id="test-id"')
    end
  end

end
