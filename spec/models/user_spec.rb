require 'rails_helper'
RSpec.describe 'users_model', type: :model do
  describe 'バリデーションテスト' do

    context 'ユーザネームが名が未入力の場合' do
      it 'バリデーションが作動する' do
        user = User.new(name: '', email: 'test@test.com', password: 'testdayo')
        expect(user).not_to be_valid

      end
    end


    context 'ユーザネームが30文字以上の場合' do
      it 'バリデーションが作動する' do
        user = User.new(name: 'aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa', email: 'test@test.com', password: 'testdayo')
        expect(user).not_to be_valid
      end
    end

    context 'メールアドレスが未入力の場合' do
      it 'バリデーションが作動する' do
        user = User.new(name: 'aaa', email: '', password: 'testdayo')
        expect(user).not_to be_valid
      end
    end

    context 'メールアドレスが6文字未満の場合' do
      it 'バリデーションが作動する' do
        user = User.new(name: 'aaa', email: 'a@.jp', password: 'testdayo')
        expect(user).not_to be_valid
      end
    end

    context 'メールアドレスが100文字以上の場合' do
      it 'バリデーションが作動する' do
        user = User.new(name: 'aaa', email: 'aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa@example.com', password: 'testdayo')
        expect(user).not_to be_valid
      end
    end

    context '自己紹介が500文字以上の場合' do
      it 'バリデーションが作動する' do
        user = User.new(name: 'aaa', email: 'abc@example.com', password: 'testdayo', description:'aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa')
        expect(user).not_to be_valid
      end
    end

    context 'パスワードが6文字以内の場合' do
      it 'バリデーションが作動する' do
        user = User.new(name: 'aaa', email: 'abx@example.com', password: 'tes')
        expect(user).not_to be_valid
      end
    end
  end
end
