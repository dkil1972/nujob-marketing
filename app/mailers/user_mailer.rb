class UserMailer < ActionMailer::Base

  def send_message message
    @message = message
    mail(to: Constants::MAIL_TO,
         from: "#{message.name} <#{message.email}>",
         subject: t("messages.message_contact"))
  end
end