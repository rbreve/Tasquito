require 'test_helper'

class TasqsControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end
  
  def test_show
    get :show, :id => Tasq.first
    assert_template 'show'
  end
  
  def test_new
    get :new
    assert_template 'new'
  end
  
  def test_create_invalid
    Tasq.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end

  def test_create_valid
    Tasq.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to tasq_url(assigns(:tasq))
  end
  
  def test_edit
    get :edit, :id => Tasq.first
    assert_template 'edit'
  end
  
  def test_update_invalid
    Tasq.any_instance.stubs(:valid?).returns(false)
    put :update, :id => Tasq.first
    assert_template 'edit'
  end

  def test_update_valid
    Tasq.any_instance.stubs(:valid?).returns(true)
    put :update, :id => Tasq.first
    assert_redirected_to tasq_url(assigns(:tasq))
  end
  
  def test_destroy
    tasq = Tasq.first
    delete :destroy, :id => tasq
    assert_redirected_to tasqs_url
    assert !Tasq.exists?(tasq.id)
  end
end
