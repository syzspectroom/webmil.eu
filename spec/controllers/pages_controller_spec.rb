require 'spec_helper'

describe PagesController do

  describe "GET 'home'" do
    it "returns http success" do
      get 'home'
      response.should be_success
    end
  end

  describe "GET 'studio'" do
    it "returns http success" do
      get 'studio'
      response.should be_success
    end
  end

end
