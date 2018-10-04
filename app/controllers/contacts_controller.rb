class ContactsController < ApplicationController
  before_action :set_contact, only: [:show]

  def index
    redirect_to "/contacts/new"
  end

  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(contact_params)

    if @contact.save
      ContactMailer.contact_mail(@contact).deliver
      redirect_to @contact, notice: 'お問い合わせが送信されました。'
    else
      render :new
    end
  end

  private
    def set_contact
      @contact = Contact.find(params[:id])
    end

    def contact_params
      params.require(:contact).permit(:name, :email, :content)
    end
end
