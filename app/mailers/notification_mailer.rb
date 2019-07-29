class NotificationMailer < ApplicationMailer
  default from: "no.reply.wanderingaliceapps@gmail.com"

  def comment_added
    mail(to: "duff.alice@gmail.com",
          subject: "A comment has been added to your place!")
  end

end
