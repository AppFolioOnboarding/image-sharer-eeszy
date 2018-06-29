require 'test_helper'

class ImagesControllerTest < ActionDispatch::IntegrationTest
  test 'should get index' do
    get images_url
    assert_response :success
  end

  test 'should get create' do
    get new_image_url
    assert_response :success
  end

  test 'should post create without link errors are displayed' do
    post images_url params: { images: { link: '' } }

    assert_select '#error_explanation'
    assert_response :success
  end

  test 'should post create with link errors are displayed' do
    assert_difference 'Image.count' do
      post images_url params: { images: { link: 'http://www.gstatic.com/tv/thumb/persons/80696/80696_v9_bb.jpg' } }
    end
    assert_response :redirect
  end

  test 'should show images on homepage' do
    Image.create(link: 'http://www.gstatic.com/tv/thumb/persons/80696/80696_v9_bb.jpg')

    get images_url

    assert_select 'img[src="http://www.gstatic.com/tv/thumb/persons/80696/80696_v9_bb.jpg"]'
    assert_response :success
  end

  test 'should show 20 images on homepage' do
    20.times do |n|
      Image.create(link: "http://www.#{n}.jpg")
    end

    get images_url

    assert_select 'img', 20
    assert_response :success
  end
end
