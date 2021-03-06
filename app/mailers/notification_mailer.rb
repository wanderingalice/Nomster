class NotificationMailer < ApplicationMailer
  default from: "no.reply.wanderingaliceapps@gmail.com"

  def comment_added(comment)
    @place = comment.place
    @place_owner = @place.user
    @comment_owner = comment.user

    mail(to: @place_owner.email,
          subject: "A comment has been added to #{@place.name}!")
  end

end
