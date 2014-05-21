require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

describe RepostUrlsController do

  # This should return the minimal set of attributes required to create a valid
  # RepostUrl. As you add validations to RepostUrl, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) { { "url" => "MyString" } }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # RepostUrlsController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET index" do
    it "assigns all repost_urls as @repost_urls" do
      repost_url = RepostUrl.create! valid_attributes
      get :index, {}, valid_session
      assigns(:repost_urls).should eq([repost_url])
    end
  end

  describe "GET show" do
    it "assigns the requested repost_url as @repost_url" do
      repost_url = RepostUrl.create! valid_attributes
      get :show, {:id => repost_url.to_param}, valid_session
      assigns(:repost_url).should eq(repost_url)
    end
  end

  describe "GET new" do
    it "assigns a new repost_url as @repost_url" do
      get :new, {}, valid_session
      assigns(:repost_url).should be_a_new(RepostUrl)
    end
  end

  describe "GET edit" do
    it "assigns the requested repost_url as @repost_url" do
      repost_url = RepostUrl.create! valid_attributes
      get :edit, {:id => repost_url.to_param}, valid_session
      assigns(:repost_url).should eq(repost_url)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new RepostUrl" do
        expect {
          post :create, {:repost_url => valid_attributes}, valid_session
        }.to change(RepostUrl, :count).by(1)
      end

      it "assigns a newly created repost_url as @repost_url" do
        post :create, {:repost_url => valid_attributes}, valid_session
        assigns(:repost_url).should be_a(RepostUrl)
        assigns(:repost_url).should be_persisted
      end

      it "redirects to the created repost_url" do
        post :create, {:repost_url => valid_attributes}, valid_session
        response.should redirect_to(RepostUrl.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved repost_url as @repost_url" do
        # Trigger the behavior that occurs when invalid params are submitted
        RepostUrl.any_instance.stub(:save).and_return(false)
        post :create, {:repost_url => { "url" => "invalid value" }}, valid_session
        assigns(:repost_url).should be_a_new(RepostUrl)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        RepostUrl.any_instance.stub(:save).and_return(false)
        post :create, {:repost_url => { "url" => "invalid value" }}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested repost_url" do
        repost_url = RepostUrl.create! valid_attributes
        # Assuming there are no other repost_urls in the database, this
        # specifies that the RepostUrl created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        RepostUrl.any_instance.should_receive(:update).with({ "url" => "MyString" })
        put :update, {:id => repost_url.to_param, :repost_url => { "url" => "MyString" }}, valid_session
      end

      it "assigns the requested repost_url as @repost_url" do
        repost_url = RepostUrl.create! valid_attributes
        put :update, {:id => repost_url.to_param, :repost_url => valid_attributes}, valid_session
        assigns(:repost_url).should eq(repost_url)
      end

      it "redirects to the repost_url" do
        repost_url = RepostUrl.create! valid_attributes
        put :update, {:id => repost_url.to_param, :repost_url => valid_attributes}, valid_session
        response.should redirect_to(repost_url)
      end
    end

    describe "with invalid params" do
      it "assigns the repost_url as @repost_url" do
        repost_url = RepostUrl.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        RepostUrl.any_instance.stub(:save).and_return(false)
        put :update, {:id => repost_url.to_param, :repost_url => { "url" => "invalid value" }}, valid_session
        assigns(:repost_url).should eq(repost_url)
      end

      it "re-renders the 'edit' template" do
        repost_url = RepostUrl.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        RepostUrl.any_instance.stub(:save).and_return(false)
        put :update, {:id => repost_url.to_param, :repost_url => { "url" => "invalid value" }}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested repost_url" do
      repost_url = RepostUrl.create! valid_attributes
      expect {
        delete :destroy, {:id => repost_url.to_param}, valid_session
      }.to change(RepostUrl, :count).by(-1)
    end

    it "redirects to the repost_urls list" do
      repost_url = RepostUrl.create! valid_attributes
      delete :destroy, {:id => repost_url.to_param}, valid_session
      response.should redirect_to(repost_urls_url)
    end
  end

end
