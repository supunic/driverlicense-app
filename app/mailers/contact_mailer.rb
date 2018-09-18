class ContactMailer < ApplicationMailer
  def contact_mail(contact)
    @contact = contact

    mail to: "test@test.com", subject: "お問い合わせ確認"
  end
end
