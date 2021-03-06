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

describe HeroesController do

  # This should return the minimal set of attributes required to create a valid
  # Hero. As you add validations to Hero, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) { { "name" => "MyString" } }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # HeroesController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET index" do
    it "assigns all heroes as @heroes" do
      hero = Hero.create! valid_attributes
      get :index, {}, valid_session
      assigns(:heroes).should eq([hero])
    end
  end

  describe "GET show" do
    it "assigns the requested hero as @hero" do
      hero = Hero.create! valid_attributes
      get :show, {:id => hero.to_param}, valid_session
      assigns(:hero).should eq(hero)
    end
  end

  describe "GET new" do
    it "assigns a new hero as @hero" do
      get :new, {}, valid_session
      assigns(:hero).should be_a_new(Hero)
    end
  end

  describe "GET edit" do
    it "assigns the requested hero as @hero" do
      hero = Hero.create! valid_attributes
      get :edit, {:id => hero.to_param}, valid_session
      assigns(:hero).should eq(hero)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Hero" do
        expect {
          post :create, {:hero => valid_attributes}, valid_session
        }.to change(Hero, :count).by(1)
      end

      it "assigns a newly created hero as @hero" do
        post :create, {:hero => valid_attributes}, valid_session
        assigns(:hero).should be_a(Hero)
        assigns(:hero).should be_persisted
      end

      it "redirects to the created hero" do
        post :create, {:hero => valid_attributes}, valid_session
        response.should redirect_to(Hero.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved hero as @hero" do
        # Trigger the behavior that occurs when invalid params are submitted
        Hero.any_instance.stub(:save).and_return(false)
        post :create, {:hero => { "name" => "invalid value" }}, valid_session
        assigns(:hero).should be_a_new(Hero)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Hero.any_instance.stub(:save).and_return(false)
        post :create, {:hero => { "name" => "invalid value" }}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested hero" do
        hero = Hero.create! valid_attributes
        # Assuming there are no other heroes in the database, this
        # specifies that the Hero created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        Hero.any_instance.should_receive(:update).with({ "name" => "MyString" })
        put :update, {:id => hero.to_param, :hero => { "name" => "MyString" }}, valid_session
      end

      it "assigns the requested hero as @hero" do
        hero = Hero.create! valid_attributes
        put :update, {:id => hero.to_param, :hero => valid_attributes}, valid_session
        assigns(:hero).should eq(hero)
      end

      it "redirects to the hero" do
        hero = Hero.create! valid_attributes
        put :update, {:id => hero.to_param, :hero => valid_attributes}, valid_session
        response.should redirect_to(hero)
      end
    end

    describe "with invalid params" do
      it "assigns the hero as @hero" do
        hero = Hero.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Hero.any_instance.stub(:save).and_return(false)
        put :update, {:id => hero.to_param, :hero => { "name" => "invalid value" }}, valid_session
        assigns(:hero).should eq(hero)
      end

      it "re-renders the 'edit' template" do
        hero = Hero.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Hero.any_instance.stub(:save).and_return(false)
        put :update, {:id => hero.to_param, :hero => { "name" => "invalid value" }}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested hero" do
      hero = Hero.create! valid_attributes
      expect {
        delete :destroy, {:id => hero.to_param}, valid_session
      }.to change(Hero, :count).by(-1)
    end

    it "redirects to the heroes list" do
      hero = Hero.create! valid_attributes
      delete :destroy, {:id => hero.to_param}, valid_session
      response.should redirect_to(heroes_url)
    end
  end

end
