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

describe LunchDateParticipantsController do

  # This should return the minimal set of attributes required to create a valid
  # LunchDateParticipant. As you add validations to LunchDateParticipant, be sure to
  # update the return value of this method accordingly.
  def valid_attributes
    {}
  end

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # LunchDateParticipantsController. Be sure to keep this updated too.
  def valid_session
    {}
  end

  describe "GET index" do
    it "assigns all lunch_date_participants as @lunch_date_participants" do
      lunch_date_participant = LunchDateParticipant.create! valid_attributes
      get :index, {}, valid_session
      assigns(:lunch_date_participants).should eq([lunch_date_participant])
    end
  end

  describe "GET show" do
    it "assigns the requested lunch_date_participant as @lunch_date_participant" do
      lunch_date_participant = LunchDateParticipant.create! valid_attributes
      get :show, {:id => lunch_date_participant.to_param}, valid_session
      assigns(:lunch_date_participant).should eq(lunch_date_participant)
    end
  end

  describe "GET new" do
    it "assigns a new lunch_date_participant as @lunch_date_participant" do
      get :new, {}, valid_session
      assigns(:lunch_date_participant).should be_a_new(LunchDateParticipant)
    end
  end

  describe "GET edit" do
    it "assigns the requested lunch_date_participant as @lunch_date_participant" do
      lunch_date_participant = LunchDateParticipant.create! valid_attributes
      get :edit, {:id => lunch_date_participant.to_param}, valid_session
      assigns(:lunch_date_participant).should eq(lunch_date_participant)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new LunchDateParticipant" do
        expect {
          post :create, {:lunch_date_participant => valid_attributes}, valid_session
        }.to change(LunchDateParticipant, :count).by(1)
      end

      it "assigns a newly created lunch_date_participant as @lunch_date_participant" do
        post :create, {:lunch_date_participant => valid_attributes}, valid_session
        assigns(:lunch_date_participant).should be_a(LunchDateParticipant)
        assigns(:lunch_date_participant).should be_persisted
      end

      it "redirects to the created lunch_date_participant" do
        post :create, {:lunch_date_participant => valid_attributes}, valid_session
        response.should redirect_to(LunchDateParticipant.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved lunch_date_participant as @lunch_date_participant" do
        # Trigger the behavior that occurs when invalid params are submitted
        LunchDateParticipant.any_instance.stub(:save).and_return(false)
        post :create, {:lunch_date_participant => {}}, valid_session
        assigns(:lunch_date_participant).should be_a_new(LunchDateParticipant)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        LunchDateParticipant.any_instance.stub(:save).and_return(false)
        post :create, {:lunch_date_participant => {}}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested lunch_date_participant" do
        lunch_date_participant = LunchDateParticipant.create! valid_attributes
        # Assuming there are no other lunch_date_participants in the database, this
        # specifies that the LunchDateParticipant created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        LunchDateParticipant.any_instance.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, {:id => lunch_date_participant.to_param, :lunch_date_participant => {'these' => 'params'}}, valid_session
      end

      it "assigns the requested lunch_date_participant as @lunch_date_participant" do
        lunch_date_participant = LunchDateParticipant.create! valid_attributes
        put :update, {:id => lunch_date_participant.to_param, :lunch_date_participant => valid_attributes}, valid_session
        assigns(:lunch_date_participant).should eq(lunch_date_participant)
      end

      it "redirects to the lunch_date_participant" do
        lunch_date_participant = LunchDateParticipant.create! valid_attributes
        put :update, {:id => lunch_date_participant.to_param, :lunch_date_participant => valid_attributes}, valid_session
        response.should redirect_to(lunch_date_participant)
      end
    end

    describe "with invalid params" do
      it "assigns the lunch_date_participant as @lunch_date_participant" do
        lunch_date_participant = LunchDateParticipant.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        LunchDateParticipant.any_instance.stub(:save).and_return(false)
        put :update, {:id => lunch_date_participant.to_param, :lunch_date_participant => {}}, valid_session
        assigns(:lunch_date_participant).should eq(lunch_date_participant)
      end

      it "re-renders the 'edit' template" do
        lunch_date_participant = LunchDateParticipant.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        LunchDateParticipant.any_instance.stub(:save).and_return(false)
        put :update, {:id => lunch_date_participant.to_param, :lunch_date_participant => {}}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested lunch_date_participant" do
      lunch_date_participant = LunchDateParticipant.create! valid_attributes
      expect {
        delete :destroy, {:id => lunch_date_participant.to_param}, valid_session
      }.to change(LunchDateParticipant, :count).by(-1)
    end

    it "redirects to the lunch_date_participants list" do
      lunch_date_participant = LunchDateParticipant.create! valid_attributes
      delete :destroy, {:id => lunch_date_participant.to_param}, valid_session
      response.should redirect_to(lunch_date_participants_url)
    end
  end

end
