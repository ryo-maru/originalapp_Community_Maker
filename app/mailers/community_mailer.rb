class CommunityMailer < ApplicationMailer
  def community_mail(community)
   @community = community
   mail to: "t.t.uncle0803@gmail.com", subject: "お問い合わせの確認メール"
 end
end
