require 'rails_helper'
RSpec.describe '管理者機能', type: :system do

  before do
    @admin_user = FactoryBot.create(:admin_user)
  end

  describe '管理者ページへの遷移' do
    context '管理者としてログインした場合' do
      it 'マイページに管理者ページのリンクが表示され、管理者ページへ行くことができる' do
        visit root_path
        click_on 'ログイン'
        fill_in 'user[email]', with: 'admin01@test.com'
        fill_in 'user[password]', with: 'admin01'
        click_on 'ログイン'
        click_on 'マイページ'
        click_on '管理者画面へ移動'
        sleep 1
        
        expect(page).to have_content 'サイト管理'

      end
    end
  end

  describe '一般ユーザーの場合' do
    context '一般ユーザーが本アプリにログインした場合' do
      it 'マイページに管理者ページへのリンクが表示されない' do
        visit root_path
        click_link 'ゲストログイン（閲覧用）'
        click_on 'マイページ'
        expect(page).not_to have_content '管理者画面へ移動'
      end
    end
  end
end
