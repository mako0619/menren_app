require 'rails_helper'

RSpec.describe Post, type: :model do
  before do
    @user = FactoryBot.create(:user)
    @post = FactoryBot.create(:post, user: @user)
  end

  describe 'バリデーションのテスト' do
    context 'バリデーションが全て正しい時' do
      it 'エラーにならない' do
        @post = build(:post, user: @user)
        expect(@post).to be_valid
      end
    end

    describe 'タイトルのバリデーションに関するテスト' do
      context 'タイトルが空の時' do
        it 'エラーになる' do
          @post = build(:post, title: '')
          expect(@post).not_to be_valid
        end
      end
    end

    describe 'テキストのバリデーションに関するテスト' do
      context 'テキストが空の時' do
        it 'エラーになる' do
          @post = build(:post, content: '')
          expect(@post).not_to be_valid
        end
      end
    end
  end
end
