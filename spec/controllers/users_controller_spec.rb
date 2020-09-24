require 'rails_helper'

RSpec.describe UsersController, type: :controller do
  before do
    @user = FactoryBot.create(:user)
  end

  describe '#show' do
    it '正常なレスポンスが返ってくる' do
      get :show, params: { id: @user.id }
      expect(response).to be_success
    end
    it '200が返ってくる' do
      get :show, params: { id: @user.id }
      expect(response).to have_http_status '200'
    end
  end

  describe '#index' do
    it '正常なレスポンスが返ってくる' do
      get :show, params: { id: @user.id }
      expect(response).to be_success
    end
    it '200が返ってくる' do
      get :show, params: { id: @user.id }
      expect(response).to have_http_status '200'
    end
  end
end
