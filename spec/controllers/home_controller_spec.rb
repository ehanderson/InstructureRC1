require 'spec_helper'

describe HomeController do

  describe "GET 'index'" do
    it "returns http success" do
      get 'index'
      response.should be_success
    end

    it 'renders the :index view'
  end

  describe "GET '#show'" do
    it "assigns all assignments to @assignments"
    it 'populates an array of assignments' do
      assignment = Factory(:assignment)
      get :show
      assigns(:assignments).should eq([:assignment])
    end

    context "with valid attributes" do

      it "assigns all students to @students"
      it "orders all students"
    end
  end
end
