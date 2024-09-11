class ContactsController < ApplicationController
  def index
    @contact = Contact.new
    @questions = Contact.all
  end

  def create
    @contact = Contact.new(contact_params)
    if @contact.save
      redirect_to questions_path, notice: 'Sua pergunta foi enviada com sucesso!'
    else
      @questions = Contact.all
      render :index
    end
  end

  private

  def contact_params
    params.require(:contact).permit(:name, :email, :message)
  end
end
