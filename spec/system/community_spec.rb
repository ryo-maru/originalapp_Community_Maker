require 'rails_helper'
RSpec.describe 'コミュニティ機能', type: :system do
  before do
    @user = FactoryBot.create(:user)
    @user2 = FactoryBot.create(:admin_user)
    @user3 = FactoryBot.create(:user3)
    @community = FactoryBot.create(:community, user_id: @user2.id)
    @comment = FactoryBot.create(:comment, user_id: @user3.id,community_id: @community.id)
    @comment = FactoryBot.create(:comment, user_id: @user3.id,community_id: @community.id)
    @comment = FactoryBot.create(:comment, user_id: @user3.id,community_id: @community.id)
    @comment = FactoryBot.create(:comment, user_id: @user3.id,community_id: @community.id)
    @comment = FactoryBot.create(:comment, user_id: @user3.id,community_id: @community.id)
    @comment = FactoryBot.create(:comment, user_id: @user3.id,community_id: @community.id)
    @comment = FactoryBot.create(:comment, user_id: @user3.id,community_id: @community.id)
    @comment = FactoryBot.create(:comment, user_id: @user3.id,community_id: @community.id)
    @comment = FactoryBot.create(:comment, user_id: @user3.id,community_id: @community.id)
    @comment = FactoryBot.create(:comment, user_id: @user3.id,community_id: @community.id)
    @comment = FactoryBot.create(:comment, user_id: @user3.id,community_id: @community.id)
    @comment = FactoryBot.create(:comment, user_id: @user3.id,community_id: @community.id)
    @comment = FactoryBot.create(:comment, user_id: @user3.id,community_id: @community.id)
    @comment = FactoryBot.create(:comment, user_id: @user3.id,community_id: @community.id)
    @comment = FactoryBot.create(:comment, user_id: @user3.id,community_id: @community.id)
    @comment = FactoryBot.create(:comment, user_id: @user3.id,community_id: @community.id)
    @comment = FactoryBot.create(:comment, user_id: @user3.id,community_id: @community.id)
    @comment = FactoryBot.create(:comment, user_id: @user3.id,community_id: @community.id)
    @comment = FactoryBot.create(:comment, user_id: @user3.id,community_id: @community.id)
    @comment = FactoryBot.create(:comment, user_id: @user3.id,community_id: @community.id)
    @comment = FactoryBot.create(:comment, user_id: @user3.id,community_id: @community.id)
    @comment = FactoryBot.create(:comment, user_id: @user3.id,community_id: @community.id)
    @comment = FactoryBot.create(:comment, user_id: @user3.id,community_id: @community.id)
    @comment = FactoryBot.create(:comment, user_id: @user3.id,community_id: @community.id)
    @comment = FactoryBot.create(:comment, user_id: @user3.id,community_id: @community.id)
    @comment = FactoryBot.create(:comment, user_id: @user3.id,community_id: @community.id)
    @comment = FactoryBot.create(:comment, user_id: @user3.id,community_id: @community.id)
    @comment = FactoryBot.create(:comment, user_id: @user3.id,community_id: @community.id)
    @comment = FactoryBot.create(:comment, user_id: @user3.id,community_id: @community.id)
  end

  describe 'コミュニティ作成機能' do
    context 'ログインユーザがコミュニティを作成した時' do
      it 'コミュニティ一覧画面に遷移する' do
        visit root_path
        click_on 'ログイン'
        fill_in 'user[email]', with: 'test01@test.com'
        fill_in 'user[password]', with: 'test01'
        click_on 'ログイン'
        click_link '+コミュニティを作る'
        fill_in 'community[name]', with: 'テスト'
        click_on "+コミュニティを作成する"
        click_on "+コミュニティを作成する"
        expect(page).to have_content 'テスト'
      end
    end
  end

  describe 'コミュニティ編集機能' do
    context 'ログインユーザが作成コミュニティを編集したら' do
      it 'コミュニティは編集されコミュニティ一覧画面に遷移する' do
        visit root_path
        click_on 'ログイン'
        fill_in 'user[email]', with: 'test01@test.com'
        fill_in 'user[password]', with: 'test01'
        click_on 'ログイン'
        click_link '+コミュニティを作る'
        fill_in 'community[name]', with: 'テスト'
        click_on "+コミュニティを作成する"
        click_on "+コミュニティを作成する"
        click_link '編集'
        fill_in 'community[name]', with: 'コミュニティ名変更'
        click_on "コミュニティを編集する"
        expect(page).to have_content 'コミュニティ名変更'
      end
    end
  end

  describe 'コミュニティ削除機能' do
    context 'ログインユーザが作成コミュニティを削除したら' do
      it 'コミュニティは削除されコミュニティ一覧画面に遷移する' do
        visit root_path
        click_on 'ログイン'
        fill_in 'user[email]', with: 'test01@test.com'
        fill_in 'user[password]', with: 'test01'
        click_on 'ログイン'
        click_link '+コミュニティを作る'
        fill_in 'community[name]', with: 'テスト'
        click_on "+コミュニティを作成する"
        click_on "+コミュニティを作成する"
        click_link '削除'
        page.driver.browser.switch_to.alert.accept
        expect(page).to have_content 'Communities'
      end
    end
  end

  describe 'コミュニティ参加機能' do
    context 'ログインユーザがコミュニティに参加したら' do
      it 'コミュニティ一覧画面に遷移し、
      参加コミュニティに参加したコミュニティが表示される' do
        visit root_path
        click_on 'ログイン'
        fill_in 'user[email]', with: 'test01@test.com'
        fill_in 'user[password]', with: 'test01'
        click_on 'ログイン'
        click_link '詳しく'
        click_link '+コミュニティに参加'
        click_on "参加コミュニティ"
        expect(page).to have_content 'テストコミュニティ'
      end
    end
  end

  describe 'コミュニティ退会機能' do
    context 'ログインユーザがコミュニティを退会したら' do
      it 'コミュニティ一覧画面に遷移する' do
        visit root_path
        click_on 'ログイン'
        fill_in 'user[email]', with: 'test01@test.com'
        fill_in 'user[password]', with: 'test01'
        click_on 'ログイン'
        click_link '詳しく'
        click_link '+コミュニティに参加'
        click_link '詳しく'
        click_link '-コミュニティを退会'
        expect(page).to have_content 'Communities'
      end
    end
  end

  describe 'コミュニティいいね機能' do
    context 'ログインユーザがコミュニティにいいねしたら' do
      it 'コミュニティ一覧画面に遷移し、
      お気に入りコミュニティにいいねしたコミュニティが表示される' do
        visit root_path
        click_on 'ログイン'
        fill_in 'user[email]', with: 'test01@test.com'
        fill_in 'user[password]', with: 'test01'
        click_on 'ログイン'
        click_link '詳しく'
        click_link 'いいね!'
        click_on "お気に入り"
        expect(page).to have_content 'テストコミュニティ'
      end
    end
  end

  describe 'コミュニティいいね!解除機能' do
    context 'ログインユーザがコミュニティのいいね!を解除したら' do
      it 'コミュニティ一覧画面に遷移する' do
        visit root_path
        click_on 'ログイン'
        fill_in 'user[email]', with: 'test01@test.com'
        fill_in 'user[password]', with: 'test01'
        click_on 'ログイン'
        click_link '詳しく'
        click_link 'いいね!'
        click_link '詳しく'
        click_link 'いいね!解除'
        expect(page).to have_content 'Communities'
      end
    end
  end

  describe 'コミュニティにコメント機能' do
    context 'ログインユーザがコミュニティにコメントしたら' do
      it 'コミュニティ詳細画面に遷移し、
      コメントした内容が表示される' do
        visit root_path
        click_on 'ログイン'
        fill_in 'user[email]', with: 'test01@test.com'
        fill_in 'user[password]', with: 'test01'
        click_on 'ログイン'
        click_link '詳しく'
        fill_in 'comment[content]', with: '初コメント！'
        click_on 'コメントする'
        expect(page).to have_content '初コメント！'
      end
    end
  end

  describe 'コメント編集機能' do
    context 'ログインユーザがコメントを編集したら' do
      it 'コメントした内容が変更され表示される' do
        visit root_path
        click_on 'ログイン'
        fill_in 'user[email]', with: 'test01@test.com'
        fill_in 'user[password]', with: 'test01'
        click_on 'ログイン'
        click_link '詳しく'
        fill_in 'comment[content]', with: '初コメント！'
        click_on 'コメントする'
        click_link '編集'
        fill_in "comment_content_#{@community.id}", with: 'コメント変更！'
        click_on "コメント内容を変更する"
        expect(page).to have_content 'コメント変更！'
      end
    end
  end

  describe 'コメント削除機能' do
    context 'ログインユーザがコメントを削除したら' do
      it 'コメント削除され、コメント一覧が表示される' do
        visit root_path
        click_on 'ログイン'
        fill_in 'user[email]', with: 'test01@test.com'
        fill_in 'user[password]', with: 'test01'
        click_on 'ログイン'
        click_link '詳しく'
        fill_in 'comment[content]', with: '初コメント！'
        click_on 'コメントする'
        click_link '削除'
        page.driver.browser.switch_to.alert.accept
        expect(page).to have_content 'コメント一覧'
      end
    end
  end

  describe 'コミュニティのコメントが30コメントになったらコメントできなくなる機能' do
    context 'ログインユーザがコミュニティにコメントし、コミュニティのコメント数が30になったら' do
      it 'コミュニティにコメントができなくなる' do
        visit root_path
        click_on 'ログイン'
        fill_in 'user[email]', with: 'test01@test.com'
        fill_in 'user[password]', with: 'test01'
        click_on 'ログイン'
        click_link '詳しく'
        fill_in 'comment[content]', with: '30コメント！'
        click_on 'コメントする'
        click_on 'コミュニティ一覧'
        expect(page).not_to have_content '詳しく'
      end
    end
  end
end
