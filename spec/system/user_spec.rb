require 'rails_helper'
RSpec.describe 'ユーザー機能', type: :system do
  let!(:user) { FactoryBot.create(:user) }

  describe 'アカウント新規作成機能' do
    context 'アカウント登録画面でアカウント登録を行なった場合' do
      it 'アカウントが登録され、コミュニティ一覧ページが表示される' do
        visit root_path
        click_on 'アカウント作成'
        fill_in 'user[name]', with: 'テスト'
        fill_in 'user[email]', with: 'test@example.com'
        fill_in 'user[description]', with: 'テストです'
        fill_in 'user[password]', with: 'test01'
        fill_in 'user[password_confirmation]', with: 'test01'
        click_on 'アカウント登録'

        expect(page).to have_content 'こんにちは、テストさん'

      end
    end
  end

  describe 'ログイン機能' do
    context 'ログインページで必要な情報を入力し、ログインボタンを押した場合' do
      it 'ユーザーのマイページが表示される' do
        visit root_path
        click_on 'アカウント作成'
        fill_in 'user[name]', with: 'テスト'
        fill_in 'user[email]', with: 'test@example.com'
        fill_in 'user[description]', with: 'テストです'
        fill_in 'user[password]', with: 'test01'
        fill_in 'user[password_confirmation]', with: 'test01'
        click_on 'アカウント登録'
        visit root_path
        click_on 'ログイン'
        fill_in 'user[email]', with: 'test@example.com'
        fill_in 'user[password]', with: 'test01'
        click_on 'ログイン'
        binding.irb
        expect(page).to have_content 'ログインしました'
      end
    end
  end

  describe 'ログアウト機能' do
    context 'ヘッダーにあるログアウトのリンクを押した場合' do
      it 'ログアウトし、トップページに戻る' do
        visit root_path
        click_on 'ログアウト'
        expect(page).to have_content 'ログアウトしました'
      end
    end
  end

  describe 'プロフィール編集機能' do
    context 'ユーザー編集画面でアカウント情報を入力し、更新ボタンを押した場合' do
      it 'ユーザーのマイページに遷移し、入力した情報が表示される' do
        visit root_path
        click_on 'ログイン'
        fill_in 'user[email]', with: 'test@example.com'
        fill_in 'user[password]', with: 'test01'
        click_on 'ログイン'
        click_on 'マイページ'
        click_on 'プロフィール編集'
        fill_in 'user[email]', with: 'takoyaki@example.com'
        fill_in 'user[name]', with: 'タコヤキ'
        fill_in 'user[description]', with: 'タコヤキです'
        fill_in 'user[password]', with: 'test01'
        click_on '更新'

        expect(page).to have_content 'アカウント情報を更新しました'
      end
    end
  end

  describe 'アカウント削除機能' do
    context 'プロフィール編集画面内でアカウント削除のボタンを押した場合' do
      it 'アカウントが削除され、トップページに戻る' do
        visit root_path
        click_on 'マイページ'
        click_on 'プロフィール編集'
        click_on 'アカウント削除'

        page.driver.browser.switch_to.alert.accept
        expect(page).to have_content 'アカウントを削除しました。またのご利用をお待ちしております。'
      end
    end
  end
end
