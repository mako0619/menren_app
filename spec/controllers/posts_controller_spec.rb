require 'rails_helper'

RSpec.describe PostsController, type: :controller do
  before do
    @user = FactoryBot.create(:user)
    @post = FactoryBot.create(:post, user: @user)
  end

  describe '#show' do
    it '正常なレスポンスが返ってくる' do
      get :show, params: { id: @post.id }
      expect(response).to be_success
    end
    it '200が返ってくる' do
      get :show, params: { id: @post.id }
      expect(response).to have_http_status '200'
    end
  end

  describe '#new' do
    context 'as an authorized user' do
      it '正常なレスポンスが返ってくる' do
        sign_in @user
        get :new
        expect(response).to be_success
      end
      it '200が返ってくる' do
        sign_in @user
        get :new
        expect(response).to have_http_status '200'
      end
    end

    context 'as a guest user' do
      it '正常なレスポンスが返ってこない' do
        get :new
        expect(response).not_to be_success
      end
      it '302が返ってくる' do
        get :new
        expect(response).to have_http_status '302'
      end
      it 'ログインページにリダイレクトされる' do
        get :new
        expect(response).to redirect_to '/users/sign_in'
      end
    end
  end

  describe '#destroy' do
    context 'as an authorized user' do
      it '投稿が削除される' do
        sign_in @user
        expect do
          delete :destroy, params: { id: @post.id }
        end.to change(@user.posts, :count).by(-1)
      end
      it 'ユーザー詳細ページにリダイレクトされる' do
        sign_in @user
        delete :destroy, params: { id: @post.id }
        expect(response).to redirect_to user_path(@post.user)
      end
    end

    context 'as a guest user' do
      it '302が返ってくる' do
        delete :destroy, params: { id: @post.id }
        expect(response).to have_http_status '302'
      end
      it 'ログインページにリダイレクトされる' do
        delete :destroy, params: { id: @post.id }
        expect(response).to redirect_to '/users/sign_in'
      end
    end
  end
end
