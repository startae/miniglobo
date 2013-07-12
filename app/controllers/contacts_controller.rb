class ContactsController < ApplicationController
  def create
    @category = Category.find(params[:category_id])
    @contact = Contact.new(params[:contact])
    @contact.category = @category.name

    if @contact.valid?
      ContactMailer.send_article(@contact).deliver
      redirect_to @category, notice: 'Sua notícia foi enviada para nossa redação.'
    else
      render template: 'categories/show'
    end
  end
end
