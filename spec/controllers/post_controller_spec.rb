require 'spec_helper'

describe PostController do

  describe "GET #index" do
    it "returns an empy array" do
      get :index
      assigns(:posts).should eq([])
    end

    it "populates an array of posts" do
      post = FactoryGirl.create(:post)
      get :index
      assigns(:posts).should eq([post])
    end

    it "renders the :index view" do
      get :index
      response.should render_template :index
    end
  end

  describe "GET #show" do
    it "assigns the requested post to @post" do
      post = FactoryGirl.create(:post)
      get :show, id: post
      assigns(:post).should eq(post)
    end
  end

  # describe "GET #new" do
  #   it "assigns a title and body to the new post" do
  #     post = FactoryGirl.build(:post)
  #     get :new
  #     assigns(:post).should eq(post)
  #   end
  # end

  # describe "GET 'edit'" do
  #   it "returns http success" do
  #     get 'edit'
  #     response.should be_success
  #   end
  # end

  # describe "GET 'create'" do
  #   it "returns http success" do
  #     get 'create'
  #     response.should be_success
  #   end
  # end

  # describe "GET 'update'" do
  #   it "returns http success" do
  #     get 'update'
  #     response.should be_success
  #   end
  # end

  # describe "GET 'destroy'" do
  #   it "returns http success" do
  #     get 'destroy'
  #     response.should be_success
  #   end
  # end

end
