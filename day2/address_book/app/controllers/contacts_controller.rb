class ContactsController < ApplicationController

  def index
    #@contacts = Contact.all
    @contacts = Contact.order("name ASC")
  end

  def show
    @contact = Contact.find(params[:id])
  end

  def new
    @contact = Contact.new
  end

  def create
    contact = Contact.new(
    :name => params[:contact][:name],
    :address => params[:contact][:address],
    :phone_number => params[:contact][:phone],
    :email_address => params[:contact][:email])

    # Now we save the contact
    if contact.save
      redirect_to("/contacts")
    else
      render "new"
    end
  end

  def favourite

    @contact = Contact.find(params[:id])
    @contact.favourite = true
    @contact.save
    #redirect_to("/contacts")
  end


end
