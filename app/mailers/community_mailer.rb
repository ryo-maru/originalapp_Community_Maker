class CommunityMailer < ApplicationMailer
  def community_mail(community)
   @community = community
   mail to: "t.t.uncle0803@gmail.com", subject: "新規コミュニティ作成確認メール"
 end
end
