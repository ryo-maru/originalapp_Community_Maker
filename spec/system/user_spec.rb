require 'rails_helper'
RSpec.describe 'ユーザー機能', type: :system do

  describe 'アカウント新規作成機能' do
    context 'アカウント登録画面でアカウント登録を行なった場合' do
      it 'アカウントが登録され、コミュニティ一覧ページが表示される' do
        visit root_path
        click_on 'アカウント作成'
        fill_in 'user[name]', with: 'テスト'
        fill_in 'user[email]', with: 'test01@example.com'
        fill_in 'user[description]', with: 'テストです'
        fill_in 'user[password]', with: 'test01'
        fill_in 'user[password_confirmation]', with: 'test01'
        click_on 'アカウント登録'
        expect(page).to have_content 'Communities'
        click_link 'ログアウト'
      end
    end
  end

  describe 'ログイン機能' do
    context 'ログインページで必要な情報を入力し、ログインボタンを押した場合' do
      it 'ログインしコミュニティ一覧ページが表示される' do
        visit root_path
        click_on 'アカウント作成'
        fill_in 'user[name]', with: 'テスト'
        fill_in 'user[email]', with: 'test01@example.com'
        fill_in 'user[description]', with: 'テストです'
        fill_in 'user[password]', with: 'test01'
        fill_in 'user[password_confirmation]', with: 'test01'
        click_on 'アカウント登録'
        click_link 'ログアウト'
        visit root_path
        click_on 'ログイン'
        fill_in 'user[email]', with: 'test01@example.com'
        fill_in 'user[password]', with: 'test01'
        click_on 'ログイン'
        expect(page).to have_content 'Communities'
      end
    end
  end

  describe 'ログアウト機能' do
    context 'ヘッダーにあるログアウトのリンクを押した場合' do
      it 'ログアウトし、トップページに戻る' do
        visit root_path
        click_on 'アカウント作成'
        fill_in 'user[name]', with: 'テスト'
        fill_in 'user[email]', with: 'test01@example.com'
        fill_in 'user[description]', with: 'テストです'
        fill_in 'user[password]', with: 'test01'
        fill_in 'user[password_confirmation]', with: 'test01'
        click_on 'アカウント登録'
        click_link "ログアウト"
        expect(page).to have_content 'ログアウトしました'
      end
    end
  end

  describe 'プロフィール編集機能' do
    context 'ユーザー編集画面でアカウント情報を入力し、更新ボタンを押した場合' do
      it 'アカウント情報が更新されコミュニティ一覧ページが表示される' do
        visit root_path
        click_on 'アカウント作成'
        fill_in 'user[name]', with: 'テスト'
        fill_in 'user[email]', with: 'test01@example.com'
        fill_in 'user[description]', with: 'テストです'
        fill_in 'user[password]', with: 'test01'
        fill_in 'user[password_confirmation]', with: 'test01'
        click_on 'アカウント登録'
        click_on 'マイページ'
        click_on 'プロフィール編集'
        fill_in 'user[email]', with: 'takoyaki@example.com'
        fill_in 'user[name]', with: 'タコヤキ'
        fill_in 'user[description]', with: 'タコヤキです'
        fill_in 'user[password]', with: 'takoyaki01'
        fill_in 'user[password_confirmation]', with: 'takoyaki01'
        fill_in 'user[current_password]', with: 'test01'
        click_on '更新'
        expect(page).to have_content 'アカウント情報を変更しました。'
      end
    end
  end

  describe 'アカウント削除機能' do
    context 'プロフィール編集画面内でアカウント削除のボタンを押した場合' do
      it 'アカウントが削除され、トップページに戻る' do
        visit root_path
        click_on 'アカウント作成'
        fill_in 'user[name]', with: 'テスト'
        fill_in 'user[email]', with: 'test01@example.com'
        fill_in 'user[description]', with: 'テストです'
        fill_in 'user[password]', with: 'test01'
        fill_in 'user[password_confirmation]', with: 'test01'
        click_on 'アカウント登録'
        click_on 'マイページ'
        click_on 'プロフィール編集'
        click_on 'アカウント削除'
        page.driver.browser.switch_to.alert.accept
        expect(page).to have_content 'アカウントを削除しました。またのご利用をお待ちしております。'
      end
    end
  end

  describe 'ゲストログイン機能' do
    context 'ゲストログインボタンを押すと' do
      it 'コミュニティ一覧ページへ遷移される' do
        visit root_path
        click_link 'ゲストログイン（閲覧用）'
        expect(page).to have_content 'ログインしました。'
        expect(page).to have_content 'ゲスト'
      end
    end
  end

  describe 'ゲスト管理者ログイン機能' do
    context 'ゲストログインボタンを押すと' do
      it 'コミュニティ一覧ページへ遷移される' do
        visit root_path
        click_link 'ゲスト管理者ログイン（閲覧用）'
        expect(page).to have_content 'ログインしました。'
        expect(page).to have_content 'ゲスト管理者'
      end
    end
  end
end
